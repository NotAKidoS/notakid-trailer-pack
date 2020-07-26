function simfphys.weapon:ValidClasses()
	local classes = {
		"sim_fphys_gtav_forklift",
	}
	return classes
end

function simfphys.weapon:Initialize( ent )
	--Carrage (axis) part
	ent.NAKCarrage = ents.Create("prop_physics")
	ent.NAKCarrage:SetModel( "models/notakid/gtavredux/forklift/forklift_carrage.mdl" )
	ent.NAKCarrage:SetPos( ent:GetPos() )
	ent.NAKCarrage:SetAngles( ent:GetAngles() )
	ent.NAKCarrage:Spawn()
	ent.NAKCarrage:Activate()
	ent.NAKCarrage:GetPhysicsObject():SetMass( 1 )
	ent.NAKCarrage:GetPhysicsObject():SetDragCoefficient( -9000 )
	ent.NAKCarrage:SetParent( ent, -1 )
	-- constraint.Weld( ent.NAKCarrage, ent, 0, 0, 0, true, true )
	--Forks (lift) part
	ent.NAKForks = ents.Create("prop_physics")
	ent.NAKForks:SetModel( "models/notakid/gtavredux/forklift/forklift_forks.mdl" )
	ent.NAKForks:SetPos( ent:GetPos() )
	ent.NAKForks:SetAngles( ent:GetAngles() )
	ent.NAKForks:Spawn()
	ent.NAKForks:Activate()
	ent.NAKForks:GetPhysicsObject():SetMass( 1000 )
	ent.NAKForks:GetPhysicsObject():SetDragCoefficient( -9000 )

	--constraint stuff
	local LPos = Vector(50,0,0)
	local LPos2 = Vector(50,0,72)
	local length = 72

	local hydraulic, rope, controller = constraint.Hydraulic(nil, ent, ent.NAKForks, 0, 0,    LPos2+Vector(0,10,0),  LPos+Vector(0,10,0),  length, 0, 0, KEY_NONE, 1, 15, "cable/rope", true)
	local hydraulic3, rope3, controller3 = constraint.Hydraulic(nil, ent, ent.NAKForks, 0, 0, LPos2+Vector(40,10,0), LPos+Vector(40,10,0), length, 0, 0, KEY_NONE, 1, 15, "cable/rope", true)
	local hydraulic4, rope4, controller4 = constraint.Hydraulic(nil, ent, ent.NAKForks, 0, 0, LPos2+Vector(0,-10,0), LPos+Vector(0,-10,0), length, 0, 0, KEY_NONE, 1, 15, "cable/rope", true)
	local hydraulic6, rope6, controller6 = constraint.Hydraulic(nil, ent, ent.NAKForks, 0, 0, LPos2+Vector(40,-10,0),LPos+Vector(40,-10,0),length, 0, 0, KEY_NONE, 1, 15, "cable/rope", true)
	
	--rope to lock the prop from going down too far
	-- constraint.Rope( ent, ent.NAKForks, 0, 0, LPos2, LPos, 55, 5, 0, 0, "cable/cable2", false )
	--rope to lock the prop from going up too far
	constraint.Rope( ent, ent.NAKForks, 0, 0, LPos2, LPos2, length, 0, 0, 0, "cable/cable2", false )
	
	--nocollide
	constraint.NoCollide( ent.NAKForks, ent, 0, 0	)
	
	ent.TrController = controller
	ent.TrController2 = controller2
	ent.TrController3 = controller3
	ent.TrController4 = controller4
	ent.TrController5 = controller5
	ent.TrController6 = controller6
	ent.TrController.direction = 1
	ent.TrController3.direction = 1
	ent.TrController4.direction = 1
	ent.TrController6.direction = 1
	NAK.PropRemove( ent, ent.NAKForks )
end

function simfphys.weapon:AimWeapon( ply, ent, pod )	
end

function simfphys.weapon:Think( vehicle )
	-- this function is called on tick
	
	local ply = vehicle:GetDriver()
	
	if not IsValid( ply ) then return end
	
	local fire = ply:KeyDown( IN_ATTACK )
	local fire2 = ply:KeyDown( IN_ATTACK2 )
	
	if fire then
		vehicle.TrController.direction = -1
		vehicle.TrController3.direction = -1
		vehicle.TrController4.direction = -1
		vehicle.TrController6.direction = -1
	elseif fire2 then
		vehicle.TrController.direction = 1
		vehicle.TrController3.direction = 1
		vehicle.TrController4.direction = 1
		vehicle.TrController6.direction = 1
	else
		vehicle.TrController.direction = 0
		vehicle.TrController3.direction = 0
		vehicle.TrController4.direction = 0
		vehicle.TrController6.direction = 0
	end
end

--//pinoos

function simfphys.weapon:PrimaryAttack( ent, ply )
	if not self:CanPrimaryAttack( ent ) then return end
	


	ent:EmitSound("Weapon_SMG1.NPC_Single")
	self:SetNextPrimaryFire( ent, CurTime() + 0.1 )
end
function simfphys.weapon:SecondaryAttack( ent, ply )
	if not self:CanSecondaryAttack( ent ) then return end
	
	ent.TrController.direction = 1

	ent.TrController3.direction = 1
	ent.TrController4.direction = 1

	ent.TrController6.direction = 1

	ent:EmitSound("Weapon_Mortar.Single")
	self:SetNextSecondaryFire( ent, CurTime() + 0.3 )
end
--//pp pp pp pp pp
function simfphys.weapon:CanPrimaryAttack( vehicle )
	vehicle.NextShoot = vehicle.NextShoot or 0
	return vehicle.NextShoot < CurTime()
end
function simfphys.weapon:SetNextPrimaryFire( vehicle, time )
	vehicle.NextShoot = time
end
function simfphys.weapon:CanSecondaryAttack( vehicle )
	vehicle.NextShoot2 = vehicle.NextShoot2 or 0
	return vehicle.NextShoot2 < CurTime()
end
function simfphys.weapon:SetNextSecondaryFire( vehicle, time )
	vehicle.NextShoot2 = time
end