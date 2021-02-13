{-# LANGUAGE TemplateHaskell #-}

module Rattletrap.Type.StatEventAttribute where

import Rattletrap.Type.Common
import Rattletrap.Type.Int32le
import Rattletrap.Decode.Common

import qualified Data.Binary.Bits.Put as BinaryBits

data StatEventAttribute = StatEventAttribute
  { statEventAttributeUnknown :: Bool
  , statEventAttributeObjectId :: Int32le
  }
  deriving (Eq, Show)

$(deriveJson ''StatEventAttribute)

putStatEventAttribute :: StatEventAttribute -> BinaryBits.BitPut ()
putStatEventAttribute statEventAttribute = do
  BinaryBits.putBool (statEventAttributeUnknown statEventAttribute)
  putInt32Bits (statEventAttributeObjectId statEventAttribute)

decodeStatEventAttributeBits :: DecodeBits StatEventAttribute
decodeStatEventAttributeBits =
  StatEventAttribute <$> getBool <*> decodeInt32leBits
