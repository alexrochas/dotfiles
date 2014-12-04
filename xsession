#Xsession, here I determine which program will run on i3 startup.

#Xscreensaver
exec /usr/bin/xscreensaver -no-splash &

#Sound-applet
exec gnome-sound-applet &

#Udisks-glue
exec udisks-glue -c /home/alex/.udisks-glue.conf &

#Workrave (worth it?)
exec workrave &

#display config
exec /home/alex/.displayConfig.sh &

#i3
exec i3
