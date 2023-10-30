# Notes
tar --exclude='node_modules' --exclude='tmp' --exclude='package-lock.json' --exclude='yarn.lock' -cvf home_backup.tar ~/*

### Get terminal Profile
dconf dump /org/gnome/terminal/legacy/profiles:/

### Export one of the profiles 
### (for example the one with id: :1430663d-083b-4737-a7f5-8378cc8226d1 )
dconf dump /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ > my-custom-profile.dconf

### Load an existing profile
dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < my-custom-profile.dconf

### Make a shell file executable 
#### by the owner
chmod u+x FILENAME
#### by all users
chmod a+rx FILENAME