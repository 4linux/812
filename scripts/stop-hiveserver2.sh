#!/usr/bin/env bash
kill -9 $(jps -m | grep hiveserver2 | awk '{print $1}')
