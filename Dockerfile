# get a node image
FROM node

# set the working directory
WORKDIR /app

# copy your app file (from current directory web & api) to /app
COPY . /app

# expose 9090 (web) and 9090 (api/) ports
EXPOSE 9030
EXPOSE 9090

# run both web and api servers
CMD node /app/web/server.js & node /app/api/server.js
