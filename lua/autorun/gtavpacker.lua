
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
		{
		pos = Vector(154.516,41.82,3.978),
		size = 30,
		OnBodyGroups = { 
			[1] = {0,1,2},
			}
		},
		{
		pos = Vector(154.516,-41.82,3.978),
		size = 30,
		OnBodyGroups = { 
			[1] = {0,1,2},
			}
		},
		{
		pos = Vector(166.013,-41.763,-2.2),
		size = 30,
		OnBodyGroups = { 
			[1] = {3},
			}
		},
		{
		pos = Vector(166.013,41.763,-2.2),
		size = 30,
		OnBodyGroups = { 
			[1] = {3},
			}
		},

	},
	Headlamp_sprites = {   -- highbeam
		{
		pos = Vector(154.516,41.82,3.978),
		size = 30,
		OnBodyGroups = { 
			[1] = {0,1,2},
			}
		},
		{
		pos = Vector(154.516,-41.82,3.978),
		size = 30,
		OnBodyGroups = { 
			[1] = {0,1,2},
			}
		},
		{
		pos = Vector(166.013,-41.763,-2.2),
		size = 30,
		OnBodyGroups = { 
			[1] = {3},
			}
		},
		{
		pos = Vector(166.013,41.763,-2.2),
		size = 30,
		OnBodyGroups = { 
			[1] = {3},
			}
		},

	},

	Rearlight_sprites = {	--taillights
		{pos = Vector(-173.884,34.913,-2.5),size = 40},{pos = Vector(-173.884,-34.913,-2.5),size = 40},
	},
	Brakelight_sprites = {
		{pos = Vector(-173.884,27.973,-2.5),size = 40},{pos = Vector(-173.884,-27.973,-2.5),size = 40},

	},
	Reverselight_sprites = {
		{pos = Vector(-173.884,10.487,-2.5),size = 40},{pos = Vector(-173.884,-10.487,-2.5),size = 40},

	},
		FogLight_sprites = {


		{pos = Vector(26.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(26.2,51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,-51,14.8), size = 30, color = Color(154,0,0,255)},
		{pos = Vector(-18,51,14.8), size = 30, color = Color(154,0,0,255)},


	},
	
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},

	Turnsignal_sprites = {
		Right = {
		--Back
		{pos = Vector(-173.882,-42.152,-2.5),size = 40},
		},
		Left = {
		--Back
		{pos = Vector(-173.882,42.152,-2.5),size = 40},
		},
	},
}
list.Set( "simfphys_lights", "Packer_lights", light_table)



local Category = "GTA V"

local V = {
	Name = "Packer",
	Model = "models/notakid/gtavredux/Packer/Packer_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3400,
        AirFriction = -3000,
		
		
        OnSpawn = function(ent)
            if ent:GetCenterposition() != nil then

                ent:SetCenterposition(Vector(-118,0,0))  -- position of center ballsocket for tow hitch(trailer coupling)
                ent:SetTrailerCenterposition(Vector(100,0,0)) -- position of center ballsocket for trailer hook
            end
        end,
		
		
		LightsTable = "Packer_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,
		
		CustomWheelModel = "models/notakid/gtavredux/Packer/Packer_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/Packer/Packer_r_wheel.mdl",
		CustomWheelPosFL = Vector(120.5,-47,-20),
		CustomWheelPosFR = Vector(120.5,47,-20),
		CustomWheelPosML = Vector(-85,-43,-20),
		CustomWheelPosMR = Vector(-85,43,-20),
		CustomWheelPosRL = Vector(-138,-43,-20),
		CustomWheelPosRR = Vector(-138,43,-20),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 21,
		RearWheelRadius = 19,
		

		
		CustomSteerAngle = 30,
		
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
				pos = Vector(-20.977,44.75,118.2),
				ang = Angle(-82,0,0)
			},
			{
				pos = Vector(-20.977,-44.75,118.2),
				ang = Angle(-82,0,0)
			},
		},
		Backfire = false,

		FuelType = FUELTYPE_DIESEL,
		FuelFillPos = Vector(-11.583,51.504,-5.56),
		FuelTankSize = 200,


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
		
		MaxGrip = 68,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 2800,
		PeakTorque = 200,
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
list.Set( "simfphys_vehicles", "sim_fphys_gtav_Packerreduxextra", V )