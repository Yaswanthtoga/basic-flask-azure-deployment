# Basic Flask Application In Azure Web App Deployment
Description : `It's a very simple RestApi which contains 2 routes`

### Project Local Setup 
```
Requirements :
1) Python and Git Installed
2) Any IDE, VS Code Recommended
3) If you are using windows, try to install a WSL Linux Box or any Linux based virtual box.
4) If you don't want to install any VM mentioned in [3], just try install a zsh or sh based terminals like "hyper" .
```
##### Clone the project <br>
`git clone https://github.com/Yaswanthtoga/basic-flask-azure-deployment.git flaskapp`<br>
`cd flaskapp`

##### Run the script for flask setup & application running
`./projectsetup.sh` <br>
###### Note : If you got any permission error, while executing the scripts do update the file permission -> `chmod +x projectsetup.sh`

### Azure Setup
```
Requirements :
1) Create an azure account, azure provides free tier if you want to have a basic setup.
2) Install Azure CLI locally on your machine.
```
##### Azure Resource Creation and Initial Deployment
`./azure.sh` <br>
###### Note : If you got any permission error, while executing the scripts do update the file permission -> `chmod +x azure.sh`

### Accesing the application
###### You can see the domain url provided in the azure portal in the web app resource. <br>

