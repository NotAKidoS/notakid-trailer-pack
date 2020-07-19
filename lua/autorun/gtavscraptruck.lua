local light_table = {
	ModernLights = false,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 130, 48, 39.5 ),
	L_HeadLampAng = Angle(10,5,0),
	R_HeadLampPos = Vector( 130, -27.5, 39.5 ),
	R_HeadLampAng = Angle(10,-5,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-140,38,10),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-140,-38,10),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{pos = Vector(128,38,9),size = 40},{pos = Vector(128,-38,9),size = 40},
		{pos = Vector(128,38,9),size = 40},{pos = Vector(128,-38,9),size = 40},
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(128,38,9),size = 60},{pos = Vector(128,-38,9),size = 60},	
	},
	Rearlight_sprites = {	--taillights
		{pos = Vector(-127,-42.5,5),size = 30},{pos = Vector(-127,42.5,5),size = 30},
		{pos = Vector(-127,-42.5,5),size = 30},{pos = Vector(-127,42.5,5),size = 30},
	},
	Brakelight_sprites = {
		{pos = Vector(-127,-42.5,-0.5),size = 30},{pos = Vector(-127,42.5,-0.5),size = 30},
		{pos = Vector(-127,-42.5,-0.5),size = 30},{pos = Vector(-127,42.5,-0.5),size = 30},
	},
	Reverselight_sprites = {
		{pos = Vector(-127,-42.5,-7),size = 30},{pos = Vector(-127,42.5,-7),size = 30},
	},
	ems_sounds = { "gtavredux/REVERSE_SOUND.wav" },
	ems_sprites = {
		},
		FogLight_sprites = {
		{pos =  Vector(62,0,66),size = 15,material="sprites/light_ignorez",color=Color(255,115,0,255)},
		{pos =  Vector(62,6.3,66),size = 15,material="sprites/light_ignorez",color=Color(255,115,0,255)},
		{pos =  Vector(62,-6.3,66),size = 15,material="sprites/light_ignorez",color=Color(255,115,0,255)},
		{pos =  Vector(62,25.7,65.3),size = 15,material="sprites/light_ignorez",color=Color(255,115,0,255)},
		{pos =  Vector(62,-25.7,65.3),size = 15,material="sprites/light_ignorez",color=Color(255,115,0,255)},
		},
	Turnsignal_sprites = {
		Right = {
		{pos = Vector(-126.5,-51.5,-0.8),size = 30},{pos = Vector(-126.5,-51.5,-0.8),size = 30},
		{pos = Vector(128,-38,21),size = 30},{pos = Vector(128,-38,21),size = 30},	
		},
		Left = {
		{pos = Vector(-126.5,51.5,-0.8),size = 30},{pos = Vector(-126.5,51.5,-0.8),size = 30},
		{pos = Vector(128,38,21),size = 30},{pos = Vector(128,38,21),size = 30},	

		},
	},
}
list.Set( "simfphys_lights", "scrap_lights", light_table)

local Category = "GTA V"

local V = {
	Name = "Scrap Truck",
	Model = "models/notakid/gtavredux/scraptruck/scrap_main.mdl",
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
		
		
		LightsTable = "scrap_lights",
		
		CustomWheels = true,
		CustomSuspensionTravel = 0,
		
		CustomWheelModel = "models/notakid/gtavredux/scraptruck/scrap_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/scraptruck/scrap_r_wheel.mdl",
		CustomWheelPosFL = Vector(100,-43,-18),
		CustomWheelPosFR = Vector(100,43,-18),
		CustomWheelPosML = Vector(-47,-42,-15),
		CustomWheelPosMR = Vector(-47,42,-15),
		CustomWheelPosRL = Vector(-93,-42,-15),
		CustomWheelPosRR = Vector(-93,42,-15),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 20,
		RearWheelRadius = 20,
		

		
		CustomSteerAngle = 35,
		
		FirstPersonViewPos = Vector(0,-10,10),		
		SeatOffset = Vector(39,-22,43),
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
				pos = Vector(44,-22,12),
				ang = Angle(0,-90,0)
				
			},
		},
		Backfire = false,
		ExhaustPositions = {
			{
				pos = Vector(55,46,104),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(55,-46,104),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(55,46,104),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(55,-46,104),
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
		
		MaxGrip = 68,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 2800,
		PeakTorque = 280,
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
list.Set( "simfphys_vehicles", "sim_fphys_gtav_scrapreduxextra", V )