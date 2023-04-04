### Dependencies

- [Conky](https://github.com/brndnmtthws/conky) -- v.1.10 or higher due to new Lua syntax. Try `conky --version` to see what version is currently installed on your System
- [PyCurl](http://pycurl.io/)
- One of the currently supported fonts installed on your System:
    - [Lato](https://fonts.google.com/?query=Lato)
    - [Roboto](https://fonts.google.com/?query=Roboto)
    - [Fira Code](https://fonts.google.com/?query=Fira+Code)
    - Mono (*default monospace font)

### Setup

1. Create config directory for Conky
    ```
    mkdir -p ~/.config/conky/conkula && cd ~/.config/conky/conkula
    ```
2. Clone the repository into config directory and cd 
    ```
    git clone https://github.com/bryskiewiczr/conkula.git .
    ```
3. Choose your settings
    ```
    # List of available colors:
    ['white', 'red', 'yellow', 'cyan', 'orange', 'purple', 'pink', 'lime']

    # List of available colors can also be viewed by running
    python3 conkula.py colors
    > ['white', 'red', 'yellow', 'cyan', 'orange', 'purple', 'pink', 'lime']

    # If your city name has more than one word use spaces or + signs to separate the words
    Los Angeles -> los angeles
    or
    Los Angeles -> los+angeles
    ```

4. Start the setup script
    ```
    python3 conkula.py install main_color accent_color city

    i.e. python3 conkula.py install white lime warsaw
    ```

### Running

1. After the installation is done, the program will ask whether or not you wanna run Conky with your new settings

2. Conkula can also be ran manually by invoking
    ```
    bash ~/.config/conky/conkula/startup.sh
    ```

3. Useful aliases to add to your `.bashrc` or `.bash_aliases` file
    ```
    alias conkula="bash ~/.config/conky/conkula/startup.sh"                         # Starts up Conky with this config
    alias conkill="ps aux | grep -ie conky | awk '{print $2}' | xargs kill -9"      # Kills all Conky processes
    ```
### Screenshots

### To-dos
