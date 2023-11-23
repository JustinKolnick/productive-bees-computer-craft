require('bee')
require('hive')
require('pod')

local stored = {
    Floor1 = {
      [ "Pod 7" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Zirconium Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 6" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Nickel Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 2" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 7,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 0,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 7,
              Productivity = 2,
              Name = "Emerald Bee",
              Endurance = 0,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 1" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
            Block = {
              Name = "Block",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
            Block = {
              Name = "Block",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Block = {
              Name = "Block",
              Count = 1,
            },
            Alpha = {
              Name = "Alpha",
              Count = 1,
            },
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 7,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 0,
            },
            {
              Health = 7,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 0,
            },
            {
              Health = 7,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 0,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 7,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 0,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
            Block = {
              Name = "Block",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 2,
            },
            {
              Health = 7,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 0,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Oily Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
            Block = {
              Name = "Block",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 4" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 2,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Electrum Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 2,
              Name = "Electrum Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 5" ] = {
        [ "Hive 5" ] = {
          Bees = {
            {
              Health = 10,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            {
              Health = 10,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 10,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 10,
              Productivity = 0,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 10,
              Productivity = 0,
              Name = "Tungsten Bee",
              Endurance = 1,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 1,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 0,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Tungsten Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Simulator = {
              Name = "Simulator",
              Count = 1,
            },
          },
        },
      },
      [ "Pod 3" ] = {
        [ "Hive 5" ] = {
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 3" ] = {
          Bees = {
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 2" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 1,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 1,
              Name = "Lead Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 4" ] = {
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        [ "Hive 1" ] = {
          Bees = {
            {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
            {
              Health = 15,
              Productivity = 2,
              Name = "Lead Bee",
              Endurance = 2,
            },
            [ 0 ] = {
              Health = 15,
              Productivity = 1,
              Name = "Lead Bee",
              Endurance = 2,
            },
          },
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
      },
    },
}

function tprint (tbl, indent)
    if not indent then indent = 0 end
    local toprint = string.rep(" ", indent) .. "{\r\n"
    indent = indent + 2 
    for k, v in pairs(tbl) do
      toprint = toprint .. string.rep(" ", indent)
      if (type(k) == "number") then
        toprint = toprint .. "[" .. k .. "] = "
      elseif (type(k) == "string") then
        toprint = toprint  .. k ..  "= "   
      end
      if (type(v) == "number") then
        toprint = toprint .. v .. ",\r\n"
      elseif (type(v) == "string") then
        toprint = toprint .. "\"" .. v .. "\",\r\n"
      elseif (type(v) == "table") then
        toprint = toprint .. tprint(v, indent + 2) .. ",\r\n"
      else
        toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
      end
    end
    toprint = toprint .. string.rep(" ", indent-2) .. "}"
    return toprint
end
  

local bees = {}

for k, v in pairs(stored.Bees) do
    table.insert(bees, Bee.new(v))
end

--print(tprint(bees))

local hives = {}

for k, v in pairs(stored.Bees) do
    table.insert(bees, Bee.new(v))
end

local pod1 = Pod.new({
    hives = {},
    hiveCount = 5,
    totalHealth = 2,
    totalProductivity = 3,
    totalEndurance = 4,
})

print(pod1.totalHealth)