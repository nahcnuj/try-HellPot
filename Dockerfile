FROM scratch
ARG VERSION=0.5.2

ADD --chmod=700 https://github.com/yunginnanet/HellPot/releases/download/v${VERSION}/HellPot-v${VERSION}-linux-amd64 /HellPot

COPY config.toml /config.toml

ENTRYPOINT [ "/HellPot" ]
CMD [ "-c", "config.toml" ]
EXPOSE 8080