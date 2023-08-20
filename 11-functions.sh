#!/bin/bash

# this program is to install packages using functions

USERID=$(id -u)

VALIDATE() {

if [ $1 -ne 0 ]
then
echo "$2 is failure"
exit 1
else
echo "$2 is success"
fi 
}

if [ $USERID -ne 0 ]
then
echo "please run the script with root user"
exit 1
# else
# echo "you are the root user"
fi 

yum install postfix -y
VALIDATE $? "The installation of postfix"
yum install git -y
VALIDATE $? "The installation of git"

