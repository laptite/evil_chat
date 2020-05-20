module.exports = {
  extends: ["eslint-config-airbnb-base", "plugin:prettier/recommended"],

  env: {
    browser: true
  },

  parser: "babel-eslint",

  settings: {
    "import/resolver": {
      webpack: {
        config: {
          resolve: {
            modules: ["frontend", "node_modules"]
          }
        }
      }
    }
  },

  rules: {
    "object-shorthand": ["error", "always", { avoidQuotes: true }]
  }
};
