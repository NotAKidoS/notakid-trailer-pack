local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 0, 0, 0 ),
	L_HeadLampAng = Angle(0,90,0),
	R_HeadLampPos = Vector( 110, -24, 0 ),
	R_HeadLampAng = Angle(10,-5,0),
	-- projected texture - rear
	L_RearLampPos = Vector(-145,26,5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-145,-26,5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {},
	Headlamp_sprites = {},
	Rearlight_sprites = {
		{pos = Vector(-244,35.16,-53.69),size = 25},
		{pos = Vector(-244,-35.16,-53.69),size = 25},
	},
	Brakelight_sprites = {
		{pos = Vector(-244,27.99,-53.69),size = 25},
		{pos = Vector(-244,-27.99,-53.69),size = 25},
	},
	Reverselight_sprites = {
		{pos = Vector(-244,-10.57,-53.69),size = 25},
		{pos = Vector(-244,10.57,-53.69),size = 25},
	},
	FogLight_sprites = {},
	Turnsignal_sprites = {
		Right = {         --V Negitive is Right
		{pos = Vector(-244,-42.29,-53.69),size = 25},
		},
		Left = {        --V Positive is left
		{pos = Vector(-244,42.29,-53.69),size = 25},
		},
	},
	DelayOn = 0,
	DelayOff = 0,
}
list.Set( "simfphys_lights", "gtavboattrailer", light_table)

local V = {
	Name = "Boat Trailer",
	Model = "models/notakid/gtavredux/boattrailer/boattrailer_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "GTA V Trailers",
	SpawnOffset = Vector(0,0,120),
	SpawnAngleOffset = 90,

	FLEX = {
		Trailers = {
			inputPos = Vector(133,0,-21),
			inputType = "ballsocket",
		}
	},

	Members = {
		Mass = 500,
		NAKTankerHB = {
            Tank = {
                OBBMax = Vector(228,55,43),
                OBBMin = Vector(-243,-55,-44),
            },
		},
        -- AirFriction = -8000,
        OnSpawn = function(ent)
			NAK.DisableUse(ent)
			NAK.TireOverride( ent, "01", "00", 8, 18 )
			NAK.TrailerLegs( ent, Vector(100,0,-37), 25, true )
        end,

		LightsTable = "gtavboattrailer",
	
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_junk/PopCan01a.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/boattrailer/boattrailer_wheel.mdl",
		CustomWheelPosFL = Vector(-81,0,-22.1),
		CustomWheelPosFR = Vector(-81,0,-22.1),
		CustomWheelPosRL = Vector(-82.4,-41,-30),
		CustomWheelPosRR = Vector(-82.4,41,-30),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 5,
		RearWheelRadius = 15,
		
		StrengthenSuspension = true,
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 32,
		FirstPersonViewPos = Vector(0,-12,7),	
		SeatOffset = Vector(-17,-20.5,20),
		SeatPitch = 0,
		SeatYaw = 90,

		EnginePos = Vector(0,0,-20),

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
		
		TurnSpeed = 4,
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,

		MaxGrip = 53,
		Efficiency = 1.1,
		GripOffset = 0,
		BrakePower = 40,

		IdleRPM = 600,
		LimitRPM = 5000,
		PeakTorque = 220,
		PowerBias = 1,
		PowerbandStart = 1500,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,

		snd_horn = "common/null.wav",
		EngineSoundPreset = 1,
		snd_pitch = 1,
		snd_idle = "common/null.wav",
		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav",
		snd_low_pitch = 1,
		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_pitch = 1,

		DifferentialGear = 0.1,
		Gears = {-1,0,1}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_boattrailer", V )