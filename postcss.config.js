const cssVar = require("./frontend/config/variables");

module.exports = {
  plugins: {
    "postcss-import": {},
    "postcss-flexbugs-fixes": {},
    "postcss-mixins": {
      mixins: {
        breakpoint(mixin, device) {
          const obj = {};
          obj[`@media only screen and (min-width: ${device})`] = {
            "@mixin-content": {}
          };
          return obj;
        },
        upto_breakpoint(_mixin, device) {
          const obj = {};
          obj[`@media only screen and (max-width: calc(${device} - 1px))`] = {
            "@mixin-content": {}
          };
          return obj;
        },
        "ie11-only": function() {
          const obj = {};
          obj[
            "@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none)"
          ] = {
            "@mixin-content": {}
          };
          return obj;
        }
      }
    },
    "postcss-functions": {},
    "postcss-simple-vars": {
      variables() {
        return cssVar;
      }
    },
    "postcss-nested": {},
    "postcss-extend": {},
    "postcss-calc": { mediaQueries: true },
    "postcss-preset-env": {
      autoprefixer: {
        flexbox: "no-2009"
      },
      stage: 3
    }
  }
};
