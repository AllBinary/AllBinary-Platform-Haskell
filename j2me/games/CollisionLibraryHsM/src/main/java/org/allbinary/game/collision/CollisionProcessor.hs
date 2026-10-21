{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
module CollisionProcessor where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data CollisionProcessor = CollisionProcessor
    { header_ :: JavaHeader
    }

instance JavaNull CollisionProcessor where
    javaNull = javaNullRecord "CollisionProcessor"

instance JavaEquals CollisionProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollisionProcessor where
    (==) = jrecordEquals

instance JavaObjectClass CollisionProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollisionProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = CollisionProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    pure this

initFields_ :: CollisionProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CollisionProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollisionProcessor -> IO ()
init_ this = do
    initFields_ this


isCollision :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollisionProcessor))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollisionProcessor)) a1 a2

isCollision_impl :: CollisionProcessor -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_impl this myLayer myLayer2 = do
        pure (False)


