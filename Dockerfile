FROM openresty/openresty:alpine
RUN apk add --update lua5.1 lua5.1-dev luarocks alpine-sdk openssl openssl-dev bash
RUN USER=root /usr/bin/luarocks-5.1 install luaossl
RUN USER=root /usr/bin/luarocks-5.1 install luasec
RUN USER=root /usr/bin/luarocks-5.1 install lpeg
RUN USER=root /usr/bin/luarocks-5.1 install lapis
COPY . ./code
EXPOSE 8080
WORKDIR /code
RUN USER=root /code/install_rocks.sh docker
RUN busted
CMD ["lua", "main.lua"]
