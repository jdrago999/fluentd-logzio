#!/bin/bash

set -euox pipefail

fluentd -c $(pwd)/fluent.conf -p /fluentd/plugins
