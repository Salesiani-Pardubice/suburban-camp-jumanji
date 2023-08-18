#!/bin/sh

key="123456789"

# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color

while
   clear
   echo -n "Zadejte heslo: "
   read password
   echo
   [ "$password" != "$key" ]
do
   clear
   printf "Zadejte heslo: ${RED}ŠPATNÉ HESLO!${NC}"
   play -q assets/fail-effect.mp3
done
