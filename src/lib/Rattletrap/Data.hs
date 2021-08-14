-- brittany --columns 120
module Rattletrap.Data where

import qualified Data.Bifunctor as Bifunctor
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Rattletrap.Type.AttributeType as AttributeType

parentClasses :: Map.Map Text.Text Text.Text
parentClasses = Map.fromList $ fmap
  (Bifunctor.bimap Text.pack Text.pack)
  [ ("Engine.Actor", "Core.Object")
  , ("Engine.GameReplicationInfo", "Engine.ReplicationInfo")
  , ("Engine.Info", "Engine.Actor")
  , ("Engine.Pawn", "Engine.Actor")
  , ("Engine.PlayerReplicationInfo", "Engine.ReplicationInfo")
  , ("Engine.ReplicationInfo", "Engine.Info")
  , ("Engine.TeamInfo", "Engine.ReplicationInfo")
  , ("ProjectX.GRI_X", "Engine.GameReplicationInfo")
  , ("ProjectX.Pawn_X", "Engine.Pawn")
  , ("ProjectX.PRI_X", "Engine.PlayerReplicationInfo")
  , ("TAGame.Ball_God_TA", "TAGame.Ball_TA")
  , ("TAGame.Ball_Haunted_TA", "TAGame.Ball_TA")
  , ("TAGame.Ball_TA", "TAGame.RBActor_TA")
  , ("TAGame.CameraSettingsActor_TA", "Engine.ReplicationInfo")
  , ("TAGame.Car_Season_TA", "TAGame.PRI_TA")
  , ("TAGame.Car_TA", "TAGame.Vehicle_TA")
  , ("TAGame.CarComponent_Boost_TA", "TAGame.CarComponent_TA")
  , ("TAGame.CarComponent_Dodge_TA", "TAGame.CarComponent_TA")
  , ("TAGame.CarComponent_DoubleJump_TA", "TAGame.CarComponent_TA")
  , ("TAGame.CarComponent_FlipCar_TA", "TAGame.CarComponent_TA")
  , ("TAGame.CarComponent_Jump_TA", "TAGame.CarComponent_TA")
  , ("TAGame.CarComponent_TA", "Engine.ReplicationInfo")
  , ("TAGame.CrowdActor_TA", "Engine.ReplicationInfo")
  , ("TAGame.CrowdManager_TA", "Engine.ReplicationInfo")
  , ("TAGame.GameEvent_Football_TA", "TAGame.GameEvent_Soccar_TA")
  , ("TAGame.GameEvent_GodBall_TA", "TAGame.GameEvent_Soccar_TA")
  , ("TAGame.GameEvent_Season_TA", "TAGame.GameEvent_Soccar_TA")
  , ("TAGame.GameEvent_Soccar_TA", "TAGame.GameEvent_Team_TA")
  , ("TAGame.GameEvent_SoccarPrivate_TA", "TAGame.GameEvent_Soccar_TA")
  , ("TAGame.GameEvent_SoccarSplitscreen_TA", "TAGame.GameEvent_SoccarPrivate_TA")
  , ("TAGame.GameEvent_TA", "Engine.ReplicationInfo")
  , ("TAGame.GameEvent_Team_TA", "TAGame.GameEvent_TA")
  , ("TAGame.GRI_TA", "ProjectX.GRI_X")
  , ("TAGame.HauntedBallTrapTrigger_TA", "Engine.Actor")
  , ("TAGame.InMapScoreboard_TA", "Engine.Actor")
  , ("TAGame.PRI_TA", "ProjectX.PRI_X")
  , ("TAGame.RBActor_TA", "ProjectX.Pawn_X")
  , ("TAGame.SpecialPickup_BallCarSpring_TA", "TAGame.SpecialPickup_Spring_TA")
  , ("TAGame.SpecialPickup_BallFreeze_TA", "TAGame.SpecialPickup_Targeted_TA")
  , ("TAGame.SpecialPickup_BallGravity_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_BallLasso_TA", "TAGame.SpecialPickup_GrapplingHook_TA")
  , ("TAGame.SpecialPickup_BallVelcro_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_Batarang_TA", "TAGame.SpecialPickup_BallLasso_TA")
  , ("TAGame.SpecialPickup_BoostOverride_TA", "TAGame.SpecialPickup_Targeted_TA")
  , ("TAGame.SpecialPickup_Football_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_GrapplingHook_TA", "TAGame.SpecialPickup_Targeted_TA")
  , ("TAGame.SpecialPickup_HauntedBallBeam_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_HitForce_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_Rugby_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_Spring_TA", "TAGame.SpecialPickup_Targeted_TA")
  , ("TAGame.SpecialPickup_Swapper_TA", "TAGame.SpecialPickup_Targeted_TA")
  , ("TAGame.SpecialPickup_TA", "TAGame.CarComponent_TA")
  , ("TAGame.SpecialPickup_Targeted_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.SpecialPickup_Tornado_TA", "TAGame.SpecialPickup_TA")
  , ("TAGame.Team_Soccar_TA", "TAGame.Team_TA")
  , ("TAGame.Team_TA", "Engine.TeamInfo")
  , ("TAGame.Vehicle_TA", "TAGame.RBActor_TA")
  , ("TAGame.VehiclePickup_Boost_TA", "TAGame.VehiclePickup_TA")
  , ("TAGame.VehiclePickup_TA", "Engine.ReplicationInfo")
  ]

