#!/bin/bash

cp -r /cache/Linux_for_Tegra /workdir/jetson-flash-artifacts/ || exit 1
cp /cache/Linux_for_Tegra.stamp /workdir/jetson-flash-artifacts/Linux_for_Tegra.stamp || exit 1

bin/cmd.js -p -o /workdir -f $1