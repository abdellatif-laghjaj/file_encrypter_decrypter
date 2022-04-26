#!/bin/bash
echo "file ecrypyter/decrypter"
echo "Choose an option to execute: " 
choice="Encrypt Decrypt Exit"
select option in $choice; do
	if [ $REPLY = 1 ]; then
		echo "Enter the file name: "
		read file_to_encrypt;
		if [ -e $file_to_encrypt ]; then
			echo "Encryption. . ."
			gpg -c $file_to_encrypt
			echo "Ok...Your file has been encrypted :@"
		else
			echo "File not found :("
		fi
	elif [ $REPLY = 2 ]; then
		echo "Enter the file name: " 
		read file_to_decrypt
		if [ -e $file_to_decrypt ]; then
			echo "Decryption. . ."
			gpg -d $file_to_decrypt
			echo "Ok...Your file has been decrypted :@"
		else
			echo "File not found :("
		fi
	elif [ $REPLY = 3 ]; then
		echo "Have a cracky day :@"
		exit

	else
		echo "Invalid choice. . ."
	fi
done