# docker-reveal.js

This is a simple docker image of [httpd:alpine](https://hub.docker.com/_/httpd) expanded to clone [reveal.js](https://github.com/hakimel/reveal.js/).

## Installation

To start using it, just pull the image from [Docker Hub](https://hub.docker.com/r/andrequeiroz/docker-reveal.js):

```
docker pull andrequeiroz/docker-reveal.js:latest
```

Otherwise, the image can be built from the Dockerfile by cloning the repository and executing:
```
git clone https://github.com/andrequeiroz/docker-reveal.js.git
cd docker-reveal.js
docker build . -t andrequeiroz/reveal.js:latest
```

## Usage

A container can be started by executing the following command on the development directory:
```
docker run -ditP --volume `pwd`:/tmp/ --workdir `pwd` --name container_name andrequeiroz/reveal.js:latest
```

Put the **index.html** file on the development directory and create inside of it a directory called **resources**. It can be used to save any file or directory needed by the presentation.

## Debug

To debug anything or maybe just get inside the container, execute:
```
docker exec -it container_name bash
```

# reveal.js license

Copyright (C) 2018 Hakim El Hattab, http://hakim.se, and reveal.js contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
