#Linux User Configuration
#Set up

    cd
    # Read-Only
    git clone http://github.com/yunabe/linux-user-config.git config
    # Writable if possible
    git clone git@github.com:yunabe/linux-user-config.git config
    ./config/setup.sh

#Sync

    git pull