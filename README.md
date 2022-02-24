# CSE-216-Crunchyroll
<b>Crunchyroll</b> is our project for the course CSE-216. This is focused on streaming anime and manga to the viewers.

The project schema can be viewed via link below:

[<b>Crunchyroll Schema</b>](https://docs.google.com/document/d/1PXGCwCeDjs_CD-UtwFe52fSDm85rgJA2DV3FygogEZk/edit?usp=sharing)

ERD of our project can be viewed here:

[<b>Crunchyroll ERD</b>](https://lucid.app/lucidchart/3470152d-5207-49bb-af43-06c1761f9f6e/edit?invitationId=inv_76c4fda7-da26-4f32-bbe2-ef8562c6bf73)

A brief screenshot is given below:

![Project ERD (1)](https://user-images.githubusercontent.com/54764108/155218861-4f5c3b99-b679-4874-a880-e629fcffc4d6.png)

A video demonstration of our work can be viewed in the following link:

[<b>Crunchyroll Video Demo</b>](https://drive.google.com/file/d/1UQL_5p9-Y2KENPVskRUkkoJvDP09V_Y5/view?usp=sharing)



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

###
### SQL execution
  We are using oracle as our database. In the Navicat GUI, we open a connection with our database user and related password. Then we select 
  our schema and right click it. After that, we select the option <i>Execute SQL file</i> and mention the file path of <b>HR.sql</b>. This will 
  import all the data and tables.<br/><br/>
  ![Screenshot (16)](https://user-images.githubusercontent.com/53638835/155565720-dc3343d4-a70e-42e4-ae82-2aedffad15d8.png)


---
## Clone Project

    $ git clone https://github.com/Abdus-Samee/CSE-216-Crunchyroll.git
    $ cd CSE-216-Crunchyroll
    $ yarn install
## Crunchyroll Server
  As our project includes large video and pdf files as a source folder of server, these files were not pushed in the Git, in order to recreate the project the "public" folder can be manually downloaded from the following drive link:

  [<b>Crunchyroll-Server\public</b>](https://drive.google.com/drive/folders/1DLrVnv2DGebpbS3r6l7oNRJXT8tkcv6_?usp=sharing)

  In the terminal, the following command will run the server
  
    $ cd crunchyroll-server
    $ yarn install
 
 This will download all the necessary packages required to run the server. Next run the following command.
 
    $ yarn start
    
  However, it should generate an error for failing to locate a specific module,<br/><br/>
  ![image](https://user-images.githubusercontent.com/54764108/155105424-aef68509-cd76-48a6-94e2-825ec0775f78.png)

  Therefore it is required to install Oracle instant Client, which can be found in the this
  [Link](https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html)
  
  From there, it is required to download basic package zip and extract in the local computer.<br/><br/>
  ![image](https://user-images.githubusercontent.com/54764108/155106476-637e4e60-a5f8-44d0-9074-cbfe9a9df592.png)
  
  After extracting, the file path of the downloaded folder is to be saved or copied.<br/><br/>
  ![image](https://user-images.githubusercontent.com/54764108/155106895-290a995c-fb1d-4576-bbc7-a2fc004d902c.png)
  
  Now, back to Crunchyroll-Server source file in the IDE, in the connection\query.js, search for the line with the keyword "oracledb.initOracleClient" and update the file path according to your own file path from earlier like below:<br/><br/>
  ![image](https://user-images.githubusercontent.com/54764108/155107862-6f5a206e-e069-41f6-80e0-afebedcd68f3.png)<br/><br/>
  Notice that, the file path string should now also include double blackslashes like the image above.
  
  One last thing to do is checking the connection string inside <i>query</i> function of <i>repository</i> class of <b>connection/query.js</b>. Our schema was developed inside the hr schema. Provide the username and relevant password of your database user.<br/><br/>
  ![gg](https://user-images.githubusercontent.com/53638835/155561753-7290ab13-38b2-4e3c-8c66-08562fa58af8.PNG)

  
  Now running the following command again should run the server.

     $ yarn start


## Crunchyroll Client
  The client part should have its own modules and packages required to run including react scripts. So, in another terminal run the folowing commands:

    $ cd crunchyroll-client
    $ yarn install
    
  This should download all the required packages. It may take some time. Then running followiing command should open up the react app.
 
    $ yarn start
    

