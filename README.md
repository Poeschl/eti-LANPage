# LANPage

![Logo](https://github.com/eti-lan/LANPage/blob/master/assets/lan_page.png?raw=true)

A simple website template for your LAN Party that integrates with LAN Launcher.
The [original project](https://github.com/eti-lan/LANPage) just gets packed into a container for use with `podman` or `docker`.

## Features

* Simple container to start
* Entry point for your LAN party event
* Can be set up quickly and requires no maintenance
* Designed to always work, even if it is only used once a year
* Offer downloads for the participants
* Show a server list (offline/online)
* Various statistic features via the LAN Launcher

## Things required

* Working docker or podman environment

## Installation recommendation

- Look at the docker-compose file in the `deploy` folder and modify it according to your needs
- Modify the files in the config folder according to your specs:
  - `config.php`
  - `dl.xml`
  - `faq.xml`
  - `launcher.ini`
  - `servers.xml`
  - `logo.jpg`
  - `logo.png`
  - `favicon.ico`
- Execute `podman-compose up` in the `deploy` folder
- See the page at http://localhost:3000

### Port 80 for `launcher.ini`

- Make sure to run `docker` or `podman` in rootful mode
- Uncomment `network_mode` in `docker-compose.yaml`
- Comment the `ports` section
- See the page at http://localhost and the http://localhost/launcher.ini

### Update configs

- Change the file contents
- Restart the container with `podman-compose restart`
