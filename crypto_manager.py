from os import listdir
import os
from os.path import isfile, join
import pgpy
from pgpy.constants import PubKeyAlgorithm, KeyFlags, HashAlgorithm, SymmetricKeyAlgorithm, CompressionAlgorithm
from os import rename, remove


def create_key(privKeyPath, pubKeyPath):
    key = pgpy.PGPKey.new(PubKeyAlgorithm.RSAEncryptOrSign, 4096)

    uid = pgpy.PGPUID.new('Abraham Lincoln', comment='Honest Abe', email='abraham.lincoln@whitehouse.gov')

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


def decrypt_submissions_in_folder(origin, destination, privKeyPath, archivePath = "", removeEncrypted = True):    
    # sjekker om origin-mappen eksisterer
    if(not os.path.isdir(origin)): 
        print("Advarsel: Mappen {} eksisterer ikke".format(origin))
        return  

    fileNames = [f for f in listdir(origin) if isfile(join(origin, f))]

    newSubmissions = False

    # iterer over krypterte besvarelser
    for fileName in fileNames:
        if(fileName[0:1] != "." and fileName[-7:] == "csv.asc"):   # guard against .ds_store + select csv only        
            decrypt_file(privKeyPath, origin + fileName, destination + fileName[0:-4])
            print("Dekryptert ny besvarelse: " + fileName)

            if removeEncrypted:
                if (archivePath != ""):
                    rename(origin + fileName, archivePath + fileName)
                else:
                    remove(origin + fileName)

            newSubmissions = True
    
    if not newSubmissions:
        print('Ingen nye besvarelser fra ' + origin + " ble dekryptert\n")
    else:
        print('')

