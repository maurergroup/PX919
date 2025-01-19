# PX919: Quantum Chemistry module
--------------------

This repo contains a collection of Jupyter notebooks, which I use for teaching 
in computational chemistry for undergraduate and graduate classes at U Warwick.

Some of the content is taken from the excellent psi4numpy repository of QC tutorials.

You can run these notebooks on your own computer if you follow the installation procedures below


# Students of module PX919
------------------
Please ignore the installation instructions. 
Go straight to the PX919 Moodle page and follow the instructions for setup on the SC RTP.


# Quick online start guide
------------------

Just click here:

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/maurergroup/PX919/master)

or paste 

`https://github.com/maurergroup/PX919`


into the Github Repo field on the following webpage:

https://mybinder.org

It will load a few minutes as it satisfies the dependencies.
This will open an interactive Jupyter notebook in your browser.
After opening it, navigate to the folder and notebook that you want to start.

# Installation
--------------

First of all you need to satisfy all dependencies. 
It's easiest to start with a clean installation.

## For Win

1. **Install the Windows Subsystem for Linux)**
Note: This only works if you have an up-to-date Windows 10 installation

* Go to the search bar and enter "PowerShell". Right-click on "Windows PowerShell (X86) and click on "Run as Administrator"
* enter following commands

`Get-WindowsOptionalFeature –Online –FeatureName Microsoft-Windows-Subsystem-Linux`

and

`Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

* Now restart your computer
* Go to Microsoft Store and search for Ubuntu. Click on the Ubuntu app and install it. You might have to restart again.

You should now be able to start an Ubuntu command line shell inside your Windows. 
Upon your first shell start, you will be asked for a username and a password. 
They are independent from your Windows username and password. 
Congrats!
If you run into troubles, check out:

https://becominghuman.ai/how-to-setup-your-windows-10-machine-for-machine-learning-using-ubuntu-bash-shell-b32f01bd31ab?gi=6dc86bcc1224

or

https://docs.microsoft.com/en-us/windows/wsl/install-win10

2. **Install Psi4/conda**
(you need internet access)
* Open an Ubuntu command line shell and type

`ln -s /mnt/c/ Win`

`sudo apt-get install build-essential`

`sudo apt-get update`

`sudo apt-get upgrade`

* Now we download the psi4-conda installer and install it

`wget http://vergil.chemistry.gatech.edu/psicode-download/psi4conda-1.1-py36-Windows-x86_64.sh`

`bash psi4conda-1.1-py36-Windows-x86_64.sh`

When asked for your password always provide. When asked y/n, always answer y.
3. **After installation, we add some more important packages using the `conda` command**

`conda install -c conda-forge ase`

`conda install jupyter`

`conda install numpy scipy matplotlib`

4. **Finally, we download the notebooks**

*In your ubuntu shell, issue

`git clone https://github.com/maurergroup/CompChem_Notebooks.git

This will download a folder containing all the notebooks and this README file. 

You can now start the Jupyter Browser shell by issuing

`jupyter notebook --no-browser`

This will print a link starting with localhost:... which you should post into your browser.

5. **Visualization and model building**

* You might also want to install the following packages for model building:

- Avogadro: https://avogadro.cc/

- VESTA: http://jp-minerals.org/vesta/en/

## For Mac

* Open a command line terminal and execute

`wget http://vergil.chemistry.gatech.edu/psicode-download/psi4conda-1.1-py36-MacOSX-x86_64.sh`

`bash psi4conda-1.1-py36-MacOSX-x86_64.sh`

Follow steps 3 to 5 in the Windows installation instructions.

## For Linux

* Open a command line terminal and execute

`wget http://vergil.chemistry.gatech.edu/psicode-download/psi4conda-1.1-py36-Linux-x86_64.sh`

`bash psi4conda-1.1-py36-Linux-x86_64.sh`

Follow steps 3 to 5 in the Windows installation instructions.

# Prerequisites
---------------

* Python 3.5 or higher
* Jupyter
* Atomic Simulation Environment 3.15 or higher
* Psi4 
* matplotlib
* numpy/scipy

These requirements are easiest satisfied when using Anaconda or the Psi4 prepacked conda installer (see above).



Reinhard J. Maurer, U Warwick

