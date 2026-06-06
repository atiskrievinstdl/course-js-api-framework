FROM node:17
LABEL DESCRIPTION="Docker image for api tests"

WORKDIR /api-tests
COPY package.json package.json
COPY config.js config.js
COPY tests tests

RUN npm install

CMD [ "run", "BOOKS", "BOOKS_LOCAL" ]
ENTRYPOINT [ "npm" ]
 
