# use nodejs docker image
FROM node:12.18.3

# create working directory
WORKDIR /app

# install node packages
COPY package*.json ./
RUN npm install

# build app
COPY . .
RUN npm run build

# expose port for this app
EXPOSE 8080

# run command to start app
CMD [ "npm", "run", "serve" ]
