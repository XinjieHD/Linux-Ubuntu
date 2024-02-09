#!/bin/bash
# File name: myscript.sh
# Comments:
# This bash script is purpose to create a menu to let users create/delete User Account.
# Users also can change the parameters of their user account in menu.
# Such as, change supplementary group/initial group/default login shell/account expiration date for a User Account.
#
#

# clear the screen
clear 

# simple menu display function
display_menu() {
   clear
   echo 'Program to Manage User Accounts '
   echo ''
   echo 'A. Create User Account'
   echo 'B. Delete User Account'
   echo 'C. Change Supplementary Group for a User Account'
   echo 'D. Change Initial Group for a User Account'
   echo 'E. Change default login shell for a User Account'
   echo 'F. Change account expiration date for a User Account'
   echo 'Q. Quit'
   echo ''
   echo -n 'Select A, B, C, D, E, F or Q: '
}


# function to create user account
create_usr(){
   
   read -p "user name:" username
   read -p "home directory:" homedirectory
   read -p "default login shell:" defaultshell

   useradd -s $defaultshell -d $homedirectory $username
   echo "Create $username account successfully!"
   sleep 3
}


# function to delete user account
delete_usr(){
   read -p "user name: " username
   userdel -r $username
   echo "Delete $username account successfully!"
   sleep 3
}

# function to add supplementary group
add_supplementary_group(){
   read -p "user name: " username
   read -p "group name: " groupname
   usermod -a -G $groupname $username
   echo "$username add to group $groupname successfully!"
   sleep 3
}

# function to change initial group
change_initial_group(){
   read -p "user name: " username
   read -p "group name: " groupname
   usermod -g $groupname $username
   echo "$username change initial group to $groupname successfully!"
   sleep 3
}

# function to change default shell
change_default_shell(){
   read -p "user name: " username
   read -p "shell name: " shellname
   chsh -s $shellname $username
   echo "$username change default shell to $shellname successfully!"
   sleep 3
}

# function to change account expiration date
change_account_expiration(){
   read -p "user name: " username
   read -p "expiration date (YYYY-MM-DD): " expirationdate
   usermod -e $expirationdate $username
   echo "$username account change expiration deate to $expirationdate successfully!"
   sleep 3
}

choice=n   # initialize choice to a dummy value

# accept user choice, call appropriate function
while [ $choice != "Q" ] && [ $choice != "q" ]
do
   display_menu
   read choice

   if [ $choice = 'A' ] || [ $choice = 'a' ]
   then
      create_usr
   elif [ $choice = 'B' ] || [ $choice = 'b' ]
   then
      delete_usr
   elif [ $choice = 'C' ] || [ $choice = 'c' ]
   then
      add_supplementary_group
   elif [ $choice = 'D' ] || [ $choice = 'd' ]
   then
      change_initial_group
   elif [ $choice = 'E' ] || [ $choice = 'e' ]
   then
      change_default_shell
   elif [ $choice = 'F' ] || [ $choice = 'f' ]
   then
      change_account_expiration
   elif [ $choice != 'Q' ] && [ $choice != 'q' ]
   then
      echo 'Valid options are A, B, C, D, E, F or Q: '
      sleep 3
   fi
   

done

# eof: myscript.sh
