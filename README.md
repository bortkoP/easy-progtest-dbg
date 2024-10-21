# Easy progtest debuger
This repository contains everything you need to install debuging software for BI-PA or Progtest on FIT CVUT

## [INSTALLATION] <br />
  How to install: <br />
  ### LINUX <br />
> git clone https://github.com/bortkoP/easy-progtest-dbg.git <br />
> cd easy-progtest-dbg/ <br />
> sudo ./install.sh <br />
<br />

> $ You are installing Easy progtest debuger <br />
> $ Type in editor you would like to use for creating datasets. (such as vim/nano) <br />

<br />
Now choose your favourite text editor for creating datasets, you can also use something like xed with graphics <br />
When everything is OK, you will see message: <br />
<br />

> $ Successfully installed on your computer, use with dbg -h, enjoy (by bortkoP) <br />

That is it! You succesfully installed Easy progtest debuger from source! <br />

## [UNINSTALL] <br />
  How to uninstall: <br />
  ### LINUX <br />
> git clone https://github.com/bortkoP/easy-progtest-dbg.git <br />
> cd easy-progtest-dbg/ <br />
> sudo ./uninstall.sh <br />

This will remove all created files except program congifs (.dbgconf files) <br />

> $ Successfully uninstalled! <br />

Now you have uninstalled it!

## [USAGE] <br />
  How to use:
  ### Testing <br />
Go to directory where your main is, it is not necessary but it is recommanded, run the program with <br/>
> dbg -t <br />

This will test your program with sample data, which you have downloaded from progtest, you have to type in the directory where samples are and than where your program binary is. <br/>
When you are done, dbg will check it! <br/>
  ### Creating datasets <br />
> dbg -c <br />

This will start creating datasets with higher numbers, for example, if your dataset number was 0001, it will create 0002, <br/>
next it will open editor which you have specified and is located in /home/user/.dbguserconf, you can change it anytime, <br/>
but make sure that editor that you typed in exist! <br/>
Next you type in _in data and then close editor _out data file will automatically be created, you can type them in too. <br/>
If everything is OK, you can exit or start over again and create another dataset. <br/>
  ### Removing datasets <br />
> dbg -r <br />

This command will remove dataset which you can specify with number, if dataset name is 0002 you can type just 2, it will remove output too. <br/> 
 ### Help <br />
 > dbg -h <br />



  
