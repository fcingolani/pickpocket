config  = require "./etc/#{process.env.NODE_ENV || 'development'}"
pickpocket = require('./lib/pickpocket')

app = pickpocket(config)
app.listen.apply app, config.server
