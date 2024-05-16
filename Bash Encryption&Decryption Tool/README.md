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


# Advanced File Encryption/Decryption Tool

The `Advanced_Encrypter_Decrypter.sh` script provides an advanced file encryption and decryption tool. It uses Zenity for a graphical user interface, making it more user-friendly and easy to use. This script can encrypt any file outside and inside the directory and can handle encryption and decryption of any kind of file.

## Features

- **Encrypt File**: Allows you to select a file to encrypt. You will be prompted to enter a passphrase for encryption. After encryption, the original file is securely deleted.
- **Decrypt File**: Allows you to select a file to decrypt. You will be prompted to enter the passphrase used for encryption. After decryption, the encrypted file is securely deleted.
- **Encrypt Directory** and **Decrypt Directory**: These features are not implemented yet and will be available in future versions of the script.

## Usage

1. Run the script in a terminal:
```bash
./Basic_Encrypter_Decrypter.sh
```

2. Check if Zenity is installed:
- If Zenity is not installed, you can install it using your package manager. For example, on Ubuntu, you can install Zenity with the following command:
  ```
  sudo apt-get install zenity
  ```

3. Select an option from the menu:
- **Encrypt File**: Select a file to encrypt and enter a passphrase.
- **Decrypt File**: Select a file to decrypt and enter the passphrase used for encryption.

4. Follow the on-screen instructions to complete the encryption or decryption process.

Please note that this script uses GnuPG (`gpg`) for encryption and decryption. Make sure you have GnuPG and Zenity installed on your system before using this tool.

---


