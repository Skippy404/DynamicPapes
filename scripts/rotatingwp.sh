#V1.0 of script
#Please not, this script WILL break if it is just yoinked, pwd is setup when installed,
#that is, when you run `make` a complete script is installed in ~/bin
#TODO pwd must be changed to a const that is set through a makefile when installed

# Get directory of photos
case $1 in
	0)
		pd="$PWD/images/firewatch"
		;;
	*)
		echo "Usage rotatingwp <nr> &"
		echo "0: firefox"
		echo -e "\nplease note, the & is necassory to fork the process to background"
		exit 1
esac

while [ 1 = 1 ]
do
	index=$(date | cut -d " " -f5 | cut -c 1-2)
	pic=$(ls -l $pd/$index.* | cut -d " " -f 9)
	if [ ! $pic = "" ]; then
		echo "File exists!"
		feh --bg-scale $pic
	else
		echo "FDNE"
	fi

	#sleep for 30 min before updating.
	#sleep 1800
done
