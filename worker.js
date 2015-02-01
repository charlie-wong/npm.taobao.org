var config = require('./config');
var mkdirp = require('mkdirp');
mkdirp.sync(config.logdir);
mkdirp.sync(config.uploadDir);

require('cnpmjs.org').startWorker(config);
