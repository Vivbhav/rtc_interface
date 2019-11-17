# make section

make_directory='./build/gcc/'
make --directory=$make_directory -f Makefile -B || exit
retval=$?
if [ $retval -ne 0 ]; then
    echo "Return code was not zero but $retval"
fi

# connect section

sudo openocd -f /usr/local/share/openocd/scripts/board/atmel_same70_xplained.cfg

