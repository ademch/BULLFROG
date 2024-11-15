FROM alpine AS build
RUN apk add --no-cache build-base automake autoconf
WORKDIR /home/optima
COPY . .
RUN ./configure
RUN make

FROM alpine
COPY --from=build /home/optima/aztec /usr/local/bin/aztec
ENTRYPOINT ["/usr/local/bin/aztec"]

