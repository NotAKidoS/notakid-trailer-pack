local V = {
	Name = "Phantom",
	Model = "models/notakid/gtavredux/phantom/phantom_main.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "GTA V Trucks",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,

	FLEX = {
		Trailers = {
			outputPos = Vector(-122,0,11),
			outputType = "axis",
		},
		Wipers = {
			from = 0,
			to = 1,
			length = 1,
			pose = "vehicle_wipers"
		}
	},

	Members = {
		Mass = 3400,
		LightsTable = "phantom_lights",
		CustomWheels = true,

		CustomSuspensionTravel = 0,
		StrengthenSuspension = true,

		CustomWheelModel = "models/notakid/gtavredux/phantom/phantom_f_wheel.mdl",
		CustomWheelModel_R = "models/notakid/gtavredux/phantom/phantom_r_wheel.mdl",
		CustomWheelPosFL = Vector(145.2,-41,-20),
		CustomWheelPosFR = Vector(145.2,41,-20),
		CustomWheelPosML = Vector(-92,-40,-17),
		CustomWheelPosMR = Vector(-92,40,-17),
		CustomWheelPosRL = Vector(-145,-40,-17),
		CustomWheelPosRR = Vector(-145,40,-17),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 21,
		RearWheelRadius = 20,

		FirstPersonViewPos = Vector(0,-10,10),		
		SeatOffset = Vector(62,-23,48),
		SeatPitch = 0,
		SeatYaw = 90,

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
		
		TurnSpeed = 2,
		CustomSteerAngle = 30,
		FastSteeringAngle = 18,
		SteeringFadeFastSpeed = 600,
		MaxGrip = 80,
		Efficiency = 1,
		GripOffset = 2,
		BrakePower = 40,

		IdleRPM = 600,
		LimitRPM = 2800,
		PowerBias = 0.4,
		PeakTorque = 200,
		PowerbandStart = 1500,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,

		snd_horn = "notakid/horns/truck_horn1.wav",
		EngineSoundPreset = 8,

		DifferentialGear = 0.3,
		Gears = {-0.2,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.24,1.55}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_phantomredux", V )

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
list.Set( "simfphys_lights", "phantom_lights", light_table)