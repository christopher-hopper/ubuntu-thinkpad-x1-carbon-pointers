Installation
------------

```sh
# Create required directory paths.
[[ -d ~/.config/autostart ]] || mkdir --parents ~/.config/autostart
[[ -d ~/bin ]] || mkdir ~/bin

# Copy settings shell script to home.
cp ./bin/*.sh ~/bin/

# Copy desktop autostart config to home.
cp ./autostart/*.desktop ~/.config/autostart/
```
