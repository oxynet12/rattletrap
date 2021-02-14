{-# LANGUAGE TemplateHaskell #-}

module Rattletrap.Type.List where

import Rattletrap.Decode.Common
import Rattletrap.Encode.Common
import Rattletrap.Type.Common
import qualified Rattletrap.Type.U32 as U32

import qualified Control.Monad as Monad

newtype List a
  = List [a]
  deriving (Eq, Show)

$(deriveJson ''List)

fromList :: [a] -> List a
fromList = List

empty :: List a
empty = fromList []

toList :: List a -> [a]
toList (List x) = x

bytePut :: (a -> BytePut) -> List a -> BytePut
bytePut f x = do
  let v = toList x
  U32.bytePut . U32.fromWord32 . fromIntegral $ length v
  mapM_ f v

byteGet :: ByteGet a -> ByteGet (List a)
byteGet f = do
  size <- U32.byteGet
  replicateM (fromIntegral $ U32.toWord32 size) f

replicateM :: Monad m => Int -> m a -> m (List a)
replicateM n = fmap fromList . Monad.replicateM n

untilM :: Monad m => m (Maybe a) -> m (List a)
untilM f = untilMWith f 0 []

untilMWith :: Monad m => m (Maybe a) -> Int -> [(Int, a)] -> m (List a)
untilMWith f i xs = do
  m <- f
  case m of
    Nothing -> pure . fromList . reverse $ fmap snd xs
    Just x -> untilMWith f (i + 1) ((i, x) : xs)
