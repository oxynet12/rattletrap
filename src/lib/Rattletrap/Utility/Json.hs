{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE FlexibleInstances #-}

module Rattletrap.Utility.Json
  ( module Rattletrap.Utility.Json
  , Aeson.FromJSON(parseJSON)
  , Aeson.ToJSON(toJSON)
  , Aeson.Value
  , Aeson.encode
  , Aeson.object
  , Aeson.withObject
  , Aeson.withText
  ) where

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Encode.Pretty as Aeson
import qualified Data.Aeson.Types as Aeson
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as LazyByteString
import qualified Data.Text as Text

toKey :: String -> Text.Text
toKey = Text.pack

fromKey :: Text.Text -> String
fromKey = Text.unpack

instance Aeson.KeyValue (String, Aeson.Value) where
  k .= v = (fromKey k, Aeson.toJSON v)

required
  :: Aeson.FromJSON value => Aeson.Object -> String -> Aeson.Parser value
required object key = object Aeson..: toKey key

optional
  :: Aeson.FromJSON value
  => Aeson.Object
  -> String
  -> Aeson.Parser (Maybe value)
optional object key = object Aeson..:? toKey key

pair :: (Aeson.ToJSON value, Aeson.KeyValue pair) => String -> value -> pair
pair key value = toKey key Aeson..= value

decode :: Aeson.FromJSON a => ByteString.ByteString -> Either String a
decode = Aeson.eitherDecodeStrict'

encodePretty :: Aeson.ToJSON a => a -> LazyByteString.ByteString
encodePretty = Aeson.encodePretty' Aeson.defConfig
  { Aeson.confCompare = compare
  , Aeson.confIndent = Aeson.Tab
  , Aeson.confTrailingNewline = True
  }
