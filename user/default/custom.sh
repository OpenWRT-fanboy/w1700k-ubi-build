#!/bin/bash
echo "=============================================="
echo "Running custom commands"
mv files/overview.js feeds/luci/applications/luci-app-attendedsysupgrade/htdocs/luci-static/resources/view/attendedsysupgrade/overview.js
cp -r files/luci-app-w1700k-fancontrol feeds/luci/applications/
rm -rf files/luci-app-w1700k-fancontrol
./scripts/feeds update luci
./scripts/feeds install luci-app-w1700k-fancontrol
rm -rf tmp/*
echo "=============================================="
