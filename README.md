Installation
------------

There are two options for configuring the Thinkpad X1 Carbon's screen is
Carbon's pointing device such as touchpad, touchscreen and mouse on Debian based
Linux distributions.

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
    # Create required directory paths.
    [[ -d ~/.local/share/X11/xorg ]] || mkdir --parents ~/.local/share/X11/xorg

    # Copy configuration to home.
    cp ./X11/xorg/synaptics-touchpad.conf ~/.local/share/X11/xorg/

    # Soft link configuration to system location.
    # Note: Use the file name to change the load order.
    sudo ln -s ~/.local/share/X11/xorg/synaptics-touchpad.conf \
	/usr/share/X11/xorg.conf.d/60-synaptics-touchpad.conf
    ```

Testing
-------

You can test your currently configured settings by querying xinput properties
for the device.

```sh
# List all xinput devices.
xinput list

# List properties and set values for a device.
# Note: Replace $ID with the device ID show by `xinput list`
xinput list-prop $ID
```

> **Important Tip**  
> After changing properties using the configuration files installed above you
> will need to log out and log in again before they take effect.

### Pointer Co-ordinates

You can query the pointer co-ordinates in real time using tools like `xdotool`.
Once installed it can be used to watch the pointer location, reporting exact
co-ordinates, which can help in tweaking the X,Y co-ordinates for any property
you wish to set.

```sh
# Install xdotool.
sudo apt-get install xdotool

# Watch pointer location in real-time.
watch xdotool getmouselocation
```

License
-------

Copyright (c) Christopher Hopper 2016

Distributed under the MIT License. 

See the included [LICENSE](LICENSE) for complete terms.

