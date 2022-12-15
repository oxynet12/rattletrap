module Rattletrap.Type.AttributeType where

data AttributeType
  = AppliedDamage
  | Boolean
  | Byte
  | CamSettings
  | ClubColors
  | CustomDemolish
  | DamageState
  | Demolish
  | Enum
  | Explosion
  | ExtendedExplosion
  | FlaggedInt
  | FlaggedByte
  | Float
  | GameMode
  | GameServer
  | Int
  | Int64
  | Loadout
  | LoadoutOnline
  | Loadouts
  | LoadoutsOnline
  | Location
  | MusicStinger
  | PartyLeader
  | Pickup
  | PickupInfo
  | PickupNew
  | PlayerHistoryKey
  | PrivateMatchSettings
  | QWord
  | RepStatTitle
  | Reservation
  | RigidBodyState
  | Rotation
  | StatEvent
  | String
  | TeamPaint
  | Title
  | UniqueId
  | WeldedInfo
  deriving (Eq, Show)
