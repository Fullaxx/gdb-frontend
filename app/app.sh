#!/bin/bash

GFEIP=${GFEIP:-0.0.0.0}
GFEPORT=${GFEPORT:-5550}

exec gdbfrontend -l ${GFEIP} -p ${GFEPORT}
