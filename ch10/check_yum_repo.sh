#/src/bin/env bash
find /etc/yum.repos.d/ -name *.repo -exec grep -B 3 "enabled = 1" {} \; \
| grep "name"
