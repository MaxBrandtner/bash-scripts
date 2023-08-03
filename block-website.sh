#blocks website in the hostfile
#$1 = website name

[ $1 ] || exit

[ $(whoami) != "root" ] && pkexec "$(pwd)/block-website.sh" "$1"


url=$( (echo "$1" | grep '^www.' | awk '{print substr( $0, 5 )}') || (echo "$1") )


echo "\n
echo 0.0.0.0   www.$url
echo 0.0.0.0   $url
echo ::0       www.$url
echo ::0       $url 
" >> /etc/hosts
