rm -rf miniconda3
cd ~/tmp_Aydin
rm Miniconda3-latest-Linux-x86_64.sh
cd
export MINICONDA_PATH_PARENT=$HOME
export MINICONDA_PATH=$MINICONDA_PATH_PARENT/miniconda3
export MINICONDA_INSTALLER=Miniconda3-latest-Linux-x86_64.sh
export MINICONDA_URL=https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER
cd ~/tmp_Aydin
mkdir -p $MINICONDA_PATH_PARENT
wget $MINICONDA_URL
bash $MINICONDA_INSTALLER -b -p $MINICONDA_PATH
export PATH=$MINICONDA_PATH/bin:$PATH
echo PATH: $PATH
echo >> ~/.bashrc
echo export PATH=$MINICONDA_PATH/bin:\$PATH >> ~/.bashrc
export PATH="/home/shokufeh/miniconda3/bin:$PATH"
export ENVNAME=deep
conda create --name $ENVNAME
source activate $ENVNAME
conda install theano keras tensorflow tensorflow-gpu opencv pillow spyder matplotlib
conda install -c conda-forge trackpy
pip install docopt
pip install imgaug
conda install -c anaconda cudatoolkit
pip install scikit-image==0.13.1
pip install --upgrade -r requirements.txt
pip uninstall scikit-image
pip install scikit-image==0.13.1
pip install --upgrade scikit-image

#pip install --ignore-installed --upgrade "https://github.com/sigilioso/tensorflow-build/raw/master/tensorflow-1.4.0-cp36-cp36m-linux_x86_64.whl"


#replace the saving with toplogy in model.py



# to solve UserWarning: Converting sparse IndexedSlices to a dense Tensor of unknown shape.
# in model.py change:(It is not important)
#import warnings
#warnings.filterwarnings('ignore')
#
#to solve the model.py's datagenerator() may not be threadsafe and multiprocess=true errors:
#Set 

#workers=1,
#use_multiprocessing=False,
#or if you have multi gpu system you can put the below codes:

  #      "workers": max(self.config.BATCH_SIZE // 2, 2),

 #        "use_multiprocessing": True,


#if you faced the error during the epochs process :(multiprocess=true ....)

#follow below link on stack

#https://stackoverflow.com/questions/45943675/meaning-of-validation-steps-in-keras-sequential-fit-generator-parameter-list

