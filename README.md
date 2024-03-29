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
- Modify the following files according to your specs:
  - `config.php`
  - `dl.xml`
  - `faq.xml`
  - `launcher.ini`
  - `servers.xml`
- Change the images:
  - `logo.jpg`
  - `logo.png`
  - `favicon.ico`
- Execute `podman-compose up` in the project folder
- See the page at http://localhost:3000

### Port 80 for `launcher.ini`

- Make sure to run `docker` or `podman` in rootful mode
- Uncomment `network_mode` in `docker-compose.yaml`
- Comment the `ports` section
- See the page at http://localhost and the http://localhost/launcher.ini

### Update configs

- Change the file contents
- Restart the container with `podman-compose restart`

## Screenshots:

![1](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/1.png) 

![2](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/2.png) 

![3](https://raw.githubusercontent.com/eti-lan/LANPage/master/_screenshots/3.png) 
