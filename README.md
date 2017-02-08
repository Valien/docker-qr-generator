# docker-qr-generator

Hey hey!

Ever want a Docker container that builds QR codes and then goes away? Well then, here you go. :)

## Initial Features

* Pull a the image down from [Docker Hub](https://hub.docker.com/r/valien/qrcode-generator/)
* Run the following command to spin up a container and shell into it:

    `docker run -it -v /<YOUR LOCAL VOLUME>:/qr --rm valien/qrcode-generator /bin/sh`

* Once in run the following to generate a QR code:
    
    `qr "YOUR URL OR TEXT" > <filename>.png`

* You can exit (container will remove itself if you left the `--rm` in the command line) and your QR code will now be on your local system as a .png file. Test it and go on your way!
* Full source availabel on [Git Hub](https://github.com/Valien/docker-qr-generator)
* Uses Alpine as base image and Python [qrcode 5.3](https://pypi.python.org/pypi/qrcode) for QR generation.

## To Do

* Add dynamic commands to container so you don't have to terminal into it (i.e. put commands on run line and get a QR code as output)