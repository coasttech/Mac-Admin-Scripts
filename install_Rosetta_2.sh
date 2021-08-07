#!/bin/bash

###############
#
#Script Name: install_Rosetta_2.sh
#By:  Jeremy Desaulniers / Created:  7/8/2021
#
#Description: Script to see if Rosetta 2 if not than install Rosetta 2
#
##############

if [[ -f "/Library/Apple/System/Library/LaunchDaemons/com.apple.oahd.plist" ]]; then
	
	echo "<result>Installed<result>"
	
else

	echo "Apple Silicon - Installing Rosetta"
	/usr/sbin/softwareupdate --install-rosetta --agree-to-license
		
fi
	
exit 0
