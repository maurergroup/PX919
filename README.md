# CompChem_Notebooks
--------------------

This repo contains a collection of Jupyter notebooks, which I use for teaching 
in computational chemistry for undergraduate and graduate classes at U Warwick.

Topics include
* `/QuantumMechanics` - Basic model systems from quantum mechanics
* TODO - Molecular and Solid state chemical bonding concepts (2nd year Solid State)
* TODO - Topics of Molecular Modelling (3rd year Molecular Modelling)
* TODO - Materials/Interface prediction with Density Functional Theory and Beyond (4th year Adv. Quantum Chemistry)
* `/WaveFunctionMethods` - Tutorials on Wave function methods (Graduate school class on molecular Modelling)


You can run these notebooks on your own computer if you follow the installation procedures below

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

`sudo apt-get install build-essentials`

`sudo apt-get update`

`sudo apt-get upgrade`

* Now we download the psi4-conda installer and install it

`wget http://vergil.chemistry.gatech.edu/psicode-download/psi4conda-1.1-py36-Windows-x86_64.sh`

`bash psi4conda-1.1-py36-Windows-x86_64.sh`

When asked for your password always provide. When asked y/n, always answer y.
* After installation, we add some more important packages using the `conda` command

`conda install -c conda-forge ase`

`conda install jupyter`

`conda install numpy scipy matplotlib`

3. **Finally, we download the notebooks**

*In your ubuntu shell, issue

`git clone https://github.com/maurergroup/CompChem_Notebooks.git

This will download a folder containing all the notebooks and this README file. 

You can now start the Jupyter Browser shell by issuing

`jupyter notebook --no-browser`

This will print a link starting with localhost:... which you should post into your browser.


## For Mac



## For Linux



# Prerequisites
---------------

* Python 3.5 or higher
* Jupyter
* Atomic Simulation Environment 3.15 or higher
* Psi4 
* matplotlib
* numpy/scipy

These requirements are easiest satisfied when using Anaconda or the Psi4 prepacked conda installer (see above).



### copyright
Reinhard J. Maurer, U Warwick

