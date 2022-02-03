from os import listdir
import os
from os.path import isfile, join
import pgpy
from pgpy.constants import PubKeyAlgorithm, KeyFlags, HashAlgorithm, SymmetricKeyAlgorithm, CompressionAlgorithm
from os import rename, remove



def create_key(privKeyPath, pubKeyPath):
    # we can start by generating a primary key. For this example, we'll use RSA, but it could be DSA or ECDSA as well
    key = pgpy.PGPKey.new(PubKeyAlgorithm.RSAEncryptOrSign, 4096)

    # we now have some key material, but our new key doesn't have a user ID yet, and therefore is not yet usable!
    uid = pgpy.PGPUID.new('Abraham Lincoln', comment='Honest Abe', email='abraham.lincoln@whitehouse.gov')

    # now we must add the new user id to the key. We'll need to specify all of our preferences at this point
    # because PGPy doesn't have any built-in key preference defaults at this time
    # this example is similar to GnuPG 2.1.x defaults, with no expiration or preferred keyserver
    key.add_uid(uid, usage={KeyFlags.Sign, KeyFlags.EncryptCommunications, KeyFlags.EncryptStorage},
                hashes=[HashAlgorithm.SHA256, HashAlgorithm.SHA384, HashAlgorithm.SHA512, HashAlgorithm.SHA224],
                ciphers=[SymmetricKeyAlgorithm.AES256, SymmetricKeyAlgorithm.AES192, SymmetricKeyAlgorithm.AES128],
                compression=[CompressionAlgorithm.ZLIB, CompressionAlgorithm.BZ2, CompressionAlgorithm.ZIP, CompressionAlgorithm.Uncompressed])
    
    f = open(privKeyPath, "w")
    f.write(str(key))
    f.close()

    f = open(pubKeyPath, "w")
    f.write(str(key.pubkey))
    f.close()


def encrypt_file(pubKeyPath, pathToPlainText, pathToEncrypted):
    pubkey, _  = pgpy.PGPKey.from_file(pubKeyPath)

    f = open(pathToPlainText, "r")
    plainText = pgpy.PGPMessage.new(f.read())

    encrypted_msg = pubkey.encrypt(plainText)
    
    f = open(pathToEncrypted, "w")
    f.write(str(encrypted_msg))
    f.close()
    

def decrypt_file(privKeyPath, pathToEncrypted, pathToPlainText):
    privKey, _ = pgpy.PGPKey.from_file(privKeyPath)
    cryptomsg = pgpy.PGPMessage.from_file(pathToEncrypted)
    plaintext = privKey.decrypt(cryptomsg).message

    if type(plaintext) is str:
        s = plaintext
    else:
        s = plaintext.decode()

    f = open(pathToPlainText, "w", encoding="utf-8")
    f.write(s)
    f.close()


def decrypt_all_new_submissions(encryptedSubmissionsPath, decryptedSubmissionsPath, privKeyPath, encryptedArchivePath = "", moveFiles = True):    
    fileNames = [f for f in listdir(encryptedSubmissionsPath) if isfile(join(encryptedSubmissionsPath, f))]

    newSubmissions = False

    # iterer over krypterte besvarelser
    print('*** DECRYPTING ***')
    for fileName in fileNames:
        if(fileName[0:1] != "." and fileName[-7:] == "csv.asc"):   # guard against .ds_store + select csv only        
            decrypt_file(privKeyPath, encryptedSubmissionsPath + fileName, decryptedSubmissionsPath + fileName[0:-4])
            print("Decrypted new user submission: " + fileName)

            if moveFiles:
                if (encryptedArchivePath != ""):
                    rename(encryptedSubmissionsPath + fileName, encryptedArchivePath + fileName)
                else:
                    remove(encryptedSubmissionsPath + fileName)

            newSubmissions = True
    
    if not newSubmissions:
        print('No new submissions to decrypt\n')
    else:
        print('')


# TEST
# encrypt_file("test-files/pgp-keys/public-key-test.txt", "test-files/testsvar-2.csv", "test-files/encrypted-data/testsvar-2.csv")
# decrypt_file("test/privkey-test.txt", "test/encryptet-data.txt", "test/decrypted-data.txt")
# decrypt_all_new_submissions("test/encrypted-data/", "test/decrypted-data/", "test/privkey-test.txt", "test/encrypted-archive/")
# decrypt_all_new_submissions("test/encrypted-data/", "test/decrypted-data/", "test/privkey-test.txt")
