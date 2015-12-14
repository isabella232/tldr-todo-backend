A Hapi To Do Backend
====================
This is an example implementation of a [Todo-Backend API](http://todobackend.com/) spec using the Hapi.js framework.

This example saves todos in a MongoDB collection. 

[Run the specs](http://www.todobackend.com/specs/index.html?http://hapi-todo.herokuapp.com)!
[Demo](http://www.todobackend.com/client/index.html?https://hapi-todo.herokuapp.com/)!

Pre-requisites
==============
The following are necessary to run the application:

- Docker Toolbox 1.9, with Docker-machine and Docker-compose
- Node.js (4.x or 5.x recommended)

Building the container
======================

In order to build the container, first install the needed NPM dependencies for the Node.js backend:

```
npm install
```

Then, create a Docker node with docker-machine:

```
docker-machine create -d virtualbox dev
eval $(docker-machine env dev)

Finally, build the container:

```
docker build -t backend .
```

Running with MongoDB
====================
There's a ready-made Compose file available that will run the application together with Mongo:

```
docker-compose up
```

Accessing the application
=========================
Run the following command to obtain the IP address of the docker-machine host:

```
docker-machine ip dev
```

Then, point the application to port 8080 of the given IP address.