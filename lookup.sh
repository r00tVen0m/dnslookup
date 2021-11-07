#!/bin/bash

# Check for given arguments
if [ $# -eq 0 ]
then
	echo -e "You need to specify the target domain.\n"
	echo -e "Usage:"
	echo -e "\t$0 <domain>"
	exit 1
else
	if [ -z $1 ];then
	
	exit 1	

	fi
	targret=$1
	
fi
function nslook {
		function A {
			A=$(nslookup -query=A $domain)
                	echo "$A"
				}
		function PTR {
			IP=$(host $domain | awk '{print $4}' | head -n 1)
			nslookup -query=PTR $IP
			
			}
		function ANY {
			ANY=$(nslookup -query=ANY $domain)
                        echo "$ANY"
}
                function TXT {
                       TXT=$(nslookup -query=TXT $domain)
                        echo "$TXT"
}
 	       function MX {
                       MX=$(nslookup -query=MX $domain)
                        echo "$MX"
}
		echo -e "\n\nSelect Query available:"
		echo -e "\t1)A Records ."
		echo -e "\t2) PTR Records"
		echo -e "\t3) ANY Existing Records"
		echo -e "\t4) TXT Records"
		echo -e "\t5) MX Records"
		echo -e "\t*) Exit.\n"

		read -p "Select your options Records: " options
		case $options in
        	"1") A ;;
        	"2") PTR ;;
		"3") ANY ;;
		"4") TXT ;;
		"5") MX ;;
        	"*") exit 0 ;;
		esac
		#nslook=$(nslookup -query=A $domain)
		
                
                
}

function dig {
		dig=$()
		echo "$dig"
}
domain=$targret
echo -e "Additional options available:"
echo -e "\t1)nslook ."
echo -e "\t2) dig."
echo -e "\t*) Exit.\n"

read -p "Select your option: " opt
case $opt in
	"1") nslook ;;
	"2") dig ;;
	"*") exit 0 ;;
esac
