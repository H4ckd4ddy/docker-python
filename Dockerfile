FROM python:3

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]