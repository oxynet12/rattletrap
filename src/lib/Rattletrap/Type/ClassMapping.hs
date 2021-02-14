{-# LANGUAGE TemplateHaskell #-}

module Rattletrap.Type.ClassMapping where

import Rattletrap.Type.Common
import qualified Rattletrap.Type.Str as Str
import qualified Rattletrap.Type.U32 as U32
import Rattletrap.Decode.Common
import Rattletrap.Encode.Common

data ClassMapping = ClassMapping
  { name :: Str.Str
  , streamId :: U32.U32
  }
  deriving (Eq, Show)

$(deriveJson ''ClassMapping)

bytePut :: ClassMapping -> BytePut
bytePut classMapping = do
  Str.bytePut (name classMapping)
  U32.bytePut (streamId classMapping)

byteGet :: ByteGet ClassMapping
byteGet = ClassMapping <$> Str.byteGet <*> U32.byteGet
