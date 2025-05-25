FROM node:14
RUN apt-get update && apt-get install -y python3.8 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
