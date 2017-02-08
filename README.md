# docker-qr-generator

Hey hey!

Ever want a Docker container that builds QR codes and then goes away? Well then, here you go. :)

## Initial Features

* Pull a the image down from [Docker Hub](https://hub.docker.com/r/valien/docker-qrcode-generator/)
* Run the following command to spin up a container to automagically create a QR code for you:

    `docker run -v /<WHERE YOU WANT TO SAVE YOUR QR FILES/qr:/qr -e QR_TEXT='I LOVE DOCKER!' -e QR_FILE=QRFileName.png --rm valien/docker-qrcode-generator`
* It should process and save the QR code in your mounted volume, exit, and delete the container.
* Another option is you can make the container interactive: 
    
    '`docker run -it --entrypoint=/bin/sh -v /<WHERE YOU WANT TO SAVE YOUR QR FILES/qr:/qr -e QR_TEXT='I LOVE DOCKER!' -e QR_FILE=QRFileName.png --rm valien/docker-qrcode-generator`

    The manually run the QR program: 
    
    `qr "YOUR URL OR TEXT" > <filename>.png`

* Full source availabel on [Git Hub](https://github.com/Valien/docker-qr-generator)
* Uses Alpine as base image and Python [qrcode 5.3](https://pypi.python.org/pypi/qrcode) for QR generation.
* Got a suggestion or bug? Submit a pull request or shoot me an email!
