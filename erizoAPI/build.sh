#!/bin/bash
if hash node-waf 2>/dev/null; then
  echo 'building with node-waf'
  rm -rf build
  /usr/local/lib/node_modules/npm/bin/node-gyp-bin/node-gyp configure build
else
  echo 'building with node-gyp'
  /usr/local/lib/node_modules/npm/bin/node-gyp-bin/node-gyp rebuild
fi
