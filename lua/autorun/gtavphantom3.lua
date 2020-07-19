
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
	
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},

	Turnsignal_sprites = {
		Right = {
		--Back
		{pos = Vector(-171,-42,-1),size = 40},{pos = Vector(-171,-42,-1),size = 40},
		},
		Left = {
		--Back
		{pos = Vector(-171,42,-1),size = 40},{pos = Vector(-171,42,-1),size = 40},
		},
	},
}
list.Set( "simfphys_lights", "phantom3_lights", light_table)



local Category = "GTA V"

local V = {
	Name = "Phantom Custom",
	Model = "models/notakid/gtavredux/phantom3/phantom3_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 10000,
		MaxHealth = 9000,
		
		LightsTable = "phantom3_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		
		CustomWheelModel = "models/notakid/gtavredux/phantom3/phantom3_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/phantom3/phantom3_r_wheel.mdl",
		CustomWheelPosFL = Vector(145.2,-47,-28),
		CustomWheelPosFR = Vector(145.2,47,-28),
		CustomWheelPosML = Vector(-92,-43,-30.5),
		CustomWheelPosMR = Vector(-92,43,-30.5),
		CustomWheelPosRL = Vector(-145,-43,-30.5),
		CustomWheelPosRR = Vector(-145,43,-30.5),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 21,
		RearWheelRadius = 20,
		StrengthenSuspension = true,
		CustomMassCenter = Vector(0,0,25),
		
		CustomSteerAngle = 40,
		
		FirstPersonViewPos = Vector(0,-10,10),		
		SeatOffset = Vector(62,-23,48),
		SeatPitch = 0,
		SeatYaw = 90,
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		EnginePos = Vector(165,0,15), 
		PassengerSeats = {
			{
				pos = Vector(69,-23,16),
				ang = Angle(0,-90,0)
				
			},
		},
		Backfire = false,
		PassengerSeats = {
			{
				pos = Vector(69,-23,16),
				ang = Angle(0,-90,0)
				
			},
			{
				pos = Vector(-39.5,-29,2),
				ang = Angle(0,180,0)
				
			},
			{
				pos = Vector(-39.5,29,2),
				ang = Angle(0,0,0)
				
			},
			{
				pos = Vector(-136,0,11),
				ang = Angle(0,90,0)
				
			},
		},
		Backfire = false,


		IsArmored = true,	
	
		FuelType = FUELTYPE_DIESEL,
		FuelFillPos = Vector(8.5,-55,-5),
		FuelTankSize = 800,


		FrontHeight = 2,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 30,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 4,

		MaxGrip = 120,
		Efficiency = 2,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		PeakTorque = 800,
		PowerbandStart = 1500,
		PowerbandEnd = 8000,
		Turbocharged = true,
		Supercharged = false,
		

		

		
		PowerBias = 0,
		
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
list.Set( "simfphys_vehicles", "sim_fphys_gtav_phantom3", V )