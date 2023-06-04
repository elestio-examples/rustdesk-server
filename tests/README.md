<a href="https://elest.io">
  <img src="https://elest.io/images/elestio.svg" alt="elest.io" width="150" height="75">
</a>

[![Discord](https://img.shields.io/static/v1.svg?logo=discord&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=Discord&message=community)](https://discord.gg/4T4JGaMYrD "Get instant assistance and engage in live discussions with both the community and team through our chat feature.")
[![Elestio examples](https://img.shields.io/static/v1.svg?logo=github&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=github&message=open%20source)](https://github.com/elestio-examples "Access the source code for all our repositories by viewing them.")
[![Blog](https://img.shields.io/static/v1.svg?color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=elest.io&message=Blog)](https://blog.elest.io "Latest news about elestio, open source software, and DevOps techniques.")

# Rustdesk-server, verified and packaged by Elestio

[RustDesk](https://rustdesk.com/) turns your server into a ready-to-go remote desktop server that works out of the box, no configuration required. You have full control of your data, with no concerns about security.

<img src="https://github.com/elestio-examples/rustdesk-server/raw/main/rustdesk-server.png" alt="rustdesk-server" width="800">

Deploy a <a target="_blank" href="https://elest.io/open-source/rustdeskserver">fully managed Rustdesk Server</a> on <a target="_blank" href="https://elest.io/">elest.io</a> if you want automated backups, reverse proxy with SSL termination, firewall, automated OS & Software updates, and a team of Linux experts and open source enthusiasts to ensure your services are always safe, and functional.

[![deploy](https://github.com/elestio-examples/rustdesk-server/raw/main/deploy-on-elestio.png)](https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/rustdesk-server)

# Why use Elestio images?

- Elestio stays in sync with updates from the original source and quickly releases new versions of this image through our automated processes.
- Elestio images provide timely access to the most recent bug fixes and features.
- Our team performs quality control checks to ensure the products we release meet our high standards.

# Usage

## Git clone

You can deploy it easily with the following command:

    git clone https://github.com/elestio-examples/rustdesk-server.git

Copy the .env file from tests folder to the project directory

    cp ./tests/.env ./.env

Edit the .env file with your own values.

Create volumes:

    mkdir -p -m 750 ./data
    chown -R 1000:1000 ./data

Run the project with the following command

    docker-compose up -d

You can read <a target="_blank" href="https://github.com/elestio-examples/rustdesk-server/blob/main/README.md">our Readme</a> to know how to use the software.

## Docker-compose

Here are some example snippets to help you get started creating a container.

    version: "3.3"

    services:
        hbbs:
            ports:
                - 21115:21115
                - 21116:21116
                - 21116:21116/udp
                - 21118:21118
            image: elestio4test/rustdesk-server:latest
            command: hbbs -r ${DOMAIN}:21117
        volumes:
            - ./data:/root
        depends_on:
            - hbbr
        restart: always

        hbbr:
            ports:
                - 21117:21117
                - 21119:21119
            image: rustdesk/rustdesk-server:latest
            command: hbbr
            volumes:
                - ./data:/root
            restart: always

### Environment variables

| Variable | Value (example) |
| :------: | :-------------: |
|  DOMAIN  |   your.domain   |

# Maintenance

## Logging

The Elestio Rustdesk-server Docker image sends the container logs to stdout. To view the logs, you can use the following command:

    docker-compose logs -f

To stop the stack you can use the following command:

    docker-compose down

## Backup and Restore with Docker Compose

To make backup and restore operations easier, we are using folder volume mounts. You can simply stop your stack with docker-compose down, then backup all the files and subfolders in the folder near the docker-compose.yml file.

Creating a ZIP Archive
For example, if you want to create a ZIP archive, navigate to the folder where you have your docker-compose.yml file and use this command:

    zip -r myarchive.zip .

Restoring from ZIP Archive
To restore from a ZIP archive, unzip the archive into the original folder using the following command:

    unzip myarchive.zip -d /path/to/original/folder

Starting Your Stack
Once your backup is complete, you can start your stack again with the following command:

    docker-compose up -d

That's it! With these simple steps, you can easily backup and restore your data volumes using Docker Compose.

# Links

- <a target="_blank" href="https://rustdesk.com/docs/en/">Rustdesk documentation</a>

- <a target="_blank" href="https://github.com/rustdesk/rustdesk-server">Rustdesk-server Github repository</a>

- <a target="_blank" href="https://github.com/elestio-examples/rustdesk-server">Elestio/Rustdesk Server Github repository</a>
