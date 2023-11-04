#!/usr/bin/env bash
# Author: Dohou Daniel Favour
# Created: 9:14PM Friday, 3rd November 2023

# Create a variable to store the user's username
current_user=$(whoami)
# Print message
echo "Hi $current_user".
sleep 2

# Print message
echo "I am a Bash script that will help you to create a GPG key, to secure, and verify your GitHub commit messages."
sleep 2
echo "All you need to do is to response to the prompts, while I run!"
sleep 2
echo ""
echo "I will be displaying the command being run, before actually running the command."
sleep 2
echo "For more information, check the README file at the root of this repo."
sleep 3
echo ""

# Installing the GPG key generator
echo "$ sudo apt-get install gpg"
sleep 2
echo "Running command"
sudo apt-get install gpg
sleep 2
echo ""

# Check the version of GPG key generator
echo "$ gpg --version"
sleep 2
echo "Running command"
gpg --version
sleep 2
echo ""

# Generate your GPG key
echo "The following command generates the GPG key pair."
echo "When prompted, please do the following:"
echo "First prompt: RSA and RSA (default) - Enter 1"
sleep 1.5
echo "Second prompt: Enter 3072"
sleep 1.5
echo "Third prompt: Specify how long you want the GPG key to last. Then enter, Yes (y) or No (N)."
sleep 2.5
echo ""
echo "Enter your Real Name (As it displays on GitHub), and then, the email address you use with GitHub."
sleep 2.5
echo ""
echo "$ gpg --full-generate-key"
sleep 2
echo "Running command"
gpg --full-generate-key

# Display your GPG keys and ids in a lng format
echo "$ gpg --list-secret-keys --keyid-format=long"
sleep 2
echo "Running command"
gpg --list-secret-keys --keyid-format=long
echo ""
sleep 2
echo ""
echo "Notice that some information was displayed. Take note that in the `sec` section, there's an RSA id there."
sleep 1
echo "An example is this:"
sleep 0.9
echo "`sec   rsa307/AIBD7902NNBDI564792 2023-09-07`"
sleep 1
echo "Copy the key from the forward slash, to the end."
sleep 1
echo ""

# Display public rsa GPG key
echo "To display your public RSA GPG key, run the following command:"
sleep 1.5
echo "$ gpg --armor --export yourCopiedId"
echo ""
sleep 2

# Run the following commands
echo "After displaying this, run the following set of commands:"
echo ""
sleep 2
echo "$ git config --global user.signingkey yourCopiedId"
sleep 2
echo "$ git config --global commit.gpgsign true"
sleep 2
echo "$ gpg-agent --daemon"
sleep 2
echo "$ echo "test" | gpg --clearsign --default-key yourCopiedId"
sleep 2
echo "$ gpg --list-secret-keys yourCopiedId"
sleep 2
echo "$ which gpg"
sleep 2
echo "$ git config --global gpg.program /usr/bin/gpg"
echo "$ vi ~/.gnupg/gpg.conf"
sleep 2
echo "In VI mode, write this to the file:"
sleep 1.5
echo "use-agent
      pinentry-mode loopback
      "
sleep 2
echo "Save the file."


sleep 5
echo "Remember to add your public RSA key to GitHub."
sleep 3
echo "Enjoy your verified commits."
