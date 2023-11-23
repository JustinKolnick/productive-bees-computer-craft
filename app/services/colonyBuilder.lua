local colonyBuilder = {}

package.path = package.path .. ';../models/?.lua;'

require('bee')
require('hive')
require('pod')

local stored = {
    Floor1 = {
      Pod7 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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
      Pod3 = {
        Hive4 = {
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        Hive2 = {
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
        Hive5 = {
          Upgrades = {
            Gamma = {
              Name = "Gamma",
              Count = 1,
            },
          },
        },
        Hive1 = {
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
        Hive3 = {
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
      },
      Pod6 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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
      Pod1 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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
      },
      Pod4 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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
      },
      Pod5 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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
      },
      Pod2 = {
        Hive4 = {
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
        Hive2 = {
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
        Hive5 = {
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
        Hive1 = {
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
        Hive3 = {
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


function colonyBuilder.build()
    local colony = {}

    for k1, v1 in pairs(stored) do -- loop over floors
        local pods = {}
    
        for k2, v2 in pairs(v1) do -- loop over pods
            local hives = {}
    
            for k3, v3 in pairs(v2) do -- loop over hives
                local bees = {}
                
                if v3["Bees"] ~= nil then -- key Bees could not exist! TODO should change this to an empty table instead of a non-existant key
                    for k4, v4 in pairs(v3["Bees"]) do -- loop over bees
                        local b = Bee.new(v4)
                        table.insert(bees, b)
                    end
                end

                local h = Hive.new({
                    bees = bees,
                    upgrades = {},
                })
    
                table.insert(hives, h)
            end
    
            local p = Pod.new({
                hives = hives,
            })
                
            table.insert(pods, p)
        end
    
        table.insert(colony, pods)
    end
    return colony
end

return colonyBuilder



--print(tprint(colony))

-- local hives = {}

-- for k, v in pairs(stored.Bees) do
--     table.insert(bees, Bee.new(v))
-- end

-- local pod1 = Pod.new({
--     hives = {},
--     hiveCount = 5,
--     totalHealth = 2,
--     totalProductivity = 3,
--     totalEndurance = 4,
-- })

-- print(pod1.totalHealth)