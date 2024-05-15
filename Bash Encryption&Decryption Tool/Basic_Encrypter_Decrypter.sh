#!/bin/bash

echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"
select option in $choice; do
    if [ "$option" = "Encrypt" ]; then
        echo "Please enter the filename you want to encrypt"
        read file;
        if [ -f "$file" ]; then
            gpg -c "$file"
            echo "The file has been encrypted"
        else
            echo "File not found"
        fi
    elif [ "$option" = "Decrypt" ]; then
        echo "Please enter the filename you want to decrypt"
        read file2;
        if [ -f "$file2" ]; then
            gpg -d "$file2"
            echo "The file has been decrypted"
        else
            echo "File not found"
        fi
    fi
    break
done
