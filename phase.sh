
# Update and Upgrade 
sudo apt-get -y update
sudo apt-get -y upgrade


# Install Dependencies It is necessary to install all of this before configuration. 
# sudo apt-get install -y libncurses5-dev
# sudo apt-get install -y python-pip
# sudo apt-get install -y python3-pip
# sudo apt-get install -y python2.7-dev python3.5-dev
# sudo apt-get install -y build-essential cmake pkg-config
# sudo apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
# sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
# sudo apt-get install -y libxvidcore-dev libx264-dev
# sudo apt-get install -y libgtk-3-dev
# sudo apt-get install -y libatlas-base-dev gfortran
# sudo apt-get install -y zip unzip
# sudo apt-get install -y unrar-free
# sudo apt-get install -y p7zip-full
# sudo apt-get install -y libjpeg8-dev
# sudo apt-get install -y python-lxml
# sudo apt-get install -y python3-lxml
# sudo apt-get install -y python-tk
# sudo apt-get install -y python3-tk
# sudo apt-get install -y htop
# sudo apt-get install -y cython
# sudo apt-get remove -y unattended-upgrades  # remove automatic updates
# sudo apt-get install -y libcupti-dev

python -m pip install pymongo
pip install tqdm
pip install Click
pip install -U nltk

#export PATH=/usr/local/cuda-10.1.168/bin:/usr/local/cuda-10.1.168/NsightCompute-2019.1${PATH:+:${PATH}}

#echo "export PATH=/usr/local/cuda-10.1.168/bin${PATH:+:${PATH}}"
#please change cuda version from anaconda navigator>environment> modify version of cuda> cuda11.x, cuda 10.x, cuda 9.x

conda install -c anaconda cudatoolkit

#it is suggested to install opencv with conda instead of Pip(pip version is not recommended)
#pip install opencv-python
conda install -c conda-forge opencv

######################################################################## Pytorch installation #######################################################


#install pytorch if you want to deploy cuda 10.2 
#conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
#conda install -c conda-forge tensorflow=1.14


echo "You can check if everything were installed successfully."
echo "1- First run 'conda activate yourenvironment' for python 3.x
echo "on Terminal to activate conda environment which have the libraries installed."
echo "                                                        "
echo "2- run 'ipython' on Terminal to enter ipython."
echo "                                                        "
echo "3- If you can import following libraries everything was fine."
echo "	- In the ipython run 'import tensorflow', 'import keras', 'import cv2', 'import torch'."
echo "	- If there is no errors, libraries were installed."
echo "                                                        "
echo "4- To exit from ipython run 'exit', and to deactivate venv run 'deactivate' on Terminal."
echo "                                                        "
echo "5- You can also run Jupyter notebook on created virtualenv. To run it follow the instruction."
echo "	- On Terminal run the followin command."
echo "                                                        "
echo " 	'jupyter notebook --no-browser --port 7000' " # it is true whenever we have static IP.
echo "                                                        "
echo "	- You will be provided a link with token. Copy the link to your browser address bar and replace 'localhost' with your"
echo "   server or machine external ip address."


