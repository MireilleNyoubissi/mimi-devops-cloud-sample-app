# pull official base image
#FROM node:lts-alpine

# set working directory
#WORKDIR /app

# install app dependencies
#COPY package.json ./
#RUN npm install --silent

# add app
#COPY /src . 
#COPY /public .
# start app
#CMD ["npm", "start"]
#EXPOSE 3000
FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 3000