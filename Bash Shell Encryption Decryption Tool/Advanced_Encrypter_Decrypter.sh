#!/bin/bash

# Encrypt Function
encrypt_file() {
    local file=$1
    local passphrase=$2
    echo "$passphrase" > passphrase.txt
    if gpg --batch --passphrase-file passphrase.txt -c "$file"; then
        rm -f "$file"
        shred -u "$file"
        zenity --info --title="Encryption Complete" --text="The file has been encrypted and the original file has been securely deleted."
    else
        zenity --error --title="Encryption Failed" --text="Failed to encrypt the file."
    fi
    rm -f passphrase.txt
}

# Decrypt Function
decrypt_file() {
    local file=$1
    local passphrase=$2
    echo "$passphrase" > passphrase.txt
    decrypted_file=$(echo "$file" | sed 's/.gpg$//')
    if gpg --batch --passphrase-file passphrase.txt -d "$file" > "$decrypted_file"; then
        rm -f "$file"
        shred -u "$file"
        zenity --info --title="Decryption Complete" --text="The file has been decrypted and the encrypted file has been securely deleted."
    else
        zenity --error --title="Decryption Failed" --text="Failed to decrypt the file."
    fi
    rm -f passphrase.txt
}

# Main menu
while true; do
    choice=$(zenity --forms --title="File Encryption/Decryption Tool" --text="Please select an option:" --add-combo="Option" --combo-values="Encrypt File|Decrypt File|Encrypt Directory|Decrypt Directory" --width=300 --height=150)

    case "$choice" in
        "Encrypt File")
            file=$(zenity --file-selection --title="Encrypt File" --filename="")
            if [ -z "$file" ]; then
                break
            fi
            passphrase=$(zenity --password --title="Encrypt File" --text="Enter the passphrase:")
            if [ -z "$passphrase" ]; then
                break
            fi
            encrypt_file "$file" "$passphrase"
            ;;
        "Decrypt File")
            file=$(zenity --file-selection --title="Decrypt File" --filename="")
            if [ -z "$file" ]; then
                break
            fi
            passphrase=$(zenity --password --title="Decrypt File" --text="Enter the passphrase:")
            if [ -z "$passphrase" ]; then
                break
            fi
            decrypt_file "$file" "$passphrase"
            ;;
        "Encrypt Directory")
            zenity --info --title="Information" --text="This feature is not implemented yet." --width=300
            ;;
        "Decrypt Directory")
            zenity --info --title="Information" --text="This feature is not implemented yet." --width=300
            ;;
        *)
            break
            ;;
    esac
done
