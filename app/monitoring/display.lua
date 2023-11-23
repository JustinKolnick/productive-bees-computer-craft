package.path = package.path .. ';../services/?.lua;'

local colonyBuilder = require('colonyBuilder')

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

function createPods(table)
    function createPod(pod)

        function getBeeCount(pod)
            totalCount = 0

            for _, v in pairs(pod) do
                for _ in pairs(v["Bees"]) do
                    totalCount = totalCount + 1
                end
            end
            
            return totalCount
        end
        
        function getTotalHealth(pod)
            totalHealth = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalHealth = totalHealth + v["Health"]
                end
            end
            
            return totalHealth
        end

        function getTotalEndurance(pod)
            totalEndurance = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalEndurance = totalEndurance + v["Endurance"]
                end
            end
            
            return totalEndurance
        end

        function getTotalProductivity(pod)
            totalProductivity = 0

            for k, v in pairs(pod) do
                for k, v in pairs(v["Bees"]) do
                    totalProductivity = totalProductivity + v["Endurance"]
                end
            end
            
            return totalProductivity
        end
        
        
        return {
            name = "Oily Bees",
            beeCount = getBeeCount(pod),
            totalHealth = getTotalHealth(pod),
            totalEndurance = getTotalEndurance(pod),
            totalProductivity = getTotalProductivity(pod),
        }
    end
    
    return createPod(table["Floor1"]["Pod4"])
end

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

function longestString(strs)
    local maxLen = 0
    local longestStr = ""
    for k, v in ipairs(strs) do
        if string.len(v) > maxLen then
            maxLen = string.len(v)
            longestStr = v
        end
    end
    return longestStr, maxLen
end

function init()
    -- loop infinitely, checking for messages

    monitor = peripheral.find("monitor")
    -- set dimensions and stuff

    while true do
        print("waiting for message...")
        local id, table = rednet.receive()
        print("refreshing display...")

        local keyset={}
        local n=0

        for k,v in pairs(table) do
            n=n+1
            keyset[n]=k
        end
        monitor.setBackgroundColor(colors.lightGray)
        monitor.clear()
        
        local w, h = monitor.getSize()
        monitor.setTextScale(0.9)
        monitor.setCursorPos(1, 1)

        monitor.setBackgroundColor(colors.black)
        
        local c = colonyBuilder.build(table)
        local name = c[1][1]:getName()
        local health = "Health: " .. c[1][1]:getTotalHealth()
        local endur = "End: " .. c[1][1]:getTotalEndurance()
        local produc = "Prod: " .. c[1][1]:getTotalProductivity()
        local _, length = longestString({name, health, endur, produc})

        monitor.write(name)
        monitor.setCursorPos(1, 2)
        monitor.write(health)
        monitor.setCursorPos(1, 3)
        monitor.write(endur)
        monitor.setCursorPos(1, 4)
        monitor.write(produc)
    end
end

init()

-- function test()
--     local c = colonyBuilder.build(stored)
--     print(c[1][1]:getName()) -- still fails sometimes because we don't always get a hive with bees, need to fix missing key
-- end


-- test()
