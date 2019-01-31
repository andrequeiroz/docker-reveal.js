FROM httpd:alpine

RUN apk add --no-cache --virtual .git git && \
    # clone reveal.js
    git clone https://github.com/hakimel/reveal.js.git /tmp/reveal.js && \
    # clean and set up apache directory
    rm -rf /usr/local/apache2/htdocs/* && \
    cp -r /tmp/reveal.js/* /usr/local/apache2/htdocs/ && \
    rm -rf /usr/local/apache2/htdocs/index.html && \
    ln -s /tmp/index.html /usr/local/apache2/htdocs/index.html && \
    ln -s /tmp/resources /usr/local/apache2/htdocs/resources && \
    # clean
    rm -rf /tmp/reveal.js && \
    apk del .git
