![Logo](https://github.com/eti-lan/LANPage/blob/master/assets/lan_page.png?raw=true) 
# LANPage
A simple website template for your LAN Party that integrates with LAN Launcher.

It was developed in a very simple way so that anyone with a little knowledge can customize it. A MySQL database was deliberately omitted. Everything can be configured via files. The requirements for the web server are minimal. Each feature can be switched on or off via the configuration file. Special attention is paid to the statistics function, furthermore game servers or downloads can be linked in XML format - see the sample XML files.

It should be possible to personalize the page for each event. In addition to the customizable logo, further features should be integrated. But lately this project is only an example implementation. Help to improve it or fork it for your own project.

## Features:

* Simple container to start
* Entry point for your LAN party event
* Can be set up quickly and requires no maintenance
* Designed to always work, even if it is only used once a year
* Offer downloads for the participants
* Show a server list (offline/online)
* Various statistic features via the LAN Launcher

## Things required:
* Working docker or podman environment

## Installation:
- Clone this repository
- Copy or rename `config.sample.php` to `config.php` and change values
- See the `*.sample.xml` and `launcher.sample.ini` files and modify them to match your needs (copy the sample to a file without `sample` in the name,
  `launcher.ini` for example)
- Execute `podman-compose up` in the project folder
- (Make sure that your host exposes port 80 with domain name `launcher.lan` to make the `launcher.ini` work, see `docker-compose.yaml`)

### Update configs

- Change the file contents
- Stop the running container (Ctrl + C or `podman-compose down`)
- Restart and rebuild the container `podman-compose up --build`

## Screenshots:

![1](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/1.png) 

![2](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/2.png) 

![3](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/3.png) 
