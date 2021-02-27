module Rattletrap.Type.Attribute.LoadoutsOnline where

import qualified Rattletrap.BitGet as BitGet
import qualified Rattletrap.BitPut as BitPut
import qualified Rattletrap.Type.Attribute.LoadoutOnline as LoadoutOnline
import Rattletrap.Type.Common
import qualified Rattletrap.Type.Str as Str
import qualified Rattletrap.Type.U32 as U32
import qualified Rattletrap.Type.Version as Version
import qualified Rattletrap.Utility.Json as Json
import qualified Rattletrap.Schema as Schema

import qualified Data.Map as Map

data LoadoutsOnline = LoadoutsOnline
  { blue :: LoadoutOnline.LoadoutOnline
  , orange :: LoadoutOnline.LoadoutOnline
  , unknown1 :: Bool
  , unknown2 :: Bool
  }
  deriving (Eq, Show)

$(deriveJson ''LoadoutsOnline)

schema :: Schema.Schema
schema = Schema.named "attribute-loadouts-online" $ Schema.object
  [ (Json.pair "blue" $ Schema.ref LoadoutOnline.schema, True)
  , (Json.pair "orange" $ Schema.ref LoadoutOnline.schema, True)
  , (Json.pair "unknown1" $ Schema.ref Schema.boolean, True)
  , (Json.pair "unknown2" $ Schema.ref Schema.boolean, True)
  ]

bitPut :: LoadoutsOnline -> BitPut.BitPut
bitPut loadoutsOnlineAttribute =
  LoadoutOnline.bitPut (blue loadoutsOnlineAttribute)
    <> LoadoutOnline.bitPut (orange loadoutsOnlineAttribute)
    <> BitPut.bool (unknown1 loadoutsOnlineAttribute)
    <> BitPut.bool (unknown2 loadoutsOnlineAttribute)

bitGet
  :: Version.Version -> Map.Map U32.U32 Str.Str -> BitGet.BitGet LoadoutsOnline
bitGet version objectMap =
  LoadoutsOnline
    <$> LoadoutOnline.bitGet version objectMap
    <*> LoadoutOnline.bitGet version objectMap
    <*> BitGet.bool
    <*> BitGet.bool
