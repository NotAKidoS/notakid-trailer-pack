
local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 130, 30, 0 ),
	L_HeadLampAng = Angle(10,5,0),
	R_HeadLampPos = Vector( 130, -30, 0 ),
	R_HeadLampAng = Angle(10,-5,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-130,30,5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-130,-30,5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{pos = Vector(117.8,-35.2,-4.6),size = 40},
		{pos = Vector(117.8,-43.4,-4.5),size = 40},
		{pos = Vector(117.8,35.2,-4.6),size = 40},
		{pos = Vector(117.8,43.4,-4.5),size = 40},

	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(117.8,-35.2,-4.6),size = 40},
		{pos = Vector(117.8,-43.4,-4.5),size = 40},
		{pos = Vector(117.8,35.2,-4.6),size = 40},
		{pos = Vector(117.8,43.4,-4.5),size = 40},
	},
	Rearlight_sprites = {	--taillights
		{pos = Vector(-129.954,28.012,-8.109),size = 40},{pos = Vector(-129.954,-28.012,-8.109),size = 40},
	
	},
	Brakelight_sprites = {
		{pos = Vector(-129.948,35,-8),size = 40},{pos = Vector(-129.948,-35,-8),size = 40},

	},
	Reverselight_sprites = {
		{pos = Vector(-129.959,10.563,-8.109),size = 40},{pos = Vector(-129.959,-10.563,-8.109),size = 40},

	},
		FogLight_sprites = {
		{
		pos = Vector(66.719,42.037,96.28),
		color = Color(154,0,0,255),
		size = 60,
		OnBodyGroups = { 
			[6] = {0},
			}
		},
		{
		pos = Vector(68.952,5.423,98.853),
		color = Color(154,0,0,255),
		size = 60,
		OnBodyGroups = { 
			[6] = {0},
			}
		},
		{
		pos = Vector(68.957,0,98.89),
		color = Color(154,0,0,255),
		size = 60,
		OnBodyGroups = { 
			[6] = {0},
			}
		},
		{
		pos = Vector(66.719,-42.037,96.28),
		color = Color(154,0,0,255),
		size = 60,
		OnBodyGroups = { 
			[6] = {0},
			}
		},
		{
		pos = Vector(68.952,-5.423,98.853),
		color = Color(154,0,0,255),
		size = 60,
		OnBodyGroups = { 
			[6] = {0},
			}
		},
		
		{pos = Vector(101.431,-42.066,69.401), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(102.924,-5.497,69.4), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(102.974,5.491,69.401), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(104.559,0,69.439), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(101.7,42.062,69.356), size = 30, color = Color(154,0,0,255)},
		
	},
	
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},

	Turnsignal_sprites = {
		Right = {
		--Back
		{pos = Vector(119.5,-29.598,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-31.791,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-34.274,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-36.508,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-38.725,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-40.897,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-43.576,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,-46.237,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(118.6,-47.998,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-129.946,-42.2,-8),size = 40},
		},
		Left = {
		--Back
		{pos = Vector(119.5,29.598,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,31.791,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,34.274,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,36.508,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,38.725,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,40.897,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,43.576,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(119.5,46.237,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(118.6,47.998,-10.1), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-129.946,42.2,-8),size = 40},
		},
	},
}
list.Set( "simfphys_lights", "hauler_lights", light_table)


local Category = "GTA V"

local V = {
	Name = "Hauler",
	Model = "models/notakid/gtavredux/hauler/hauler_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,38),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3400,
        AirFriction = -3000,
		
		
        OnSpawn = function(ent)
            if ent:GetCenterposition() != nil then

                ent:SetCenterposition(Vector(-52,0,-5))  -- position of center ballsocket for tow hitch(trailer coupling)
                ent:SetTrailerCenterposition(Vector(100,0,0)) -- position of center ballsocket for trailer hook
            end
			ent.rev = CreateSound( ent, "gtavredux/reverse_sound.wav" )
			ent.rev:PlayEx(100,100)
        end,
		
		OnTick = function(ent)
			if ent:GetGear() == 1 and ent:EngineActive() and ent:GetRPM() > 100 then
				if ent.alreadyinreverse == false then
					ent.alreadyinreverse = true
					ent:EmitSound( "gtavredux/reverse_sound.wav", 75, 100, 1, CHAN_AUTO )
				end
			else
				ent.alreadyinreverse = false
			end
		end,
		
		
		LightsTable = "hauler_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,
		
		CustomWheelModel = "models/notakid/gtavredux/hauler/hauler_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/hauler/hauler_r_wheel.mdl",
		CustomWheelPosFL = Vector(90,-45,-28),
		CustomWheelPosFR = Vector(90,45,-28),
		CustomWheelPosRL = Vector(-41,-43,-28),
		CustomWheelPosRR = Vector(-41,43,-28),
		CustomWheelPosML = Vector(-99.5,-43,-28),
		CustomWheelPosMR = Vector(-99.5,43,-28),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 21,
		RearWheelRadius = 21,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 30,
		
		FirstPersonViewPos = Vector(0,-8,5),		
		SeatOffset = Vector(78,-30,58),
		SeatPitch = 5,
		SeatYaw = 90,
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		EnginePos = Vector(115,0,39), 
		PassengerSeats = {
			{
				pos = Vector(87,-30,18),
				ang = Angle(0,-90,0)
				
			},
		},
		Backfire = false,
		ExhaustPositions = {
			{
				pos = Vector(39.596,39.648,108.433),
				ang = Angle(-79,0,0)
			},
			{
				pos = Vector(39.596,-39.648,108.433),
				ang = Angle(-79,0,0)
			},
		},


		FuelType = FUELTYPE_DIESEL,
		FuelFillPos = Vector(-4.641,51.523,-6.501),
		FuelTankSize = 220,


		FrontHeight = 15,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 15,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 18,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 2,
		
		MaxGrip = 80,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 2800,
		PeakTorque = 140,
		PowerbandStart = 1500,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		

		

		
		PowerBias = 0.4,
		
		EngineSoundPreset = 8,
		
		snd_pitch = 0.8,
		snd_idle = "simulated_vehicles/gta5_gauntlet/gauntlet_idle.wav",
		
		snd_low = "simulated_vehicles/gta5_gauntlet/gauntlet_low.wav",
		snd_low_revdown = "simulated_vehicles/gta5_gauntlet/gauntlet_revdown.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "simulated_vehicles/gta5_gauntlet/gauntlet_mid.wav",
		snd_mid_gearup = "simulated_vehicles/gta5_gauntlet/gauntlet_gear.wav",
		snd_mid_pitch = 0.8,
		
		snd_horn = "simfphysgtahorns/horns/semi_horn.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.2,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.24,1.55}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_haulerredux", V )