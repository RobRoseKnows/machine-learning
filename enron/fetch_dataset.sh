#!/bin/bash
# Fetches the enron email data set and prompts the user if they want to unzip

CURR_URL=https://www.cs.cmu.edu/~./enron/enron_mail_20150507.tgz 
wget $CURR_URL -O enron_mail.tgz

read -r -p "Unzip now? (y/N)" answer
answer=${answer,,}

if [[ $answer =~ ^(yes|y)  ]];
then
    tar -xvzf enron_mail.tgz
fi
