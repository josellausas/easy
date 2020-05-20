FROM openresty/openresty:alpine
RUN apk add --update lua5.1 lua5.1-dev luarocks alpine-sdk openssl openssl-dev
RUN USER=root /usr/bin/luarocks-5.1 install moonscript
RUN USER=root /usr/bin/luarocks-5.1 install luaossl
RUN USER=root /usr/bin/luarocks-5.1 install lpeg
RUN USER=root /usr/bin/luarocks-5.1 install busted
RUN USER=root /usr/bin/luarocks-5.1 install lapis
COPY . ./code
EXPOSE 8080
WORKDIR /code
RUN busted
CMD ["lua", "main.lua"]

