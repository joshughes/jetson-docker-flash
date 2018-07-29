#!/bin/bash
cp -r /cache/Linux_for_Tegra /workdir/jetson-flash-artifacts/ || exit 1

node hash.js

ls -la /workdir/jetson-flash-artifacts/

echo "Starting stamp...."
cat /workdir/jetson-flash-artifacts/Linux_for_Tegra.stamp

bin/cmd.js -p -o /workdir -f $1