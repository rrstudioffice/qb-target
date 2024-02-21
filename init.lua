local QBCore = exports['qb-core']:GetCoreObject()

function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = true

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = true

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = { 255, 255, 255, 255 }

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
-- Config.SuccessDrawColor = { 220, 20, 60, 255 }
Config.SuccessDrawColor = { 30, 144, 255, 255 }

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = { 255, 255, 255, 255 }

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-- Whether to disable ALL controls or only specificed ones
Config.DisableControls = true

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
	["bincoClothing1"] = {
		name = "bincoClothing1",
		coords = vector3(429.91, -801.35, 29.49),
		length = 1,
		width = 6,
		heading = 90,
		debugPoly = false,
		minZ = 29,
		maxZ = 30,
		options = nil,
		distance = 3
	},
	["bincoClothing2"] = {
		name = "bincoClothing2",
		coords = vector3(72.36, -1397.9, 29.38),
		length = 6,
		width = 1,
		heading = 300,
		debugPoly = false,
		minZ = 29.08,
		maxZ = 30,
		options = nil,
		distance = 3
	},
	["bincoClothing3"] = {
		name = "bincoClothing3",
		coords = vector3(-828.37, -1073.52, 11.33),
		length = 6,
		width = 1,
		heading = 300,
		debugPoly = false,
		minZ = 11,
		maxZ = 12,
		options = nil,
		distance = 3
	},
	["bincoClothing4"] = {
		name = "bincoClothing4",
		coords = vector3(-1107.38, 2709.77, 19.11),
		length = 6,
		width = 1,
		heading = 310,
		debugPoly = false,
		minZ = 18,
		maxZ = 20,
		options = nil,
		distance = 3
	},
	["bincoClothing5"] = {
		name = "bincoClothing5",
		coords = vector3(1191.65, 2713.37, 38.22),
		length = 6,
		width = 1,
		heading = 270,
		debugPoly = false,
		minZ = 38,
		maxZ = 39,
		options = nil,
		distance = 3
	},
	["bincoClothing6"] = {
		name = "bincoClothing6",
		coords = vector3(10.66, 6513.61, 31.88),
		length = 6,
		width = 1,
		heading = 310,
		debugPoly = false,
		minZ = 31,
		maxZ = 32,
		options = nil,
		distance = 3
	},
	["bincoClothing7"] = {
		name = "bincoClothing7",
		coords = vector3(1191.35, 2713.46, 38.22),
		length = 6,
		width = 1,
		heading = 270,
		debugPoly = false,
		minZ = 37,
		maxZ = 39,
		options = nil,
		distance = 3
	},
	["suburbanCloting1"] = {
		name = "suburbanCloting1",
		coords = vector3(-1192.23, -767.84, 17.32),
		length = 6,
		width = 1,
		heading = 35,
		debugPoly = false,
		minZ = 17.02,
		maxZ = 18,
		options = nil,
		distance = 3
	},
	["suburbanCloting2"] = {
		name = "suburbanCloting2",
		coords = vector3(125.01, -224.66, 54.56),
		length = 6,
		width = 1,
		heading = 70,
		debugPoly = false,
		minZ = 54,
		maxZ = 55,
		options = nil,
		distance = 3
	},

	["ponsonbysCloting1"] = {
		name = "ponsonbysCloting1",
		coords = vector3(-705.66, -159.97, 37.42),
		length = 6,
		width = 1,
		heading = 300,
		debugPoly = false,
		minZ = 37,
		maxZ = 38,
		options = nil,
		distance = 3
	},
	["ponsonbysCloting2"] = {
		name = "ponsonbysCloting2",
		coords = vector3(-161.0, -295.35, 39.74),
		length = 6,
		width = 1,
		heading = 70,
		debugPoly = false,
		minZ = 39,
		maxZ = 41,
		options = nil,
		distance = 3
	},
	["ponsonbysCloting3"] = {
		name = "ponsonbysCloting3",
		coords = vector3(125.28, -224.41, 54.56),
		length = 6,
		width = 1,
		heading = 70,
		debugPoly = false,
		minZ = 54,
		maxZ = 55.56,
		options = nil,
		distance = 3
	},
	["ponsonbysCloting4"] = {
		name = "ponsonbysCloting4",
		coords = vector3(-1455.38, -243.54, 49.82),
		length = 6,
		width = 1,
		heading = 50,
		debugPoly = false,
		minZ = 49,
		maxZ = 51,
		options = nil,
		distance = 3
	},
	-- QB_JOBS
	["tailorStash"] = {
		name = "tailorStash",
		coords = vector3(705.0, -959.47, 30.4),
		length = 1,
		width = 2,
		heading = 0,
		debugPoly = false,
		minZ = 29.4,
		maxZ = 31.4,
		options = {
			{
				label = 'Baú do Estilista',
				-- label = Lang:t('body.storaged'),
				icon = 'fa-solid fa-box-open',
				event = 'qb-bossmenu:client:Stash',
			}
		},
		distance = 3
	},
	-- ["tailorClothing"] = {
	-- 	name = "tailorClothing",
	-- 	coords = vector3(708.97, -959.52, 30.4),
	-- 	length = 1,
	-- 	width = 2,
	-- 	heading = 270,
	-- 	debugPoly = false,
	-- 	minZ = 29.4,
	-- 	maxZ = 31.4,
	-- 	options = nil,
	-- 	distance = 3
	-- },
}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetModels = {
	['trashsearch'] = {
		models = {
			-1096777189,
			666561306,
			1437508529,
			-1426008804,
			-228596739,
			161465839,
			651101403,
			-58485588,
			218085040,
			-206690185
		},
		options = {
			{
				type = "client",
				event = "qb-trashsearch:client:searchtrash",
				icon = "fas fa-dumpster",
				label = "Mergulho na lixeira"
			},
			{
				type = "client",
				event = "qb-dumpsters:client:open:Dumpster:storage",
				icon = "far fa-trash-alt",
				label = "Abrir lixeira"
			},
		},
		distance = 3.0
	},
	['vendingWatterSoda'] = {
		models = { 
			'prop_vend_soda_01',
			'prop_vend_soda_02',
			'prop_vend_water_01'
		},
		options = {
			{
				icon = 'fa-solid fa-cash-register',
				label = 'Máquina',
				action = function()
					local CoffeeShopItems = {}
					CoffeeShopItems.label = 'Comprar'
					CoffeeShopItems.items = {
						{
							name = 'kurkakola',
							price = 4,
							amount = 50,
							info = {},
							type = 'item',
							slot = 1,
						},
						{
							name = 'water_bottle',
							price = 4,
							amount = 50,
							info = {},
							type = 'item',
							slot = 2,
						},
					}
					CoffeeShopItems.slots = 2
					TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'Vendingshop_' .. math.random(1, 99), CoffeeShopItems)
				end
			}
		},
		distance = 3.0
	},
	['vendingCoffe'] = {
		models = { 'prop_vend_coffe_01' },
		options = {
			{
				icon = 'fa-solid fa-cash-register',
				label = 'Máquina de café',
				action = function()
					local CoffeeShopItems = {}
					CoffeeShopItems.label = 'Comprar café'
					CoffeeShopItems.items = {
						{
							name = 'coffee',
							type = 'item',
							amount = 50,
							price = 1,
							info = {},
							slot = 1,
						}
					}
					CoffeeShopItems.slots = 1
					TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'Vendingcoffee_' .. math.random(1, 99), CoffeeShopItems)
				end
			}
		},
		distance = 3.0
	},
	['candybox'] = {
		models = { 'prop_vend_snak_01_tu' },
		options = {
			{
				icon = 'fa-solid fa-cash-register',
				label = 'Máquina de doces',
				action = function()
					local CandyShopItems = {}
					CandyShopItems.label = 'Comprar doce'
					CandyShopItems.items = {
						{
							name = 'twerks_candy',
							type = 'item',
							amount = 50,
							price = 2,
							info = {},
							slot = 1,
						},
						{
							name = 'snikkel_candy',
							type = 'item',
							amount = 50,
							price = 2,
							info = {},
							slot = 2,
						}
					}
					CandyShopItems.slots = 2
					TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'Vendingcandybox_' .. math.random(1, 99), CandyShopItems)
				end
			}
		},
		distance = 3.0
	},

	['getCoca'] = {
		models = { 'bkr_prop_weed_lrg_01a', 'bkr_prop_weed_lrg_01b' },
		options = {
			{
				icon = 'fa fa-leaf',
				label = 'Colher folha da maconha',
				gang = 'grota',
				action = function()
					QBCore.Functions.Progressbar("marijuana_leaf", "Colhendo folha de maconha", 6000, false, true, {
						disableMovement = false,
						disableCarMovement = false,
						disableMouse = false,
						disableCombat = true,
					}, {
						animDict = "amb@prop_human_bum_bin@idle_b",
						anim = "idle_d",
						flags = 16,
					}, {}, {}, function() -- Done
						StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_b", "idle_d", 1.0)
						QBCore.Functions.Notify("Você colheu a folha", "success", 7000)
						TriggerServerEvent('qb-drugs:server:giveDrug', 'marijuana_leaf', 1)
					end, function() -- Cancel
						StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_b", "idle_d", 1.0)
						QBCore.Functions.Notify("Parou de procurar", "error", 7000)
					end)
				end
			}
		},
		distance = 3.0
	},
	-- CRAFTING DRUG
	['weedBrick'] = {
		models = { 'bkr_prop_weed_table_01b' },
		options = {
			{
				icon = 'fa fa-leaf',
				label = 'Tablete de maconha',
				gang = 'grota',
				action = function()
					local craftedItem = 'weed_brick'
					local itemInfo = QBCore.Shared.Items[craftedItem]
					if itemInfo then
						local coasts = {
							{ item = 'marijuana_leaf', amount = 1 },
							{ item = 'empty_weed_bag', amount = 1 }
						}
						-- craftedItem, requiredItems, amountToCraft, xpGain, xpType
						TriggerEvent('qb-crafting:client:receiveItem', craftedItem, coasts, 1, 1, 'craftingrep')
					else
						print('NO ITEM')
					end
				end
			}
		},
		distance = 3.0
	},
	-- ['thegame'] = {
	-- 	models = { 'bkr_prop_fakeid_table' },
	-- 	options = {
	-- 		{
	-- 			type = "client",
	-- 			event = "rrs-thegame:client:openGame",
	-- 			icon = "fas fa fa-gamepad",
	-- 			label = "Jogar"
	-- 		}
	-- 	},
	-- 	distance = 3.0
	-- },
	-- GROTA
	-- ['craftingGrota'] = {
	-- 	models = { 1246927682 },
	-- 	options = {
	-- 		{
	-- 			event = 'inventory:client:craftTarget',
	-- 			label = Lang:t('menu.craft'),
	-- 			icon = 'fas fa-tools',
	-- 			gang = "grota"
	-- 		}
	-- 	},
	-- 	distance = 3.0
	-- }
	-- ["bincocloting"] = {
	-- 	models = {
	-- 		-1743242053
	-- 	},
	-- 	options = {
	-- 		{
	-- 			type = "client",
	-- 			event = "qb-trashsearch:client:searchtrash",
	-- 			icon = "fas fa-dumpster",
	-- 			label = "Mergulho na lixeira",
	-- 		},
	-- 	},
	-- 	distance = 3.0
	-- },
	-- dropWeapon = {
	-- 	models = { 1467525553 },
	-- 	options = {
	-- 		{
	-- 			type = "client",
	-- 			event = "qb-trashsearch:client:searchtrash",
	-- 			icon = "fas fa-dumpster",
	-- 			label = "Mergulho na lixeira",
	-- 		},
	-- 	},
	-- 	distance = 3.0
	-- },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
	-- JOGO DO BICHO
	{
		coords = vector4(159.44, -1717.01, 29.29, 151.91),
		model = `cs_stretch`,
		blockevents = true,
		invincible = true,
		networked = true,
		target = {
			options = {
				{
					type = "client",
					event = "qb-rrs-ilegal:client:openGame",
					icon = "fas fa fa-gamepad",
					label = "Jogar"
				}
			 },
			distance = 2.5
		}
	},
	{
		coords = vector4(-20.60, -1392.73, 29.37, 273.79),
		model = `cs_stretch`,
		blockevents = true,
		invincible = true,
		networked = true,
		target = {
			options = { 
				{
					type = "client",
					event = "qb-rrs-ilegal:client:openGame",
					icon = "fas fa fa-gamepad",
					label = "Jogar"
				}
			 },
			distance = 2.5
		}
	},
	-- LOJA DE PENHORES
	{
		coords = vector4(-622.71, -249.69, 38.52, 76.75),
		model = `cs_stretch`,
		blockevents = true,
		invincible = true,
		networked = true,
		target = {
			options = {
				{
					type = 'client',
					event = 'qb-pawnshop:client:openMenu',
					icon = 'fas fa-ring',
					label = 'Penhores',
				},
			 },
			distance = 3
		}
	}
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function JobTypeCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		local timeout = 0
		while state ~= 'started' and timeout <= 100 do
			timeout += 1
			state = GetResourceState('qb-core')
			Wait(0)
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local PlayerData = QBCore.Functions.GetPlayerData()
		ItemCheck = QBCore.Functions.HasItem

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		JobTypeCheck = function(jobType)
			if type(jobType) == 'table' then
				jobType = jobType[PlayerData.job.type]
				if jobType then
					return true
				end
			elseif jobType == 'all' or jobType == PlayerData.job.type then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.excludejob and JobCheck(data.excludejob) then return false end
	if data.jobType and not JobTypeCheck(data.jobType) then return false end
	if data.excludejobType and JobTypeCheck(data.excludejobType) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.excludegang and GangCheck(data.excludegang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
