
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
list.Set( "simfphys_lights", "flatbed_lights", light_table)

local Category = "GTA V"

local V = {
	Name = "Flatbed",
	Model = "models/notakid/gtavredux/flatbed/flatbed_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3400,
        AirFriction = -3000,
		OnSpawn = function(ent)
            if ent:GetCenterposition() != nil then
                ent:SetCenterposition(Vector(0,0,0))  -- position of center ballsocket for tow hitch(trailer coupling)
                ent:SetTrailerCenterposition(Vector(0,0,0)) -- position of center ballsocket for trailer hook
            end
        end,
		
		
		LightsTable = "flatbed_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,
		
		CustomWheelModel = "models/notakid/gtavredux/flatbed/flatbed_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/flatbed/flatbed_r_wheel.mdl",
		CustomWheelPosFL = Vector(125.5,-47,-22),
		CustomWheelPosFR = Vector(125.5,47,-22),
		CustomWheelPosRL = Vector(-134.5,-43,-22),
		CustomWheelPosRR = Vector(-134.5,43,-22),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 21,
		RearWheelRadius = 20,
		
		CustomMassCenter = Vector(10,0,15),
		
		CustomSteerAngle = 35,
		
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
				pos = Vector(69,-23,17),
				ang = Angle(0,-90,0)
				
			},
		},
		Backfire = false,
		ExhaustPositions = {
			{
				pos = Vector(-43,12,-13),
				ang = Angle(90,180,0)
			},
		},
		Backfire = false,

		FuelType = FUELTYPE_DIESEL,
		FuelFillPos = Vector(8.5,-55,-5),
		FuelTankSize = 800,


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
list.Set( "simfphys_vehicles", "sim_fphys_gtav_flatbedreduxextra", V )