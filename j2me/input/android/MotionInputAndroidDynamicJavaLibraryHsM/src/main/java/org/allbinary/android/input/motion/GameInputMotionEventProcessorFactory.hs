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
module GameInputMotionEventProcessorFactory where

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
import qualified BaseGameInputMotionEventProcessor -- same package or java.lang
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified GameInputMotionEventProcessorAPI1 -- org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1
import qualified GameInputMotionEventProcessorAPI5 -- org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5

data GameInputMotionEventProcessorFactory = GameInputMotionEventProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull GameInputMotionEventProcessorFactory where
    javaNull = javaNullRecord "GameInputMotionEventProcessorFactory"

instance JavaEquals GameInputMotionEventProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionEventProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionEventProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputMotionEventProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameInputMotionEventProcessorFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputMotionEventProcessorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameInputMotionEventProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputMotionEventProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BaseGameInputMotionEventProcessor.BaseGameInputMotionEventProcessor)
getInstance = do
    javaCatchReturn $ do
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION <= 4) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: BaseGameInputMotionEventProcessor.BaseGameInputMotionEventProcessor) (GameInputMotionEventProcessorAPI1.getInstance))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: BaseGameInputMotionEventProcessor.BaseGameInputMotionEventProcessor) (GameInputMotionEventProcessorAPI5.getInstance))


