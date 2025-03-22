# Implement Cucumber in Cypress 

## 1. Initialize node project and install cypress 

```
npm init -y
npm install cypress --save-dev
npm install prettier --save-dev
npx cypress open
```

## 2. Install packages

```javascript
npm install @badeball/cypress-cucumber-preprocessor --save-dev
npm install @bahmutov/cypress-esbuild-preprocessor --save-dev  // Bundle Cypress specs using esbuild - to increase performance
```

## 3. Create file .prettierrc

```javascript
{   
    "semi": false,
    "singleQuote":  true,
    "useTabs": true,
    "tabWidth": 4
}
```

## 4. Update cypress configs

`cypress.config.js`

```javascript
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

    specPattern: "cypress/e2e/feature/**/*.feature",
    env: {
      stepDefinitions: "cypress/e2e/step_definitions/**/*.js",
    },
  },
});

```
