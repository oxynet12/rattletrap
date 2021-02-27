module Rattletrap.Type.Attribute.QWord where

import qualified Rattletrap.BitGet as BitGet
import qualified Rattletrap.BitPut as BitPut
import qualified Rattletrap.Schema as Schema
import Rattletrap.Type.Common
import qualified Rattletrap.Type.U64 as U64

newtype QWord = QWord
  { value :: U64.U64
  } deriving (Eq, Show)

$(deriveJson ''QWord)

schema :: Schema.Schema
schema = Schema.named "attribute-q-word" $ Schema.ref U64.schema

bitPut :: QWord -> BitPut.BitPut
bitPut qWordAttribute = U64.bitPut (value qWordAttribute)

bitGet :: BitGet.BitGet QWord
bitGet = QWord <$> U64.bitGet
