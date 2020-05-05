#!/usr/bin/env bash

newman run postman/showcase/Gravitee.io-Showcase-Create.View.json -e postman/env/Gravitee.io-Localhost-Environment.json -d postman/showcase/views.json --bail;
for f in postman/test/*;do if [[ -f $f ]]; then newman run $f -e postman/env/Gravitee.io-Localhost-Environment.json --bail; fi; done;
