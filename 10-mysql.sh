#!/bin/bash

# this program is to install packages 

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "please run the script with root user"
exit 1
# else
# echo "you are the root user"
fi 

yum install postfix -y

if [ $? -ne 0 ]
then
echo "The installation of postfix is having error"
exit 1
else
echo "The installation of postfix is success"
fi 

yum install mysql -y

if [ $? -ne 0 ]
then
echo "The installation of mysql is having error"
exit 1
else
echo "The installation of mysql is success"
fi 