classesWithLocation :: Set.Set Text.Text
classesWithLocation = Set.fromList $ fmap
  Text.pack
  [ "Archetypes.Ball.Ball_BasketBall_Mutator"
  , "Archetypes.Ball.Ball_Basketball"
  , "Archetypes.Ball.Ball_BasketBall"
  , "Archetypes.Ball.Ball_Breakout"
  , "Archetypes.Ball.Ball_Default"
  , "Archetypes.Ball.Ball_Puck"
  , "Archetypes.Ball.CubeBall"
  , "Archetypes.Car.Car_Default"
  , "Archetypes.GameEvent.GameEvent_Season:CarArchetype"
  , "Archetypes.SpecialPickups.SpecialPickup_Rugby"
  , "ProjectX.NetModeReplicator"
  , "TAGame.Ball_Breakout_TA"
  , "TAGame.Ball_God_TA"
  , "TAGame.Ball_Haunted_TA"
  , "TAGame.Ball_TA"
  , "TAGame.CameraSettingsActor_TA"
  , "TAGame.Car_Season_TA"
  , "TAGame.Car_TA"
  , "TAGame.CarComponent_Boost_TA"
  , "TAGame.CarComponent_Dodge_TA"
  , "TAGame.CarComponent_DoubleJump_TA"
  , "TAGame.CarComponent_FlipCar_TA"
  , "TAGame.CarComponent_Jump_TA"
  , "TAGame.Default__CameraSettingsActor_TA"
  , "TAGame.Default__PRI_TA"
  , "TAGame.GameEvent_Football_TA"
  , "TAGame.GameEvent_GodBall_TA"
  , "TAGame.GameEvent_Season_TA"
  , "TAGame.GameEvent_Soccar_TA"
  , "TAGame.GameEvent_SoccarPrivate_TA"
  , "TAGame.GameEvent_SoccarSplitscreen_TA"
  , "TAGame.GRI_TA"
  , "TAGame.MaxTimeWarningData_TA"
  , "TAGame.PickupTimer_TA"
  , "TAGame.PRI_TA"
  , "TAGame.RumblePickups_TA"
  , "TAGame.SpecialPickup_BallCarSpring_TA"
  , "TAGame.SpecialPickup_BallFreeze_TA"
  , "TAGame.SpecialPickup_BallGravity_TA"
  , "TAGame.SpecialPickup_BallLasso_TA"
  , "TAGame.SpecialPickup_BallVelcro_TA"
  , "TAGame.SpecialPickup_Batarang_TA"
  , "TAGame.SpecialPickup_BoostOverride_TA"
  , "TAGame.SpecialPickup_Football_TA"
  , "TAGame.SpecialPickup_GrapplingHook_TA"
  , "TAGame.SpecialPickup_HauntedBallBeam_TA"
  , "TAGame.SpecialPickup_HitForce_TA"
  , "TAGame.SpecialPickup_Rugby_TA"
  , "TAGame.SpecialPickup_Swapper_TA"
  , "TAGame.SpecialPickup_Tornado_TA"
  , "TAGame.Team_Soccar_TA"
  , "TheWorld:PersistentLevel.BreakOutActor_Platform_TA"
  , "TheWorld:PersistentLevel.CrowdActor_TA"
  , "TheWorld:PersistentLevel.CrowdManager_TA"
  , "TheWorld:PersistentLevel.InMapScoreboard_TA"
  , "TheWorld:PersistentLevel.VehiclePickup_Boost_TA"
  ]

