// Generated by CoffeeScript 1.4.0
(function() {
  var services;

  services = JSON.parse(process.env.VCAP_SERVICES);

  module.exports = {
    ifttt: {
      user: process.env.IFTTT_API_USER,
      password: process.env.IFTTT_API_PASSWORD
    },
    mongodb: {
      url: services['mongodb-1.8'][0]['credentials'].url
    },
    server: [process.env.VCAP_APP_PORT]
  };

}).call(this);
