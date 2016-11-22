Installation
------------

There are two options for configuring the touchpad.

1. Use xinput settings executed after login by Unity Dash
    

    ```sh
    # Create required directory paths.
    [[ -d ~/.config/autostart ]] || mkdir --parents ~/.config/autostart
    [[ -d ~/bin ]] || mkdir ~/bin

    # Copy settings shell script to home.
    cp ./bin/*.sh ~/bin/

    # Copy desktop autostart config to home.
    cp ./autostart/*.desktop ~/.config/autostart/
    ```
2. Use a custom X11/xorg configuration loaded on login

    ```sh
    [[ -d ~/.local/share/X11/xorg ]] || mkdir --parents ~/.local/share/X11/xorg
    cp ./X11/xorg/synaptics-touchpad.conf ~/.local/share/X11/xorg/
    sudo ln -s ~/.local/share/X11/xorg/synaptics-touchpad.conf /usr/local/share/X11/xorg/60-synaptics-touchpad.conf
    ```
