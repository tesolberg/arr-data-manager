import configparser

config = configparser.ConfigParser()

config.add_section('general')
config.set("general", 'devMode', "True")
config.set("general", 'saveEncrypted', "True")


config.add_section('formIDs')
config.set('formIDs', 't0_formID', '239360')


config.add_section('paths')
config.set('paths', 'privKeyPath', "C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/test-files/pgp-keys/privkey-test.txt")
config.set('paths', 'newEncryptedSubmissionsPath', "C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/test-files/encrypted-data/")
config.set('paths', 'newDecryptedSubmissionsPath', "C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/test-files/decrypted-data/")
config.set('paths', 'reportExportPath', "C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/test-files/reports/")
config.set('paths', 'encryptedArchivePath', "C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/test-files/encrypted-archive/")



with open("C:/Users/tor_e/Projects/arr-data-manager/arr/data-manager/config.ini", 'w') as configfile:
    config.write(configfile)

config = configparser.ConfigParser()
config.read('config.ini')
# print(config.getboolean("general", "devMode"))

print(config['paths']['privKeyPath'])