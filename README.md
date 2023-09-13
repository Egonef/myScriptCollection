# myScriptCollection

This repository contains a collection of useful scripts that I use on my system. 
Everyone is welcome to come and take anything you like. 
Some may not be even anything complex, but just commands shorteners and small QoL improvements :) 

Follow the steps below to install and use these scripts.


# Installation


 Clone this repository to the location of your choice
```bash
git clone https://github.com/Egonef/myScriptCollection.git
```
 Navigate to the repository directory
```bash
cd myScriptCollection
```
 Grant execution permissions to the installation script
```bash
chmod +x installscript.sh
```
 Run the installation script.
 By default, the scripts will be placed in the '/bin' directory, which is usually included in the system's $PATH.
 If you want to change the installation location, you can modify the 'carpeta_destino' variable in the installation script:
```bash
./installscript.sh
```

# Script list:

List of scripts and a brief explanation of their functionality.

## mycbonsai

My go-to parameters for cbonsai. It looks nice on rices.
Needless to say that you need to have cbonsai installed on your system: https://gitlab.com/jallbrit/cbonsai#installation




![Imgur](https://i.imgur.com/loGfYQq.png)




## fext

A short program that extract the type of compressed files that I use: .zip, .rar and .tar; This way I dont have to remember the syntax and 
parameters of each one, just fext and im good to go.

You will need some dependencies:

For debian based distros:
```bash
sudo apt install unrar unzip tar
```
The syntax of the command is simple:
```bash
fext <file_to_extract>
```



