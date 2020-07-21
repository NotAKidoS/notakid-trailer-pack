
local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 110, 24, 0 ),
	L_HeadLampAng = Angle(10,5,0),
	R_HeadLampPos = Vector( 110, -24, 0 ),
	R_HeadLampAng = Angle(10,-5,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-145,26,5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-145,-26,5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{pos = Vector(114.44,32.166,-0.984),size = 30},
		{pos = Vector(114.44,-32.166,-0.984),size = 30},		
		{pos = Vector(114.44,24.628,-0.984),size = 30},
		{pos = Vector(114.44,-24.628,-0.984),size = 30},
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(114.44,32.166,-0.984),size = 30},
		{pos = Vector(114.44,-32.166,-0.984),size = 30},		
		{pos = Vector(114.44,24.628,-0.984),size = 30},
		{pos = Vector(114.44,-24.628,-0.984),size = 30},
		--no roof :<
	},
	Rearlight_sprites = {	--taillights
		{pos = Vector(-137.011,29.776,5.71),color = Color( 135,0,0,255),size = 25},
		{pos = Vector(-137.011,-29.776,5.71),color = Color( 135,0,0,255),size = 25},
		{pos = Vector(-137.011,29.776,5.71),color = Color( 135,0,0,255),size = 35},
		{pos = Vector(-137.011,-29.776,5.71),color = Color( 135,0,0,255),size = 35},
	},
	Brakelight_sprites = {
		{pos = Vector(-137.011,15.498,5.71),color = Color( 135,0,0,255),size = 25},
		{pos = Vector(-137.011,-15.498,5.71),color = Color( 135,0,0,255),size = 25},		
		{pos = Vector(-137.011,15.498,5.71),color = Color( 135,0,0,255),size = 35},
		{pos = Vector(-137.011,-15.498,5.71),color = Color( 135,0,0,255),size = 35},

	},
	Reverselight_sprites = {
		{pos = Vector(-137.011,22.669,5.71),size = 25},
		{pos = Vector(-137.011,-22.669,5.71),size = 25},

	},
	FogLight_sprites = {
		-- {pos = Vector(97.471,-16.515,24.158),size = 8, OnBodyGroups = { [4] = {0} } },

	},
	DelayOn = 0,
	DelayOff = 0,
	Turnsignal_sprites = {
		Right = {         --V Negitive is Right
		{pos = Vector(-137.011,-29.776,5.71),color = Color( 135,0,0,255),size = 25},
		{pos = Vector(-137.011,-29.776,5.71),color = Color( 135,0,0,255),size = 35},
		},
		Left = {        --V Positive is left
		{pos = Vector(-137.011,29.776,5.71),color = Color( 135,0,0,255),size = 25},
		{pos = Vector(-137.011,29.776,5.71),color = Color( 135,0,0,255),size = 35},
		},
	},
}
list.Set( "simfphys_lights", "armytrailer", light_table)

 
local V = {
	Name = "Army Trailer",
	Model = "models/notakid/gtavredux/armytrailer/armytrailer_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "GTA V Trailers",
	SpawnOffset = Vector(0,0,120),
	SpawnAngleOffset = 90,

	FLEX = {
		Trailers = {
			inputPos = Vector(320.6,0,-5),
			inputType = "axis",
			outputPos = Vector(-348,0,-5),
			outputType = "ballsocket",
		}
	},

	Members = {
		Mass = 2000,

        -- AirFriction = -8000,
        OnSpawn = function(ent)
			--//color using Proxy Color Tool if possible, otherwise a random color using normal color tool
			NAK.SpawnColor( ent, 1 )
			--//entity, popped bodygroups, repaired bodygroups, popped ghost wheel position (negitive), popped suspension height
			NAK.TireOverride( ent, "01", "00", 9, 4 )
			NAK.TrailerLegs( ent, Vector(186,18,-56) )
        end,

		LightsTable = "armytrailer",
	
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/notakid/gtavredux/armytrailer/armytrailer_wheel.mdl",
		CustomWheelPosFL = Vector(-199,-41,-22),
		CustomWheelPosFR = Vector(-199,41,-22),
		CustomWheelPosML = Vector(-252.2,-41,-22),
		CustomWheelPosMR = Vector(-252.2,41,-22),
		CustomWheelPosRL = Vector(-305,-41,-22),
		CustomWheelPosRR = Vector(-305,41,-22),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 22,
		RearWheelRadius = 22,
		
		FrontWheelMass = 100,
		RearWheelMass = 100,
		
		StrengthenSuspension = true,
		
		CustomMassCenter = Vector(180,0,-5),
		
		CustomSteerAngle = 32,
		FirstPersonViewPos = Vector(0,-12,7),	
		SeatOffset = Vector(-17,-20.5,20),
		SeatPitch = 0,
		SeatYaw = 90,

		EnginePos = Vector(87.232,0,11.828),

		FuelType = FUELTYPE_NONE,
		FuelFillPos = Vector(0,0,0),
		
		FuelTankSize = 0,
		
		FrontHeight = 4, 
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, 
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 4,
		
		MaxGrip = 53,
		Efficiency = 1.1,
		GripOffset = -0.03,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		PeakTorque = 220,
		PowerbandStart = 1500,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,

		
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/gta5_gauntlet/gauntlet_idle.wav",
		
		snd_low = "simulated_vehicles/gta5_gauntlet/gauntlet_low.wav",
		snd_low_revdown = "simulated_vehicles/gta5_gauntlet/gauntlet_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "simulated_vehicles/gta5_gauntlet/gauntlet_mid.wav",
		snd_mid_gearup = "simulated_vehicles/gta5_gauntlet/gauntlet_gear.wav",
		snd_mid_pitch = 1,
		
		snd_horn = "gtavredux/car_horn_med_2.wav",
		
		DifferentialGear = 0.6,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_armytrailer", V )

--//LAZY DUPLICATION OF TABLE (two versions of model)

-- local V2 = {}
-- for k,v in pairs(V) do
    -- V2[k] = v
-- end

-- V2.Name = "Army Trailer Hook Collision"
-- V2.Model = "models/notakid/gtavredux/armytrailer/armytrailer_main.mdl"
-- V2.Category = "GTA V Trailers"

-- list.Set( "simfphys_vehicles", "sim_fphys_gtav_armytrailer_ver2", V2 )












