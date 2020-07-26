local V = {
	Name = "Forklift",
	Model = "models/notakid/gtavredux/forklift/forklift_main.mdl",
	Class = "Utility",
	Category = "GTA V Utility",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		OnSpawn = function(ent)
			NAK.SpawnColor( ent, 1 )
			NAK.TireOverride( ent, "01", "00", 4, 5 )
		end,
		Mass = 1250,
		LightsTable = "forklift_lights",
		CustomWheels = true,

		CustomMassCenter = Vector(-30,0,-12),

		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,

		CustomWheelModel = "models/notakid/gtavredux/forklift/forklift_wheel.mdl",
		CustomWheelPosFL = Vector(30.5,-20,-10),
		CustomWheelPosFR = Vector(30.5,20,-10),
		CustomWheelPosRL = Vector(-30.5,-20,-10),
		CustomWheelPosRR = Vector(-30.5,20,-10),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 11,
		RearWheelRadius = 11,
		
		FrontWheelMass = 280,
		RearWheelMass = 280,
		
		SteerFront = false,
		SteerRear = true,

		FirstPersonViewPos = Vector(0,-10,2),		
		SeatOffset = Vector(-20,0,48),
		SeatPitch = 7,
		SeatYaw = 90,

		EnginePos = Vector(165,0,15), 

		Backfire = false,

		FuelType = FUELTYPE_PETROL,
		FuelFillPos = Vector(8.5,-55,-5),
		FuelTankSize = 45,

		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 3800,
		FrontRelativeDamping = 3000,

		RearHeight = 5,
		RearConstant = 50000,
		RearDamping = 3800,
		RearRelativeDamping = 3000,
		
		TurnSpeed = 1,
		CustomSteerAngle = 30,
		FastSteeringAngle = 18,
		SteeringFadeFastSpeed = 600,
		MaxGrip = 80,
		Efficiency = 1.1,
		GripOffset = 0,
		BrakePower = 15,

		IdleRPM = 600,
		LimitRPM = 1200,
		PowerBias = 1,
		PeakTorque = 120,
		PowerbandStart = 800,
		PowerbandEnd = 1400,
		Turbocharged = false,
		Supercharged = false,

		snd_horn = "notakid/horns/car_horn1.wav",
		EngineSoundPreset = 8,

		DifferentialGear = 0.3,
		Gears = {-0.2,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.24,1.55}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_forklift", V )

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
		{pos = Vector(159,41,4.3),size = 40},{pos = Vector(159,-41,4.3),size = 40},
		{pos = Vector(159,41,4.3),size = 40},{pos = Vector(159,-41,4.3),size = 40},
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(159,41,4.3),size = 30},{pos = Vector(159,-41,4.3),size = 30},
		{pos = Vector(159,41,4.3),size = 30},{pos = Vector(159,-41,4.3),size = 30},
	},
	Rearlight_sprites = {	--taillights
		{pos = Vector(-171,34.5,-1),size = 40},{pos = Vector(-171,-34.5,-1),size = 40},
		{pos = Vector(-171,34.5,-1),size = 40},{pos = Vector(-171,-34.5,-1),size = 40},
	},
	Brakelight_sprites = {
		{pos = Vector(-171,27,-1),size = 40},{pos = Vector(-171,-27,-1),size = 40},
		{pos = Vector(-171,27,-1),size = 40},{pos = Vector(-171,-27,-1),size = 40},
	},
	Reverselight_sprites = {
		{pos = Vector(-171,10,-1),size = 40},{pos = Vector(-171,-10,-1),size = 40},
	},
	FogLight_sprites = {
		{pos = Vector(73,-2.4,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,2.4,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-8.7,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,8.7,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-12.3,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,12.3,80.5), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-20,80.1), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,20,80.1), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-23.5,80), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,23.5,80), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-29.8,79.7), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,29.8,79.7), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,-33.5,79.7), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},
		{pos = Vector(73,33.5,79.7), size = 15,material="sprites/light_ignorez", color = Color(255,110,0,255)},

		{pos = Vector(26.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-62,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-62,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-62,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-62,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-106.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-106.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-106.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-106.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-151,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-151,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-151,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-151,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-194.5,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-194.5,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-194.5,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-194.5,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(59,-42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(59,42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(59,-42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(59,42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(95.5,-42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(95.5,42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(95.5,-42,8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(95.5,42,8), size = 30, color = Color(154,0,0,255)},
	},
	Turnsignal_sprites = {
		Right = {
		{pos = Vector(-171,-42,-1),size = 40},{pos = Vector(-171,-42,-1),size = 40},
		},
		Left = {
		{pos = Vector(-171,42,-1),size = 40},{pos = Vector(-171,42,-1),size = 40},
		},
	},
}
list.Set( "simfphys_lights", "forklift_lights", light_table)