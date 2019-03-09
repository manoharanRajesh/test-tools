FROM cypress/browsers:chrome69

ENV npm_config_loglevel=warn

RUN npm install cypress -g

RUN mkdir test && cd test && npm init -y && npm install  cypress --save-dev && npm install cypress-cucumber-preprocessor --save-dev &&
COPY src/cypress /test/cypress
COPY src/cypress.json /test/cypress.json
WORKDIR /test

RUN node_modules/.bin/cypress verify
RUN node_modules/.bin/cypress --version

CMD ["node_modules/.bin/cypress", "run"]
