module Rattletrap.Type.Attribute.Product where

import qualified Rattletrap.BitGet as BitGet
import qualified Rattletrap.BitPut as BitPut
import qualified Rattletrap.Type.Attribute.ProductValue as ProductValue
import Rattletrap.Type.Common
import qualified Rattletrap.Type.List as List
import qualified Rattletrap.Type.Str as Str
import qualified Rattletrap.Type.U32 as U32
import qualified Rattletrap.Type.U8 as U8
import qualified Rattletrap.Type.Version as Version

import qualified Data.Map as Map

data Product = Product
  { unknown :: Bool
  , objectId :: U32.U32
  , objectName :: Maybe Str.Str
  -- ^ read-only
  , value :: ProductValue.ProductValue
  }
  deriving (Eq, Show)

$(deriveJson ''Product)

putProductAttributes :: List.List Product -> BitPut.BitPut
putProductAttributes attributes =
  let v = List.toList attributes
  in (U8.bitPut . U8.fromWord8 . fromIntegral $ length v) <> foldMap bitPut v

bitPut :: Product -> BitPut.BitPut
bitPut attribute =
  BitPut.bool (unknown attribute)
    <> U32.bitPut (objectId attribute)
    <> ProductValue.bitPut (value attribute)

decodeProductAttributesBits
  :: Version.Version
  -> Map U32.U32 Str.Str
  -> BitGet.BitGet (List.List Product)
decodeProductAttributesBits version objectMap = do
  size <- U8.bitGet
  List.replicateM (fromIntegral $ U8.toWord8 size) $ bitGet version objectMap

bitGet :: Version.Version -> Map U32.U32 Str.Str -> BitGet.BitGet Product
bitGet version objectMap = do
  flag <- BitGet.bool
  objectId_ <- U32.bitGet
  let maybeObjectName = Map.lookup objectId_ objectMap
  value_ <- ProductValue.bitGet version objectId_ maybeObjectName
  pure (Product flag objectId_ maybeObjectName value_)
