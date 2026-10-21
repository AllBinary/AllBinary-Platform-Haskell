{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
module IconLayerFactory where

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
import qualified IconLayer -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation

data IconLayerFactory = IconLayerFactory
    { header_ :: JavaHeader
    }

instance JavaNull IconLayerFactory where
    javaNull = javaNullRecord "IconLayerFactory"

instance JavaEquals IconLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IconLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass IconLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IconLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = IconLayerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: IconLayerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO IconLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IconLayerFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: Animation.Animation -> Int -> Int -> IO (IconLayer.IconLayer)
getInstance animationInterface width height = do
        (IconLayer.new_3 animationInterface width height)


