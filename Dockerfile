FROM maven:3.6-jdk-11

RUN set -ex && \
        wget -O /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
        chmod +x /usr/bin/lein

RUN sh -c "echo '(quit)' | lein repl"

CMD ["lein", "repl"]