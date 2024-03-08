# Dockerfile

FROM node:16.20-buster-slim
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node package*.json ./
USER node
ENV REACT_APP_ORIGIN ${REACT_APP_ORIGIN:-'http://localhost:3000'}
RUN npm install
COPY --chown=node:node . .
EXPOSE 8080

CMD [ "node", "index.js" ] 

