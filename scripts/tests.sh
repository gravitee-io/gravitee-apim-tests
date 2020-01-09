#!/usr/bin/env bash

for f in postman/test/*;do if [[ -f $f ]]; then newman run $f -e postman/env/Gravitee.io-Localhost-Environment.json --bail; fi; done;
