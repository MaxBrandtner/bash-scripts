#blocks website in the hostfile
#$1 = website name
url=$1

if [ $# -eq 0 ]
then
	echo "no argument provided"
	exit
fi


first_characters_input=`echo $1 | cut -c1-4`
echo $first_characters_input
if [ $first_characters_input == 'www.' ]
then
	echo $url
	url=`echo "$url" | awk '{ print substr( $0, 5 ) }'`
	echo $url	
fi

if [ whoami != 'root' ]
then
	exec= `echo "$(pwd)/block-website.sh"`
	pkexec echo "$exec $1"
else

echo " "              	>> /etc/hosts
echo 0.0.0.0   www.$url	>> /etc/hosts
echo 0.0.0.0   $url    	>> /etc/hosts
echo ::0       www.$url	>> /etc/hosts
echo ::0       $url   	>> /etc/hosts
echo " "	      	>> /etc/hosts
fi

