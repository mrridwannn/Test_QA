const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const { createEsbuildPlugin } = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
  e2e: {
    defaultCommandTimeout: 5000,
    failOnStatusCode: false,
    testIsolation: false,
    chromeWebSecurity: false,

    async setupNodeEvents(on, config) {
      await preprocessor.addCucumberPreprocessorPlugin(on, config);
      on("file:preprocessor", createBundler({ plugins: [createEsbuildPlugin(config)] }));
      return config;
    },

    specPattern: "cypress/e2e/feature/*.feature",
    env: {
      stepDefinitions: "cypress/e2e/step_definitions/*.js",
    },
  },
});
