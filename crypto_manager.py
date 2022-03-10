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

    f = open(pathToPlainText, "r", encoding="utf-8")
    data = f.read()
    plainText = pgpy.PGPMessage.new(data)
    f.close()

    encrypted_msg = pubkey.encrypt(plainText)
    
    f = open(pathToEncrypted, "w")
    f.write(str(encrypted_msg))
    f.close()

    print('File encrypted: ' + pathToPlainText)
    

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


def decrypt_submissions_in_folder(origin, destination, privKeyPath, archivePath = "", moveFiles = True):    
    fileNames = [f for f in listdir(origin) if isfile(join(origin, f))]

    newSubmissions = False

    # iterer over krypterte besvarelser
    print('*** DEKRYPTERER ***')
    for fileName in fileNames:
        if(fileName[0:1] != "." and fileName[-7:] == "csv.asc"):   # guard against .ds_store + select csv only        
            decrypt_file(privKeyPath, origin + fileName, destination + fileName[0:-4])
            print("Dekryptert ny besvarelse: " + fileName)

            if moveFiles:
                if (archivePath != ""):
                    rename(origin + fileName, archivePath + fileName)
                else:
                    remove(origin + fileName)

            newSubmissions = True
    
    if not newSubmissions:
        print('Ingen nye besvarelser ble dekryptert\n')
    else:
        print('')


# TEST
# encrypt_file("test-files/pgp-keys/pubkey-test.txt", "test-files/testbesvarelse-2.csv", "test-files/encrypted-data/testbesvarelse-1.csv.asc")
# decrypt_file("test/privkey-test.txt", "test/encryptet-data.txt", "test/decrypted-data.txt")
# decrypt_all_new_submissions("test/encrypted-data/", "test/decrypted-data/", "test/privkey-test.txt", "test/encrypted-archive/")
# decrypt_all_new_submissions("test/encrypted-data/", "test/decrypted-data/", "test/privkey-test.txt")
