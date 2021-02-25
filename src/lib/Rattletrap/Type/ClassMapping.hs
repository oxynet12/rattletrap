module Rattletrap.Type.ClassMapping where

import qualified Rattletrap.ByteGet as ByteGet
import qualified Rattletrap.BytePut as BytePut
import qualified Rattletrap.Schema as Schema
import Rattletrap.Type.Common
import qualified Rattletrap.Type.Str as Str
import qualified Rattletrap.Type.U32 as U32
import qualified Rattletrap.Utility.Json as Json

data ClassMapping = ClassMapping
  { name :: Str.Str
  , streamId :: U32.U32
  }
  deriving (Eq, Show)

$(deriveJson ''ClassMapping)

schema :: Schema.Schema
schema = Schema.named "classMapping" $ Schema.object
  [ (Json.pair "name" $ Schema.ref Str.schema, True)
  , (Json.pair "stream_id" $ Schema.ref U32.schema, True)
  ]

bytePut :: ClassMapping -> BytePut.BytePut
bytePut x = Str.bytePut (name x) <> U32.bytePut (streamId x)

byteGet :: ByteGet.ByteGet ClassMapping
byteGet = ClassMapping <$> Str.byteGet <*> U32.byteGet
