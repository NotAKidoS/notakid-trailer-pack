
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
		{pos = Vector(128.194,44.613,-9.249),size = 30},{pos = Vector(128.194,-44.613,-9.249),size = 30},
		{pos = Vector(128.098,38.823,-9.249),size = 30},{pos = Vector(128.098,-38.823,-9.249),size = 30},

	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(128.194,44.613,-9.249),size = 30},{pos = Vector(128.194,-44.613,-9.249),size = 30},
		{pos = Vector(128.098,38.823,-9.249),size = 30},{pos = Vector(128.098,-38.823,-9.249),size = 30},

	},
	Rearlight_sprites = {	--taillights
		{pos = Vector(-156.954,28.012,-8.109),size = 40},{pos = Vector(-156.954,-28.012,-8.109),size = 40},
	
	},
	Brakelight_sprites = {
		{pos = Vector(-156.948,35,-8),size = 40},{pos = Vector(-156.948,-35,-8),size = 40},

	},
	Reverselight_sprites = {
		{pos = Vector(-156.959,10.563,-8.109),size = 40},{pos = Vector(-156.959,-10.563,-8.109),size = 40},

	},
		FogLight_sprites = {
		{pos = Vector(106.172,-8.566,74.84), size = 30},
		{pos = Vector(106.172,8.566,74.84), size = 30},


	},
	
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},

	Turnsignal_sprites = {
		Right = {
		--Back

		{pos = Vector(-156.946,-42.2,-8),size = 40},
		},
		Left = {
		--Back

		{pos = Vector(-156.946,42.2,-8),size = 40},
		},
	},
}
list.Set( "simfphys_lights", "hauler2_lights", light_table)



local Category = "GTA V"

local V = {
	Name = "Hauler Custom",
	Model = "models/notakid/gtavredux/hauler2/hauler2_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3400,
        AirFriction = -3000,
		
		
        OnSpawn = function(ent)
            if ent:GetCenterposition() != nil then

                ent:SetCenterposition(Vector(-80,0,-5))  -- position of center ballsocket for tow hitch(trailer coupling)
                ent:SetTrailerCenterposition(Vector(100,0,0)) -- position of center ballsocket for trailer hook
            end
        end,
		
		
		LightsTable = "hauler2_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,
		
		CustomWheelModel = "models/notakid/gtavredux/hauler2/hauler2_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/hauler2/hauler2_r_wheel.mdl",
		CustomWheelPosFL = Vector(90,-45,-25),
		CustomWheelPosFR = Vector(90,45,-25),
		CustomWheelPosML = Vector(-68,-43,-25),
		CustomWheelPosMR = Vector(-68,43,-25),
		CustomWheelPosRL = Vector(-126.5,-43,-25),
		CustomWheelPosRR = Vector(-126.5,43,-25),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 22,
		RearWheelRadius = 22,
		

		
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
				pos = Vector(9.024,39.65,109.443),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(9.024,-39.65,109.443),
				ang = Angle(0,0,0)
			},
		},

		FuelType = FUELTYPE_DIESEL,
		FuelFillPos = Vector(-9.955,49.202,-6.855),
		FuelTankSize = 260,


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
		
		MaxGrip = 58,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 2800,
		PeakTorque = 320,
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
list.Set( "simfphys_vehicles", "sim_fphys_gtav_hauler2reduxextra", V )