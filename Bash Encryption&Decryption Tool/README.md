# Basic File Encrypter/Decrypter

This is a basic shell script for encrypting and decrypting files within the directory using GnuPG (`gpg`).

## Usage

1. Run the script:
```bash
./Basic_Encrypter_Decrypter.sh
```

2. Choose between encryption and decryption by entering the respective number:
- `1` for Encrypt
- `2` for Decrypt

3. If you choose to encrypt:
- Enter the filename you want to encrypt.
- If the file is found, it will be encrypted using GnuPG and the original file will remain intact.

4. If you choose to decrypt:
- Enter the filename you want to decrypt.
- If the file is found, it will be decrypted using GnuPG and the original encrypted file will remain intact.

## Note
- This script operates on files within the current directory.
- Ensure that you have GnuPG (`gpg`) installed on your system.

