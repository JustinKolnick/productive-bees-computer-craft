local bridge = peripheral.find("meBridge")

items = {
    --{name="productivebees:expansion_box_oak", count=10},
    --{name="productivebees:advanced_oak_beehive", count=10},
    --{name="productivebees:upgrade_productivity_4", count=10},
    {name="productivebees:feeder", count=10},
    --{name="xnet:connector_red", count=10},
    --{name="xnet:netcable_red", count=2},
    --{name="minecraft:stone_bricks", count=46}
}

function craftAndFetchItem(bridge, name, count)
    bridge.craftItem({name=name, count=count})
    bridge.exportItem({name=name, count=count}, "down")
end

for index, item in items do
    craftAndFetchItem(bridge, item["name"], item["count"])
end

bridge.craftItem({name="productivebees:feeder", count=2})

bridge.exportItem({name="productivebees:feeder", count=2}, "down")