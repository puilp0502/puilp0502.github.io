echo "#### Installing setuptools... ####"
wget https://bootstrap.pypa.io/ez_setup.py -q -O - | sudo python > /dev/null
if [[ ! $? ]]; then
	echo "Failed!"
	exit 1
fi

echo "#### Installing pip... ####"
wget https://bootstrap.pypa.io/get-pip.py -q -O - | sudo python > /dev/null
if [[ ! $? ]]; then
	echo "Failed!"
	exit 1
fi

if [[ $PATH != *"/usr/local/bin"* ]]; then
	echo 'Adding /usr/local/bin to $PATH'
	export PATH="/usr/local/bin:$PATH"
fi
