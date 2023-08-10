sudo apt-get update
# Instalación de pip3
sudo apt-get install python3-pip -y


sudo apt-get install libproj-dev proj-data proj-bin  
sudo apt install python3-dev libproj-dev proj-data proj-bin libgeos-dev
sudo apt-get install libgeos-dev

sudo apt-get install build-essential libssl-dev
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz
tar -zxvf cmake-3.20.0.tar.gz
cd cmake-3.20.0
make
sudo make install

 cd ~

proj-8.1.1.tar.gz




# Unpack and setup build directory
tar xf geos-3.10.1.tar.bz2
cd geos-3.10.1
mkdir _build
cd _build
# Set up the build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
# Run the build, test, install steps
make
ctest
make install



sudo pip3 install cython  
sudo pip3 install cartopy 

#sudo bash ./Miniconda3-py38_4.10.3-Linux-x86_64.sh -b -f

# Instalación de JupyterLab
pip3 install jupyterlab

pip3 install mlflow
pip3 install statsmodels
pip3 install sklearn
pip3 install skforecast
pip3 install geopandas
pip3 install Proj
pip3 install geoplot

sudo apt-get install python3-matplotlib -y
pip3 install seaborn
pip3 install matplotlib

echo "\n\n  Jupyter notebook ... \n\n"
# Jupyter notebook

export JUPYTER_RUNTIME_DIR=/home/vagrant
export JUPYTER_ALLOW_INSECURE_WRITES=true
jupyter notebook --ip 192.168.124.100 --port 8888&




#curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"

#export PATH="/home/vagrant/.local/bin:$PATH"
#source ~/.bashrc