#V1.0 of script
#TODO pwd must be changed to a const that is set through a makefile when installed
PWD=$(pwd)
if [[ ! $1 = 0 ]]; then
	echo "Usage rotatingwp <nr> &"
	echo "0: firefox"
	echo -e "\nplease note, the & is necassory to fork the process to background"
	#exit 1
fi

# Get directory of photos
case $1 in
	0)
		pd="$PWD/images/firewatch"
		;;
	*)
		pd="$PWD/images"
		#exit 1
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
