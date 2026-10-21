{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion
module GameInputMotionInfoFactory where

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
import qualified GameInputMotionInfo -- same package or java.lang
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified GameInputMotionInfoAPI1 -- org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1
import qualified GameInputMotionInfoAPI5 -- org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5

data GameInputMotionInfoFactory = GameInputMotionInfoFactory
    { header_ :: JavaHeader
    }

instance JavaNull GameInputMotionInfoFactory where
    javaNull = javaNullRecord "GameInputMotionInfoFactory"

instance JavaEquals GameInputMotionInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputMotionInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameInputMotionInfoFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputMotionInfoFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameInputMotionInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputMotionInfoFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameInputMotionInfo.GameInputMotionInfo)
getInstance = do
    javaCatchReturn $ do
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION <= 4) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: GameInputMotionInfo.GameInputMotionInfo) (GameInputMotionInfoAPI1.getInstance))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: GameInputMotionInfo.GameInputMotionInfo) (GameInputMotionInfoAPI5.getInstance))


