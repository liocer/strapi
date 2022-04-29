FROM node:16-alpine
RUN apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/
COPY ./fetch.sh .
ENV PATH /opt/node_modules/.bin:$PATH
WORKDIR /opt/app/
EXPOSE 1337
CMD /opt/fetch.sh
