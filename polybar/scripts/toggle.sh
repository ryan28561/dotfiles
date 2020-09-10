#!/bin/bash

[[ "$(mpc status | sed -nr 's/.*\[(\w+)\].*/\1/p')" == "playing" ]] && echo "" || echo ""
