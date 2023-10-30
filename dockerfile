# this is how to refer to the base image
FROM node:19-alpine 

# to copy files or directories to the contatiner,
# use the COPY directive
COPY package.json /app/
COPY src /app/

# much like cd, use WORKDIR to change directories to a preference
WORKDIR /app

# to run any command, use the run directive
# directives are written in all caps
RUN npm install

# as the last command in the file, 
# and also something that actually starts the process/application, instead of using RUN, use CMD
# there should always be just one CMD in a docker file
CMD ["node", "server.js"]