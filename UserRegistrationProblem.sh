echo "Welcome to User Registration Problem"

function FirstName()
{
read -p "Enter first name: " fname
if [[ $fname =~ $NamePattern ]]
	then
   echo "First Name is correct"
else
   echo "First name should start with Capital and atleast 3 character, try again"
   FirstName
fi
}

function LastName()
{
read -p "Enter Last name: " lname
if [[ $lname =~ $NamePattern ]]
then
   echo "Last Name is correct"
else
   echo "Last name should start with Capital and atleast 3 character , try again"
   LastName
fi
}

function validateEmailId()
{
emailPattern='^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$'
read -p "Enter Email Id " email
if [[ $email =~ $emailPattern ]]
then
   echo "Valid email id"
else
   echo "Invalid email id, try again"
   validateEmailId
fi
}

function validateMobileNumber()
{
read -p "Enter mobile number with country code: " mobNum
mobilePattern="^[1-9]+[0-9]+[/s\-]?[1-9]{1}[0-9]{9}$"
if [[ $mobNum =~ $mobilePattern ]]
then
        echo "Mobile number is valid"
else
        echo "Invalid mobile number, try again"
        validateMobileNumber
fi
}

function validatePassword()
{
read -p "Enter password: " passWord
passWordPattern="^((?=.*([[:digit:]])(?=.*[[:upper:]])(?=.*[[:punct:]]{1})[[:alnum:]]{8,}$"
if [[ $passWord =~ $passWordPattern ]]
then
	echo "Valid Password"
else
	echo "InCorrect: minimum 8 character with Upper Case, Numeric and Special character,try again"
	validatePassword
fi
}

NamePattern="^[[:upper:]]{1}[[:lower:]]{3,}"
FirstName
LastName
validateEmailId
validateMobileNumber
validatePassword
