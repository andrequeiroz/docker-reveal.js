FROM andrequeiroz/docker-reveal.js:latest

RUN apk add --no-cache --virtual .git git && \
    # clone reveal.js-d3
    git clone https://github.com/gcalmettes/reveal.js-d3 /tmp/reveal.js-d3 && \
    # set up plugin
    cp -r /tmp/reveal.js-d3/reveald3.js /usr/local/apache2/htdocs/ && \
    wget https://d3js.org/d3.v5.min.js -P /usr/local/apache2/htdocs && \
    # clean
    rm -rf /tmp/reveal.js-d3 && \
    apk del .git
