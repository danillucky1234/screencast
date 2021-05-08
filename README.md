# Installation

1. `git clone git@github.com:danillucky1234/screencast.git`
2. `cd screencast`
3. `chmod 755 install.sh`
4. `bash install.sh`

### If you get an error when running the `install.sh` script, you probably don't have the X11 library installed. Please install it (using your package manager) and try running the script again.  
- Debian based: `sudo apt install libx11-dev`
- Arch based: `sudo pacman -S libx11`

# Usage
Type `screencast.sh` in any directory in your terminal

### To stop recording use 'q' or Ctrl+C (SIGTERM)
### You can find recorded video in ~/Videos/ directory.  

# How does the script work?
### First, the compiled xrectsel binary is run (we got it when we ran `install.sh`. There it was also copied into the ~/.local/bin directory). Then we extract 4 numbers from that binary: the origin of coordinates, where the video is recorded from, the width of the selected area, and the height. Then we generate a video title using the `date` utility and put it in variable. After that ffmpeg is enabled, where all parameters are passed and the video is recorded and saved in ~/Videos/ folder.

---

### This project was not intended as a GitHub project, I did it for myself. I lacked the ability to quickly record display video, so I wrote this script.
----
## The xrectsel.c code was written by [lolilolicon](https://github.com/lolilolicon)