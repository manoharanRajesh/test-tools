#!/usr/bin/env bash
mvn clean compile -Prun
mvn mafia:content -Prun
mvn mafia:start -Prun -X