FROM redis

RUN mkdir -p /usr/local/etc/redis

COPY ./redis.conf /usr/local/etc/redis/

CMD ["redis-server"]
