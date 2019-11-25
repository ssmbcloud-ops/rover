#!/bin/bash

docker run -i --rm -v $(pwd)/.azure:/root/.azure -v ${HOME}/.terraform.d:/root/.terraform.d caf_rover $@
