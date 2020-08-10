const translate = require("@vitalets/google-translate-api");
  translate({text: "Happy Birthday!", opts: {to: 'zh'}}).then( res => {
    console.log(res.text);
  });