const utils = require('./lib/utils.js')


utils.generateStamp("/workdir/jetson-flash-artifacts/Linux_for_Tegra").then( () => {
  console.log('okay this is done...');
});