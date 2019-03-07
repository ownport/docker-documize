FROM alpine:3.9

ADD assets/ /tmp/assets/ 

RUN echo '[INFO] Configure environment' && \
        /tmp/assets/sbin/install.sh 

        
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["app:start"]
