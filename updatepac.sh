!#/bin/sh
wget https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
[ -e "ss.pac" ] && rm ss.pac
gfwlist2pac -i gfwlist.txt -f ss.pac -p "SOCK5 127.0.0.1:1080"
rm gfwlist.txt