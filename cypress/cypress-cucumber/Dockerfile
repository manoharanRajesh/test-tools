FROM cypress/browsers:chrome69

RUN npm i cypress

RUN mkdir cypress-test && cd cypress-test && npm init -y && npm install  cypress --save-dev && npm install cypress-cucumber-preprocessor --save-dev
COPY cypress /cypress-test/cypress
COPY cypress.json /cypress-test/cypress.json

WORKDIR cypress-test

RUN $(npm bin)/cypress verify
