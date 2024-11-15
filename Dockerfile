FROM alpine
WORKDIR /home/optima
COPY ./aztec .
RUN apk add libstdc++
RUN apk add libc6-compat
ENTRYPOINT ["./aztec"]

