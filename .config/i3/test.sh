cd /home/mannemoquist/.config/i3/
i3status | ( read line && echo $line && read line && echo $line && while :
do
	read line
	language=$(setxkbmap -query | grep layout)
	keyboard_json=",{\"name\":\"keyboard\",\"full_text\":\"${language}\" }"
	echo "${line%?}${keyboard_json}]" 
done)

