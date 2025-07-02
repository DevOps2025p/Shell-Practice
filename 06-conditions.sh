#!bin/bash

USERID=$(id -u) #user id command

if [ $USERID -ne 0 ]
then
echo "Please run the scropt with root user"
exit 1 #exit status other then O exit the script
else
echo "Your running script with root user"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
echo " SQL installed succesfully"

else
echo " SQL not installed"
exit 1
fi