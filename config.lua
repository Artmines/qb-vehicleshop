Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(292.84, 1294.5, 15.16)-- Where the finance menu is located --NEW YORK
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(285.35433959961, 1309.0579833984),
                vector2(324.0029296875, 1309.095703125),
                vector2(325.32586669922, 1238.3487548828),
                vector2(285.2619934082, 1279.6956787109)
            },
            ['minZ'] = 14.508333206177, -- min height of the shop zone
            ['maxZ'] = 14.663636207581, -- max height of the shop zone
            ['size'] = 3.15 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Grotti Automobile', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles',
			['super'] = 'Super',			
			['sports'] = 'sports',
			['update'] = 'Update',
            ['imports'] = 'Imports',
            ['PREMIUM'] = 'Premium Imports',
            ['DONK'] = 'Donk Imports'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(300.2, 1293.39, 15.16), -- Blip Location
        ['ReturnLocation'] = vector3(325.89, 1238.75, 14.67), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(346.32, 1234.93, 14.16, 267.45), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(2955.93, 969.51, 5.42, 45.91), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(317.01, 1299.64, 14.75, 122.06), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(301.6, 1300.03, 14.75, 225.91),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(311.81, 1292.98, 14.75, 33.76),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2'
            },
            [4] = {
                coords = vector4(294.98, 1285.01, 16.27, 59.94),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(311.82, 1294.09, 19.74, 200.08),
                defaultVehicle = 't20',
                chosenVehicle = 't20'
            }
        },
    },
	['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-787.76062011719, -251.14770507812),
                vector2(-758.65466308594, -240.36799621582),
                vector2(-783.44012451172, -199.10876464844),
                vector2(-814.09832763672, -204.98635864258)
            },
            ['minZ'] = 37.043910980225,
            ['maxZ'] = 37.448444366455,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'luxury', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['imports'] = 'Imports'
		},
		['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-802.75, -223.77, 37.22),
        ['ReturnLocation'] = vector3(-760.27, -241.83, 37.25),
        ['VehicleSpawn'] = vector4(-769.76, -244.87, 37.24, 209.25),
        ['TestDriveSpawn'] = vector4(-763.64, -243.06, 37.24, 199.87), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-791.38, -218.25, 36.50, 31.85),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(-795.61, -227.79, 36.05, 141.38),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(-779.32, -218.75, 36.07, 123.0),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero'
            },
            [4] = {
                coords = vector4(-787.59, -206.71, 36.11, 113.83),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [5] = {
                coords = vector4(-803.36, -213.51, 36.11, 137.61),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
        }

    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-429.29748535156, 448.65057373047),
                vector2(-539.64898681641, 448.41912841797),
                vector2(-542.63110351562, 382.83779907227),
                vector2(-427.0133972168, 381.52963256836)
            },
            ['minZ'] = -3.6266453266144, -- min height of the shop zone
            ['maxZ'] = 1.5116572380066, -- max height of the shop zone
            ['size'] = 7.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['boats'] = 'Boats'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-454.96, 448.04, 1.51), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-442.34, 428.91, 0.18, 274.46), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-442.14, 400.4, 0.04, 272.01),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-465.2, 430.3, -0.27, 266.8),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords =vector4(-504.83, 431.79, 0.84, 269.34),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(2449.5129394531, 1192.0305175781),
                vector2(2505.923828125, 1252.5484619141),
                vector2(2463.5014648438, 1291.7078857422),
                vector2(2407.9877929688, 1227.9915771484)
            },
            ['minZ'] = 5.8082871437073, -- min height of the shop zone
            ['maxZ'] = 5.8102269172668, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['helicopters'] = 'Helicopters',
            ['planes'] = 'Planes'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(2458.34, 1224.13, 5.81), -- Blip Location
        ['ReturnLocation'] = vector3(2447.59, 1252.14, 5.81), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(2433.06, 1233.63, 6.47, 220.18), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(2940.8, 1002.85, 6.47, 45.74), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(2452.08, 1213.13, 6.49, 222.3), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(2468.6, 1231.49, 6.47, 221.77),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [3] = {
                coords = vector4(2485.08, 1250.2, 5.54, 229.78),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
}
