from turtle import clear
import pgpy



def fetch_new_submissions(privateKeyPath, encryptedSubmissionsPath, outputPath):

    privkey = pgpy.PGPKey.from_file(privateKeyPath)

    # iterer over filer i encryptedSubmissionsPath dir

    # les inn den krypterte filen
    encryptedMsg = pgpy.PGPMessage.from_file("file")
    # dekrypter innholdet
    # lagre innholdet i en ny fil i outputPath med samme filnavn
    # slett den krypterte filen

    return


def test():
    # A key can be loaded from a file, like so:
    priv_key, _ = pgpy.PGPKey.from_file('public-key/private-key-test.txt')
    pub_key, _ = pgpy.PGPKey.from_file('public-key/public-key-test.txt')

    # As usual, construct a PGPMessage from a string:
    message = pgpy.PGPMessage.new("42 is quite a pleasant number")

    # Transform it into a new PGPMessage that contains an encrypted form of the
    # unencrypted message
    encrypted_message = pub_key.encrypt(message)

    f = open("public-key/encrypted-test-message.txt", "w")
    f.write(str(encrypted_message))
    f.close()

    cryptomsg = pgpy.PGPMessage.from_file("public-key/encrypted-test-message.txt")

    # # after the sender sends the encrypted message, the recipient decrypts:
    plaintext = priv_key.decrypt(cryptomsg).message
    print(plaintext)



test()