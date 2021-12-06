# Packup tool for pearOS
backup your files and folders from the home directory and keep them safe. Made for using in pearOS and NiceC0re based systems.
# TODO: Backend of the app. Currently it's just the UI in gambas3

## Screenshots :)
![Nice Screenshot](Screenshots/packup.png)


## Dependencies

   - install gambas3 package
   ```sh
   $ sudo apt-get install gambas3 -y
   ```

## Installation steps
 - From Source:

   - clone the project
   ```sh
   git clone https://github.com/alxb421/packup.git
   ```
   - Open gambas3 application (from terminal `$ gambas3`, or from application dashboard, search for gambas3)
   - Click `Open`
   - Navigate to cloned folder, and open the project
   - Click on `Project` > `Make` > `executable`
   - copy the new executable in the `/usr/bin` folder of your Linux machine
   ```sh
   $ sudo mv <path to your generated .gambas file> /usr/bin/packup
   ```
   - Enjoy :p

 - From Package:
   - Download the .deb package from `Releases` tab here, in GitHub
   - Install using gdebi/ dpkg
   ```sh
   $ sudo dpkg -i <path to downloaded deb file, or drag and drop>
   ```
   
   ## Usage
   - From Terminal:
     - Open a terminal and type `packup`
   - From Application Daskboard:
     - Search for `Packup Tool` in the Applications Dashboard

  ## Copyright
   - UI and ffrontend of app  made by Alexandru Balan
   - Icon/ some assets made by Andrei Muntean
   - Backend is coming soon
