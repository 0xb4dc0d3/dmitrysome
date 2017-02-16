echo -e -n".-=~=-			                                                        .-=~=-.
(__  _)-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-(__  _)
( _ __)                                                             ( _ __)
(__   )	(    \( \/ )(  )(_  _)(  _ \( \/ )/ ___) /  \ ( \/ )(  __)  (   __)
(   __)	 ) D (/ \/ \ )(   )(   )   / )  / \___ \(  O )/ \/ \ ) _) 	(    _)
(_    )	(____/\_)(_/(__) (__) (__\_)(__/  (____/ \__/ \_)(_/(____)  (__  _)
( _ __)                                                  by or 1=1  ( _ __)
(_ ___)-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-(_ ___)
(__  _) 															(_____)
(_ ___)			Usage: ./dmitrysome -winsepfb -t filename.txt 		(____ )
( _ __)			-----------------------------------------------		(_____)
(__  _)			-w ==> Whois lookup on the domain name of a host	(__ __)
( _ __)			-i ==> Whois lookup on the IP address of a host		( ____)
(_____)			-n ==> Retrieve Netcraft information on a host		(_ _ _)
(_   _)			-s ==> Perform a search for possible subdomains		(___  )
( _ _ )			-e ==> Perform a search for possible email address  (__  _) 
(__   )			-p ==> Perform a TCP port scan on a host			(___ _)
(____ )			-f ==> Perform a TCP port scan on a host (filtered)	(_____)
(__   )			-b ==> Read banners received from scanned ports		(_____)
(_    )			-t ==> Set TTL in seconds scanning TCP ports		(_    )
(     )																(__   )
(    _)			 /*/ Requires the -p flagged to be passed /*/	   	(_____)
(	__)																(_   _)
(_ ___)-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-._.-=-(_ ___)"
while IFS='' read -r host || [[ -n "$host" ]]; do
	gnome-terminal --tab  -e "gnome-terminal --geometry=260x25-0+0 --tab -e 'dmitry -$parameters -t $ttl -o $host.txt $host'"  
done < "$1"
