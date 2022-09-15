# Inception

This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine.

# Mandatory part

This project will consist of having you set up a mini-infrastructure of different
services by following specific rules. The entirety of this project is to be carried out in a
virtual machine. To do this, you will have to use docker-compose.
Each Docker image must have the same name as the service
concerned.
Each service must run in a dedicated container.
For performance reasons, the containers must be built at your choice: either under
Alpine Linux with the penultimate stable version, either under Debian Buster.
Also, they will each have to have their own Dockerfile written by you. The
Dockerfiles will be called in your docker-compose.yml file by your Makefile.
You will therefore have to build the Docker images that you will use yourself. It is of course forbidden to take ready-made ones, as well as to use services such as
DockerHub (Alpine and Debian being excluded from this rule).
You will therefore have to set up:

- A Docker container containing NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container containing WordPress + php-fpm (installed and configured) only without nginx.
- A Docker container containing MariaDB only without nginx.
- A volume containing your WordPress database.
- A second volume containing your WordPress site files.
- A docker-network that will link your containers.

Your containers will have to restart in the event of a crash.
