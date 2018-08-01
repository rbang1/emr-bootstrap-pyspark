#!/bin/bash

# install conda
#wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
#    && /bin/bash ~/miniconda.sh -b -p $HOME/conda

#echo -e '\nexport PATH=$HOME/conda/bin:$PATH' >> $HOME/.bashrc && source $HOME/.bashrc

# install packages
#conda install -y ipython jupyter boto3

sudo pip install sagemaker_pyspark
sudo /usr/bin/pip-3.4 install sagemaker_pyspark
