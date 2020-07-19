
local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 130, 30, 0 ),
	L_HeadLampAng = Angle(10,5,0),
	R_HeadLampPos = Vector( 130, -30, 0 ),
	R_HeadLampAng = Angle(10,-5,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-250,30,5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-250,-30,5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{pos = Vector(168,44,-14),size = 30},{pos = Vector(168,42,-14),size = 30},
		{pos = Vector(168,-44,-14),size = 30},{pos = Vector(168,-42,-14),size = 30},
		{pos = Vector(168,35,-14),size = 40},{pos = Vector(168,-35,-14),size = 40},

	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(168,44,-14),size = 30},{pos = Vector(168,42,-14),size = 30},
		{pos = Vector(168,-44,-14),size = 30},{pos = Vector(168,-42,-14),size = 30},
		{pos = Vector(168,35,-14),size = 40},{pos = Vector(168,-35,-14),size = 40},

	},
	Brakelight_sprites = {	--taillights
		{pos = Vector(-245,46.5,-1),size = 40},{pos = Vector(-245,-46.5,-1),size = 40},
		{pos = Vector(-245,46.5,-1),size = 40},{pos = Vector(-245,-46.5,-1),size = 40},
		{pos = Vector(-245,49.5,-1),size = 40},{pos = Vector(-245,-49.5,-1),size = 40},
		{pos = Vector(-245,49.5,-1),size = 40},{pos = Vector(-245,-49.5,-1),size = 40},
		{pos = Vector(-245,53.5,-1),size = 40},{pos = Vector(-245,-53.5,-1),size = 40},
		{pos = Vector(-245,53.5,-1),size = 40},{pos = Vector(-245,-53.5,-1),size = 40},
		{pos = Vector(-245,56.5,-1),size = 40},{pos = Vector(-245,-56.5,-1),size = 40},
		{pos = Vector(-245,56.5,-1),size = 40},{pos = Vector(-245,-56.5,-1),size = 40},
	},
	Rearlight_sprites = {
		{pos = Vector(-245,34.5,-1),size = 40},{pos = Vector(-245,-34.5,-1),size = 40},
		{pos = Vector(-245,34.5,-1),size = 40},{pos = Vector(-245,-34.5,-1),size = 40},
		{pos = Vector(-245,37.5,-1),size = 40},{pos = Vector(-245,-37.5,-1),size = 40},
		{pos = Vector(-245,40.5,-1),size = 40},{pos = Vector(-245,-40.5,-1),size = 40},
		{pos = Vector(-245,43.5,-1),size = 40},{pos = Vector(-245,-43.5,-1),size = 40},
		{pos = Vector(-245,37.5,-1),size = 40},{pos = Vector(-245,-37.5,-1),size = 40},
		{pos = Vector(-245,40.5,-1),size = 40},{pos = Vector(-245,-40.5,-1),size = 40},
		{pos = Vector(-245,43.5,-1),size = 40},{pos = Vector(-245,-43.5,-1),size = 40},

	},
	Reverselight_sprites = {
		{pos = Vector(-171,10,-1),size = 40},{pos = Vector(-171,-10,-1),size = 40},

	},
		FogLight_sprites = {
		{pos = Vector(168,47,-10),size = 10},
		{pos = Vector(168,46,-10),size = 17},{pos = Vector(168,44,-10),size = 17},
		{pos = Vector(168,42,-10),size = 17},{pos = Vector(168,40,-10),size = 17},
		{pos = Vector(168,38,-10),size = 17},{pos = Vector(168,36,-10),size = 17},
		{pos = Vector(168,34,-10),size = 17},
		{pos = Vector(168,-47,-10),size = 10},
		{pos = Vector(168,-46,-10),size = 17},{pos = Vector(168,-44,-10),size = 17},
		{pos = Vector(168,-42,-10),size = 17},{pos = Vector(168,-40,-10),size = 17},
		{pos = Vector(168,-38,-10),size = 17},{pos = Vector(168,-36,-10),size = 17},
		{pos = Vector(168,-34,-10),size = 17},



	},
	
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},

	Turnsignal_sprites = {
		Left = {
		--Back
		{pos = Vector(168,47,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,46,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,44,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,42,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,40,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,38,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,36,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,34,-25), size = 10, color = Color(154,0,0,255)},

		},
		Right = {
		--Back
		{pos = Vector(168,-47,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-46,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-44,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-42,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-40,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-38,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-36,-25), size = 10, color = Color(154,0,0,255)},
		{pos = Vector(168,-34,-25), size = 10, color = Color(154,0,0,255)},
		},
	},
}
list.Set( "simfphys_lights", "brickade_lights", light_table)


local Category = "GTA V"

local V = {
	Name = "Brickade",
	Model = "models/notakid/gtavredux/brickade/brickade_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 4500,
        AirFriction = -3000,
		IsArmored = true,
		MaxHealth = 6000,
		
		
        OnSpawn = function(ent)
            if ent:GetCenterposition() != nil then
                ent:SetCenterposition(Vector(-0,0,-0))  -- position of center ballsocket for tow hitch(trailer coupling)
                ent:SetTrailerCenterposition(Vector(0,0,0)) -- position of center ballsocket for trailer hook
            end
        end,
		
		LightsTable = "brickade_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0.5,
		
		CustomWheelModel = "models/notakid/gtavredux/brickade/brickade_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/brickade/brickade_r_wheel.mdl",
		CustomWheelPosFL = Vector(104,-47,-39.5),
		CustomWheelPosFR = Vector(104,47,-39.5),
		CustomWheelPosML = Vector(-75,-47,-37),
		CustomWheelPosMR = Vector(-75,47,-37),
		CustomWheelPosRL = Vector(-126.5,-47,-37),
		CustomWheelPosRR = Vector(-126.5,47,-37),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 23.5,
		RearWheelRadius = 23.5,
		
		CustomMassCenter = Vector(-10,0,30),
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(122,-30,48),
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
				pos = Vector(125,-30,15),
				ang = Angle(0,-90,0)
				
			},
		},
		Backfire = false,
		ExhaustPositions = {
			{
				pos = Vector(-51,15,-40),
				ang = Angle(0,90,0)
			},
		},
		Backfire = false,

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
		
		FastSteeringAngle = 18,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 2,
		
		MaxGrip = 120,
		Efficiency = 1,
		GripOffset = -14,
		BrakePower = 40,
		
		
		IdleRPM = 780,
		LimitRPM = 4200,
		PeakTorque = 300,
		PowerbandStart = 1000,
		PowerbandEnd = 3000,
		Turbocharged = false,
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
		
		snd_horn = "gtavredux/semi_horn.wav",
		
		DifferentialGear = 0.6,
		Gears = {-0.10,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_brickaderedux", V )