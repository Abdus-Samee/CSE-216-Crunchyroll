# CSE-216-Crunchyroll
<b>Crunchyroll</b> is our project for the course CSE-216. This is focused on streaming anime and manga to the viewers.


## Requirements

For development, you will only need Node.js and a node global package, Yarn, installed in your environement.

### Node
- #### Node installation on Windows

  Just go on [official Node.js website](https://nodejs.org/) and download the installer.
Also, be sure to have `git` available in your PATH, `npm` might need it (You can find git [here](https://git-scm.com/)).

If the installation was successful, you should be able to run the following command.

    $ node --version
    v8.11.3

    $ npm --version
    6.1.0

If you need to update `npm`, you can make it using `npm`! Cool right? After running the following command, just open again the command line.

    $ npm install npm -g

###
### Yarn installation
  After installing node, this project will need yarn too, so just run the following command.

      $ npm install -g yarn

---
## Install

    $ git clone https://github.com/Abdus-Samee/CSE-216-Crunchyroll.git
    $ cd CSE-216-Crunchyroll
    $ yarn install
## Crunchyroll Server
  As our project includes large video and pdf files as a source folder of server, these files were not pushed in the Git, in order to recreate the project the "public" folder can be manually downloaded from the following drive link:

  [Crunchyroll-Server\public](https://nodejs.org/)

  In the terminal, the following command will run the server
 
    $ yarn start
    
  However, it should generate an error for failing to locate a specific module,
  ![image](https://user-images.githubusercontent.com/54764108/155105424-aef68509-cd76-48a6-94e2-825ec0775f78.png)

  Therefore it is required to install Oracle instant Client, which can be found in the this 
  [Link](https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html)
  
  From there, it is required to download basic package zip and extract in the local computer.
  ![image](https://user-images.githubusercontent.com/54764108/155106476-637e4e60-a5f8-44d0-9074-cbfe9a9df592.png)
  
  After extracting, the file path of the downloaded folder is to be saved or copied.
  ![image](https://user-images.githubusercontent.com/54764108/155106895-290a995c-fb1d-4576-bbc7-a2fc004d902c.png)
  
  Now, back to Crunchyroll-Server source file in the IDE, in the connection\query.js, search for the line with the keyword "oracledb.initOracleClient" and update the file path according to your own file path from earlier like below:
  ![image](https://user-images.githubusercontent.com/54764108/155107862-6f5a206e-e069-41f6-80e0-afebedcd68f3.png)
  Notice that, the file path string should now also include double blackslashes like the image above.
  
  Now running the following command again should run the server.

     $ yarn start


## Crunchyroll Client
  The client part should have its own modules and packages required to run including react scripts. So, in another terminal run the folowing commands:

    $ cd Crunchyroll-Client
    $ yarn install
    
  This should download all the required packages. It may take some time. Then running followiing command should open up the react app.
 
    $ yarn start
    

