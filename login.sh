#!/bin/bash

# Enter your login credentials
usid="username"
password="password"

# Connect to the Wi-Fi network
nmcli device wifi connect name="VIT5G"
sleep 5  # Wait for connection to establish

# Send POST request to login URL
curl -d "userId=$usid&password=$password&serviceName=ProntoAuthentication&Submit22=Login" -X POST http://phc.prontonetworks.com/cgi-bin/authlogin?URI=http://captive.apple.com/hotspot-detect.html 