classesWithRotation :: Set.Set Text.Text
classesWithRotation = Set.fromList $ fmap
  Text.pack
  [ "Archetypes.Ball.Ball_BasketBall_Mutator"
  , "Archetypes.Ball.Ball_Basketball"
  , "Archetypes.Ball.Ball_BasketBall"
  , "Archetypes.Ball.Ball_Breakout"
  , "Archetypes.Ball.Ball_Default"
  , "Archetypes.Ball.Ball_Puck"
  , "Archetypes.Ball.CubeBall"
  , "Archetypes.Car.Car_Default"
  , "Archetypes.GameEvent.GameEvent_Season:CarArchetype"
  , "Archetypes.SpecialPickups.SpecialPickup_Rugby"
  , "TAGame.Ball_Breakout_TA"
  , "TAGame.Ball_God_TA"
  , "TAGame.Ball_Haunted_TA"
  , "TAGame.Ball_TA"
  , "TAGame.Car_Season_TA"
  , "TAGame.Car_TA"
  ]

objectClasses :: Map.Map Text.Text Text.Text
objectClasses = Map.fromList $ fmap
  (Bifunctor.bimap Text.pack Text.pack)
  [ ("Archetypes.Ball.Ball_Anniversary", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_BasketBall_Mutator", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_Basketball", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_BasketBall", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_Beachball", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_Breakout", "TAGame.Ball_Breakout_TA")
  , ("Archetypes.Ball.Ball_Default", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_Football", "TAGame.Ball_TA")
  , ("Archetypes.Ball.Ball_God", "TAGame.Ball_God_TA")
  , ("Archetypes.Ball.Ball_Haunted", "TAGame.Ball_Haunted_TA")
  , ("Archetypes.Ball.Ball_Puck", "TAGame.Ball_TA")
  , ("Archetypes.Ball.CubeBall", "TAGame.Ball_TA")
  , ("Archetypes.Car.Car_Default", "TAGame.Car_TA")
  , ("Archetypes.CarComponents.CarComponent_Boost", "TAGame.CarComponent_Boost_TA")
  , ("Archetypes.CarComponents.CarComponent_Dodge", "TAGame.CarComponent_Dodge_TA")
  , ("Archetypes.CarComponents.CarComponent_DoubleJump", "TAGame.CarComponent_DoubleJump_TA")
  , ("Archetypes.CarComponents.CarComponent_FlipCar", "TAGame.CarComponent_FlipCar_TA")
  , ("Archetypes.CarComponents.CarComponent_Jump", "TAGame.CarComponent_Jump_TA")
  , ("Archetypes.GameEvent.GameEvent_Basketball", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_BasketballPrivate", "TAGame.GameEvent_SoccarPrivate_TA")
  , ("Archetypes.GameEvent.GameEvent_BasketballSplitscreen", "TAGame.GameEvent_SoccarSplitscreen_TA")
  , ("Archetypes.GameEvent.GameEvent_Breakout", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_Hockey", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_HockeyPrivate", "TAGame.GameEvent_SoccarPrivate_TA")
  , ("Archetypes.GameEvent.GameEvent_HockeySplitscreen", "TAGame.GameEvent_SoccarSplitscreen_TA")
  , ("Archetypes.GameEvent.GameEvent_Items", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_Season:CarArchetype", "TAGame.Car_TA")
  , ("Archetypes.GameEvent.GameEvent_Season", "TAGame.GameEvent_Season_TA")
  , ("Archetypes.GameEvent.GameEvent_Soccar", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_SoccarLan", "TAGame.GameEvent_Soccar_TA")
  , ("Archetypes.GameEvent.GameEvent_SoccarPrivate", "TAGame.GameEvent_SoccarPrivate_TA")
  , ("Archetypes.GameEvent.GameEvent_SoccarSplitscreen", "TAGame.GameEvent_SoccarSplitscreen_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BallFreeze", "TAGame.SpecialPickup_BallFreeze_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BallGrapplingHook", "TAGame.SpecialPickup_GrapplingHook_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BallLasso", "TAGame.SpecialPickup_BallLasso_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BallSpring", "TAGame.SpecialPickup_BallCarSpring_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BallVelcro", "TAGame.SpecialPickup_BallVelcro_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_Batarang", "TAGame.SpecialPickup_Batarang_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_BoostOverride", "TAGame.SpecialPickup_BoostOverride_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_CarSpring", "TAGame.SpecialPickup_BallCarSpring_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_Football", "TAGame.SpecialPickup_Football_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_GravityWell", "TAGame.SpecialPickup_BallGravity_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_HauntedBallBeam", "TAGame.SpecialPickup_HauntedBallBeam_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_Rugby", "TAGame.SpecialPickup_Rugby_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_StrongHit", "TAGame.SpecialPickup_HitForce_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_Swapper", "TAGame.SpecialPickup_Swapper_TA")
  , ("Archetypes.SpecialPickups.SpecialPickup_Tornado", "TAGame.SpecialPickup_Tornado_TA")
  , ("Archetypes.Teams.Team0", "TAGame.Team_Soccar_TA")
  , ("Archetypes.Teams.Team1", "TAGame.Team_Soccar_TA")
  , ("GameInfo_Basketball.GameInfo.GameInfo_Basketball:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_Breakout.GameInfo.GameInfo_Breakout:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_FootBall.GameInfo.GameInfo_FootBall:Archetype", "TAGame.GameEvent_Football_TA")
  , ("GameInfo_FootBall.GameInfo.GameInfo_FootBall:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("gameinfo_godball.GameInfo.gameinfo_godball:Archetype", "TAGame.GameEvent_GodBall_TA")
  , ("GameInfo_GodBall.GameInfo.GameInfo_GodBall:Archetype", "TAGame.GameEvent_GodBall_TA")
  , ("gameinfo_godball.GameInfo.gameinfo_godball:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_GodBall.GameInfo.GameInfo_GodBall:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("Gameinfo_Hockey.GameInfo.Gameinfo_Hockey:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_Items.GameInfo.GameInfo_Items:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_Season.GameInfo.GameInfo_Season:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("GameInfo_Soccar.GameInfo.GameInfo_Soccar:GameReplicationInfoArchetype", "TAGame.GRI_TA")
  , ("Haunted_TrainStation_P.TheWorld:PersistentLevel.HauntedBallTrapTrigger_TA_0", "TAGame.HauntedBallTrapTrigger_TA")
  , ("Haunted_TrainStation_P.TheWorld:PersistentLevel.HauntedBallTrapTrigger_TA_1", "TAGame.HauntedBallTrapTrigger_TA")
  , ("ProjectX.Default__NetModeReplicator_X", "ProjectX.NetModeReplicator")
  , ("TAGame.Default__CameraSettingsActor_TA", "TAGame.CameraSettingsActor_TA")
  , ("TAGame.Default__MaxTimeWarningData_TA", "TAGame.MaxTimeWarningData_TA")
  , ("TAGame.Default__PickupTimer_TA", "TAGame.PickupTimer_TA")
  , ("TAGame.Default__PRI_TA", "TAGame.PRI_TA")
  , ("TAGame.Default__RumblePickups_TA", "TAGame.RumblePickups_TA")
  , ("TheWorld:PersistentLevel.BreakOutActor_Platform_TA", "TAGame.BreakOutActor_Platform_TA")
  , ("TheWorld:PersistentLevel.CrowdActor_TA", "TAGame.CrowdActor_TA")
  , ("TheWorld:PersistentLevel.CrowdManager_TA", "TAGame.CrowdManager_TA")
  , ("TheWorld:PersistentLevel.InMapScoreboard_TA", "TAGame.InMapScoreboard_TA")
  , ("TheWorld:PersistentLevel.VehiclePickup_Boost_TA", "TAGame.VehiclePickup_Boost_TA")
  ]

attributeTypes :: Map.Map Text.Text AttributeType.AttributeType
attributeTypes = Map.fromList $ fmap
  (Bifunctor.first Text.pack)
  [ ("Engine.Actor:bBlockActors", AttributeType.Boolean)
  , ("Engine.Actor:bCollideActors", AttributeType.Boolean)
  , ("Engine.Actor:bHidden", AttributeType.Boolean)
  , ("Engine.Actor:DrawScale", AttributeType.Float)
  , ("Engine.Actor:RemoteRole", AttributeType.Enum)
  , ("Engine.Actor:Role", AttributeType.Enum)
  , ("Engine.GameReplicationInfo:bMatchIsOver", AttributeType.Boolean)
  , ("Engine.GameReplicationInfo:GameClass", AttributeType.FlaggedInt)
  , ("Engine.GameReplicationInfo:ServerName", AttributeType.String)
  , ("Engine.Pawn:PlayerReplicationInfo", AttributeType.FlaggedInt)
  , ("Engine.PlayerReplicationInfo:bBot", AttributeType.Boolean)
  , ("Engine.PlayerReplicationInfo:bIsSpectator", AttributeType.Boolean)
  , ("Engine.PlayerReplicationInfo:bReadyToPlay", AttributeType.Boolean)
  , ("Engine.PlayerReplicationInfo:bTimedOut", AttributeType.Boolean)
  , ("Engine.PlayerReplicationInfo:bWaitingPlayer", AttributeType.Boolean)
  , ("Engine.PlayerReplicationInfo:Ping", AttributeType.Byte)
  , ("Engine.PlayerReplicationInfo:PlayerID", AttributeType.Int)
  , ("Engine.PlayerReplicationInfo:PlayerName", AttributeType.String)
  , ("Engine.PlayerReplicationInfo:RemoteUserData", AttributeType.String)
  , ("Engine.PlayerReplicationInfo:Score", AttributeType.Int)
  , ("Engine.PlayerReplicationInfo:Team", AttributeType.FlaggedInt)
  , ("Engine.PlayerReplicationInfo:UniqueId", AttributeType.UniqueId)
  , ("Engine.ReplicatedActor_ORS:ReplicatedOwner", AttributeType.FlaggedInt)
  , ("Engine.TeamInfo:Score", AttributeType.Int)
  , ("ProjectX.GRI_X:bGameStarted", AttributeType.Boolean)
  , ("ProjectX.GRI_X:GameServerID", AttributeType.QWord)
  , ("ProjectX.GRI_X:MatchGUID", AttributeType.String)
  , ("ProjectX.GRI_X:ReplicatedGameMutatorIndex", AttributeType.Int)
  , ("ProjectX.GRI_X:ReplicatedGamePlaylist", AttributeType.Int)
  , ("ProjectX.GRI_X:Reservations", AttributeType.Reservation)
  , ("TAGame.Ball_Breakout_TA:AppliedDamage", AttributeType.AppliedDamage)
  , ("TAGame.Ball_Breakout_TA:DamageIndex", AttributeType.Int)
  , ("TAGame.Ball_Breakout_TA:LastTeamTouch", AttributeType.Byte)
  , ("TAGame.Ball_God_TA:TargetSpeed", AttributeType.Float)
  , ("TAGame.Ball_Haunted_TA:bIsBallBeamed", AttributeType.Boolean)
  , ("TAGame.Ball_Haunted_TA:DeactivatedGoalIndex", AttributeType.Byte)
  , ("TAGame.Ball_Haunted_TA:LastTeamTouch", AttributeType.Byte)
  , ("TAGame.Ball_Haunted_TA:ReplicatedBeamBrokenValue", AttributeType.Byte)
  , ("TAGame.Ball_Haunted_TA:TotalActiveBeams", AttributeType.Byte)
  , ("TAGame.Ball_TA:GameEvent", AttributeType.FlaggedInt)
  , ("TAGame.Ball_TA:HitTeamNum", AttributeType.Byte)
  , ("TAGame.Ball_TA:ReplicatedAddedCarBounceScale", AttributeType.Float)
  , ("TAGame.Ball_TA:ReplicatedBallMaxLinearSpeedScale", AttributeType.Float)
  , ("TAGame.Ball_TA:ReplicatedBallScale", AttributeType.Float)
  , ("TAGame.Ball_TA:ReplicatedExplosionData", AttributeType.Explosion)
  , ("TAGame.Ball_TA:ReplicatedExplosionDataExtended", AttributeType.ExtendedExplosion)
  , ("TAGame.Ball_TA:ReplicatedPhysMatOverride", AttributeType.FlaggedInt)
  , ("TAGame.Ball_TA:ReplicatedWorldBounceScale", AttributeType.Float)
  , ("TAGame.BreakOutActor_Platform_TA:DamageState", AttributeType.DamageState)
  , ("TAGame.CameraSettingsActor_TA:bMouseCameraToggleEnabled", AttributeType.Boolean)
  , ("TAGame.CameraSettingsActor_TA:bUsingBehindView", AttributeType.Boolean)
  , ("TAGame.CameraSettingsActor_TA:bUsingSecondaryCamera", AttributeType.Boolean)
  , ("TAGame.CameraSettingsActor_TA:bUsingSwivel", AttributeType.Boolean)
  , ("TAGame.CameraSettingsActor_TA:CameraPitch", AttributeType.Byte)
  , ("TAGame.CameraSettingsActor_TA:CameraYaw", AttributeType.Byte)
  , ("TAGame.CameraSettingsActor_TA:PRI", AttributeType.FlaggedInt)
  , ("TAGame.CameraSettingsActor_TA:ProfileSettings", AttributeType.CamSettings)
  , ("TAGame.Car_TA:AddedBallForceMultiplier", AttributeType.Float)
  , ("TAGame.Car_TA:AddedCarForceMultiplier", AttributeType.Float)
  , ("TAGame.Car_TA:AttachedPickup", AttributeType.FlaggedInt)
  , ("TAGame.Car_TA:ClubColors", AttributeType.ClubColors)
  , ("TAGame.Car_TA:ReplicatedDemolish_CustomFX", AttributeType.CustomDemolish)
  , ("TAGame.Car_TA:ReplicatedDemolish", AttributeType.Demolish)
  , ("TAGame.Car_TA:RumblePickups", AttributeType.FlaggedInt)
  , ("TAGame.Car_TA:TeamPaint", AttributeType.TeamPaint)
  , ("TAGame.CarComponent_Boost_TA:bNoBoost", AttributeType.Boolean)
  , ("TAGame.CarComponent_Boost_TA:BoostModifier", AttributeType.Float)
  , ("TAGame.CarComponent_Boost_TA:bUnlimitedBoost", AttributeType.Boolean)
  , ("TAGame.CarComponent_Boost_TA:RechargeDelay", AttributeType.Float)
  , ("TAGame.CarComponent_Boost_TA:RechargeRate", AttributeType.Float)
  , ("TAGame.CarComponent_Boost_TA:ReplicatedBoostAmount", AttributeType.Byte)
  , ("TAGame.CarComponent_Boost_TA:UnlimitedBoostRefCount", AttributeType.Int)
  , ("TAGame.CarComponent_Dodge_TA:DodgeTorque", AttributeType.Location)
  , ("TAGame.CarComponent_FlipCar_TA:bFlipRight", AttributeType.Boolean)
  , ("TAGame.CarComponent_FlipCar_TA:FlipCarTime", AttributeType.Float)
  , ("TAGame.CarComponent_TA:ReplicatedActive", AttributeType.Byte)
  , ("TAGame.CarComponent_TA:ReplicatedActivityTime", AttributeType.Float)
  , ("TAGame.CarComponent_TA:Vehicle", AttributeType.FlaggedInt)
  , ("TAGame.CrowdActor_TA:GameEvent", AttributeType.FlaggedInt)
  , ("TAGame.CrowdActor_TA:ModifiedNoise", AttributeType.Float)
  , ("TAGame.CrowdActor_TA:ReplicatedCountDownNumber", AttributeType.Int)
  , ("TAGame.CrowdActor_TA:ReplicatedOneShotSound", AttributeType.FlaggedInt)
  , ("TAGame.CrowdActor_TA:ReplicatedRoundCountDownNumber", AttributeType.Int)
  , ("TAGame.CrowdManager_TA:GameEvent", AttributeType.FlaggedInt)
  , ("TAGame.CrowdManager_TA:ReplicatedGlobalOneShotSound", AttributeType.FlaggedInt)
  , ("TAGame.GameEvent_Soccar_TA:bBallHasBeenHit", AttributeType.Boolean)
  , ("TAGame.GameEvent_Soccar_TA:bClubMatch", AttributeType.Boolean)
  , ("TAGame.GameEvent_Soccar_TA:bOverTime", AttributeType.Boolean)
  , ("TAGame.GameEvent_Soccar_TA:bUnlimitedTime", AttributeType.Boolean)
  , ("TAGame.GameEvent_Soccar_TA:GameTime", AttributeType.Int)
  , ("TAGame.GameEvent_Soccar_TA:MaxScore", AttributeType.Int)
  , ("TAGame.GameEvent_Soccar_TA:ReplicatedMusicStinger", AttributeType.MusicStinger)
  , ("TAGame.GameEvent_Soccar_TA:ReplicatedScoredOnTeam", AttributeType.Byte)
  , ("TAGame.GameEvent_Soccar_TA:ReplicatedServerPerformanceState", AttributeType.Byte)
  , ("TAGame.GameEvent_Soccar_TA:ReplicatedStatEvent", AttributeType.StatEvent)
  , ("TAGame.GameEvent_Soccar_TA:RoundNum", AttributeType.Int)
  , ("TAGame.GameEvent_Soccar_TA:SecondsRemaining", AttributeType.Int)
  , ("TAGame.GameEvent_Soccar_TA:SeriesLength", AttributeType.Int)
  , ("TAGame.GameEvent_Soccar_TA:SubRulesArchetype", AttributeType.FlaggedInt)
  , ("TAGame.GameEvent_SoccarPrivate_TA:MatchSettings", AttributeType.PrivateMatchSettings)
  , ("TAGame.GameEvent_TA:bCanVoteToForfeit", AttributeType.Boolean)
  , ("TAGame.GameEvent_TA:bHasLeaveMatchPenalty", AttributeType.Boolean)
  , ("TAGame.GameEvent_TA:BotSkill", AttributeType.Int)
  , ("TAGame.GameEvent_TA:GameMode", AttributeType.GameMode)
  , ("TAGame.GameEvent_TA:MatchTypeClass", AttributeType.FlaggedInt)
  , ("TAGame.GameEvent_TA:ReplicatedGameStateTimeRemaining", AttributeType.Int)
  , ("TAGame.GameEvent_TA:ReplicatedRoundCountDownNumber", AttributeType.Int)
  , ("TAGame.GameEvent_TA:ReplicatedStateIndex", AttributeType.Byte)
  , ("TAGame.GameEvent_TA:ReplicatedStateName", AttributeType.Int)
  , ("TAGame.GameEvent_Team_TA:bForfeit", AttributeType.Boolean)
  , ("TAGame.GameEvent_Team_TA:MaxTeamSize", AttributeType.Int)
  , ("TAGame.GRI_TA:NewDedicatedServerIP", AttributeType.String)
  , ("TAGame.MaxTimeWarningData_TA:EndGameEpochTime", AttributeType.Int64)
  , ("TAGame.MaxTimeWarningData_TA:EndGameWarningEpochTime", AttributeType.Int64)
  , ("TAGame.PRI_TA:bIsDistracted", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bIsInSplitScreen", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bMatchMVP", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bOnlineLoadoutSet", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bOnlineLoadoutsSet", AttributeType.Boolean)
  , ("TAGame.PRI_TA:BotProductName", AttributeType.Int)
  , ("TAGame.PRI_TA:bReady", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bUsingBehindView", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bUsingItems", AttributeType.Boolean)
  , ("TAGame.PRI_TA:bUsingSecondaryCamera", AttributeType.Boolean)
  , ("TAGame.PRI_TA:CameraPitch", AttributeType.Byte)
  , ("TAGame.PRI_TA:CameraSettings", AttributeType.CamSettings)
  , ("TAGame.PRI_TA:CameraYaw", AttributeType.Byte)
  , ("TAGame.PRI_TA:ClientLoadout", AttributeType.Loadout)
  , ("TAGame.PRI_TA:ClientLoadoutOnline", AttributeType.LoadoutOnline)
  , ("TAGame.PRI_TA:ClientLoadouts", AttributeType.Loadouts)
  , ("TAGame.PRI_TA:ClientLoadoutsOnline", AttributeType.LoadoutsOnline)
  , ("TAGame.PRI_TA:ClubID", AttributeType.Int64)
  , ("TAGame.PRI_TA:MatchAssists", AttributeType.Int)
  , ("TAGame.PRI_TA:MatchBreakoutDamage", AttributeType.Int)
  , ("TAGame.PRI_TA:MatchGoals", AttributeType.Int)
  , ("TAGame.PRI_TA:MatchSaves", AttributeType.Int)
  , ("TAGame.PRI_TA:MatchScore", AttributeType.Int)
  , ("TAGame.PRI_TA:MatchShots", AttributeType.Int)
  , ("TAGame.PRI_TA:MaxTimeTillItem", AttributeType.Int)
  , ("TAGame.PRI_TA:PartyLeader", AttributeType.PartyLeader)
  , ("TAGame.PRI_TA:PawnType", AttributeType.Byte)
  , ("TAGame.PRI_TA:PersistentCamera", AttributeType.FlaggedInt)
  , ("TAGame.PRI_TA:PlayerHistoryKey", AttributeType.PlayerHistoryKey)
  , ("TAGame.PRI_TA:PlayerHistoryValid", AttributeType.Boolean)
  , ("TAGame.PRI_TA:PrimaryTitle", AttributeType.Title)
  , ("TAGame.PRI_TA:ReplicatedGameEvent", AttributeType.FlaggedInt)
  , ("TAGame.PRI_TA:ReplicatedWorstNetQualityBeyondLatency", AttributeType.Byte)
  , ("TAGame.PRI_TA:SecondaryTitle", AttributeType.Title)
  , ("TAGame.PRI_TA:SkillTier", AttributeType.FlaggedByte)
  , ("TAGame.PRI_TA:SpectatorShortcut", AttributeType.Int)
  , ("TAGame.PRI_TA:SteeringSensitivity", AttributeType.Float)
  , ("TAGame.PRI_TA:TimeTillItem", AttributeType.Int)
  , ("TAGame.PRI_TA:Title", AttributeType.Int)
  , ("TAGame.PRI_TA:TotalXP", AttributeType.Int)
  , ("TAGame.RBActor_TA:bFrozen", AttributeType.Boolean)
  , ("TAGame.RBActor_TA:bIgnoreSyncing", AttributeType.Boolean)
  , ("TAGame.RBActor_TA:bReplayActor", AttributeType.Boolean)
  , ("TAGame.RBActor_TA:ReplicatedRBState", AttributeType.RigidBodyState)
  , ("TAGame.RBActor_TA:WeldedInfo", AttributeType.WeldedInfo)
  , ("TAGame.RumblePickups_TA:AttachedPickup", AttributeType.FlaggedInt)
  , ("TAGame.RumblePickups_TA:ConcurrentItemCount", AttributeType.Int)
  , ("TAGame.RumblePickups_TA:PickupInfo", AttributeType.PickupInfo)
  , ("TAGame.SpecialPickup_BallFreeze_TA:RepOrigSpeed", AttributeType.Float)
  , ("TAGame.SpecialPickup_BallVelcro_TA:AttachTime", AttributeType.Float)
  , ("TAGame.SpecialPickup_BallVelcro_TA:bBroken", AttributeType.Boolean)
  , ("TAGame.SpecialPickup_BallVelcro_TA:bHit", AttributeType.Boolean)
  , ("TAGame.SpecialPickup_BallVelcro_TA:BreakTime", AttributeType.Float)
  , ("TAGame.SpecialPickup_Football_TA:WeldedBall", AttributeType.FlaggedInt)
  , ("TAGame.SpecialPickup_Rugby_TA:bBallWelded", AttributeType.Boolean)
  , ("TAGame.SpecialPickup_Targeted_TA:Targeted", AttributeType.FlaggedInt)
  , ("TAGame.Team_Soccar_TA:GameScore", AttributeType.Int)
  , ("TAGame.Team_TA:ClubColors", AttributeType.ClubColors)
  , ("TAGame.Team_TA:ClubID", AttributeType.Int64)
  , ("TAGame.Team_TA:CustomTeamName", AttributeType.String)
  , ("TAGame.Team_TA:Difficulty", AttributeType.Int)
  , ("TAGame.Team_TA:GameEvent", AttributeType.FlaggedInt)
  , ("TAGame.Team_TA:LogoData", AttributeType.FlaggedInt)
  , ("TAGame.Vehicle_TA:bDriving", AttributeType.Boolean)
  , ("TAGame.Vehicle_TA:bReplicatedHandbrake", AttributeType.Boolean)
  , ("TAGame.Vehicle_TA:ReplicatedSteer", AttributeType.Byte)
  , ("TAGame.Vehicle_TA:ReplicatedThrottle", AttributeType.Byte)
  , ("TAGame.VehiclePickup_TA:bNoPickup", AttributeType.Boolean)
  , ("TAGame.VehiclePickup_TA:NewReplicatedPickupData", AttributeType.PickupNew)
  , ("TAGame.VehiclePickup_TA:ReplicatedPickupData", AttributeType.Pickup)
  ]
