FROM alpine:3.10

ADD assets/ /tmp/assets/ 

RUN echo '[INFO] Configure environment' && \
        /tmp/assets/sbin/install.sh 3.1.1

        
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
