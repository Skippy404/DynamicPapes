#V1.0 of script
#Please not, this script WILL break if it is just yoinked, pwd is setup when installed,
#that is, when you run `make` a complete script is installed in ~/bin
#TODO pwd must be changed to a const that is set through a makefile when installed

# Get directory of photos
case $1 in
	0)
		pd="$PWD/images/firewatch"
		;;
	1)
		pd="$PWD/images/animecity"
		;;
	2)
		pd="$PWD/images/bitday"
		;;
	3)
		pd="$PWD/images/exodus"
		;;
	4)
		pd="$PWD/images/firewatch2"
		;;
	5)
		pd="$PWD/images/forest"
		;;
	6)
		pd="$PWD/images/maldives"
		;;
	7)
		pd="$PWD/images/mojave"
		;;
	8)
		pd="$PWD/images/moon"
		;;
	9)
		pd="$PWD/images/seoul"
		;;
	*)
		echo "Usage rotatingwp <nr> &"
		echo "0: firewatch"
		echo "1: animecity"
		echo "2: bitday"
		echo "3: exodus"
		echo "4: firewatch2"
		echo "5: forest"
		echo "6: maldives"
		echo "7: mojave"
		echo "8: moon"
		echo "9: seoul"
		echo -e "\nplease note, the & is necassory to fork the process to background"
		exit 1
		;;
esac

while [ 1 = 1 ]
do
	index=$(date | cut -d " " -f5 | cut -c 1-2)
	pic=$(ls -l $pd/$index.* | cut -d " " -f 9)
	if [ ! $pic = "" ]; then
		feh --bg-scale $pic
	else
		echo "FDNE"
	fi

	#sleep for 30 min before updating.
	#sleep 1800
done
