#!/usr/bin/env bash
kill -9 $(ps aux | grep runcherrypyserver | grep -v grep | awk '{print $2}')
