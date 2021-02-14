{-# LANGUAGE TemplateHaskell #-}

module Rattletrap.Type.Attribute.UniqueId where

import Rattletrap.Type.Common
import qualified Rattletrap.Type.RemoteId as RemoteId
import qualified Rattletrap.Type.U8 as U8
import Rattletrap.Decode.Common
import Rattletrap.Encode.Common

data UniqueId = UniqueId
  { systemId :: U8.U8
  , remoteId :: RemoteId.RemoteId
  , localId :: U8.U8
  }
  deriving (Eq, Show)

$(deriveJson ''UniqueId)

bitPut :: UniqueId -> BitPut ()
bitPut uniqueIdAttribute = do
  U8.bitPut $ systemId uniqueIdAttribute
  RemoteId.bitPut (remoteId uniqueIdAttribute)
  U8.bitPut $ localId uniqueIdAttribute

bitGet :: (Int, Int, Int) -> BitGet UniqueId
bitGet version = do
  systemId_ <- U8.bitGet
  UniqueId systemId_
    <$> RemoteId.bitGet version systemId_
    <*> U8.bitGet
