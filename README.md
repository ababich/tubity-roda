# Tubity in Ruby (2.3) with Roda

## Installation

1. Checkout

2. Install Docker with Compose and Machine (https://www.docker.com/)

3. `$ docker-compose up`

4. find API on `docker-machine ip` port 9990

### API

You need to send JSON requests like:
```json
{
  "url": "http://some.url"
}
```

Response is shortened URL like:
```json
{
  "url": "http://some.url",
  "shorten_url": "http://localhost:3000/s4"
}
```

#### Redis keys

All used keys are namespaced with `tubity:`


## Benchmark

Use `bench-rest` (https://github.com/jeffbski/bench-rest/)

With config like this:
```js
var benchrest = require('bench-rest');

var flow = {
  main: [
    { post: 'http://docker:9990/s', json: {'url': 'http://mydata_roda_docker2_#{INDEX}'} },
  ]
};
module.exports = flow;

benchrest(flow, { iterations: 10, limit: 100})
  .on('error', function (err, ctxName) { console.error('Failed in %s with err: ', ctxName, err); })
  .on('progress', function (stats, percent, concurrent, ips) {
    console.log('Progress: %s complete', percent);
   })
  .on('end', function (stats, errorCount) {
    console.log('error count: ', errorCount);
    console.log('stats', stats);
   });
```

With single polling:
`bench-rest -c 1 -n 100000 ./tubity.js`

And concurrency:
`bench-rest -c 16 -n 100000 ./tubity.js`

## Contributors

- [ababich](https://github.com/ababich) Alexey Babich - creator, maintainer
