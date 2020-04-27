# DynamicPapes
My dynamic wallpapers, using feh, with the aim of being simple and easy to use.
It must be said that the idea itself came from a post I saw on reddit, and I obtained
the wallapers from [here](https://github.com/adi1090x/dynamic-wallpaper)

---

## Dependencies
Now with before we get into the usage, first we must ensure the dependencies are
installed, of which there is only one, namely `feh`
* Arch/ Manjaro
````
sudo pacman -S feh
````
* Ubuntu
````
sudo apt install feh
````
* Fedora
````
sudo dnf install feh
````

---

## Installing
Simply
````
make
````
This installs the script in ~/bin

---

## Usage
So firstly, the idea behind this DynamicPape is to follow the unix philosophy of
doing 1 thing, and doing that one thing well, so with that being said, all the
script does is change your wallpaper to the appropriate one based on the time,
so idealy you will run the script on the init of your specific Desktop Environment
(for example, I will add `exec /home/skippy/bin/rotatingwp.sh &` to my i3config)
If you dont know how to do this/ where to do this, a simple solution is also to
set it up so the script runs on boot (I will not go into this detail though)

With that out of the way, you will find in your ~/bin, the following script `rotatingwp.sh` to obtain a list of modes, you can
````
./rotatingwp.sh
````
To get a list of modes.

---

## Example
Too run the firewatch set
````
./rotatingwp.sh 0 &
````
