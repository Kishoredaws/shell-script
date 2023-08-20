#!/bin/bash

# this program is to install packages using functions

USERID=$(id -u)

VALIDATE() {

if [ $1 -ne 0 ]
then
echo "The Installation of git is failure"
exit 1
else
echo "The Installation of git is success"
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
VALIDATE $? 
yum install git -y
VALIDATE $?

