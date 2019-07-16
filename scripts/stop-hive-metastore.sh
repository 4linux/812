#!/usr/bin/env bash
kill -9 $(jps -m | grep metastore | awk '{print $1}')
