{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer.waypoint.event
module WaypointEventHandlerFactory where

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
import qualified WaypointEventHandler -- same package or java.lang
import qualified Group -- org.allbinary.game.identification.Group

data WaypointEventHandlerFactory = WaypointEventHandlerFactory
    { header_ :: JavaHeader
    }

instance JavaNull WaypointEventHandlerFactory where
    javaNull = javaNullRecord "WaypointEventHandlerFactory"

instance JavaEquals WaypointEventHandlerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointEventHandlerFactory where
    (==) = jrecordEquals

instance JavaObjectClass WaypointEventHandlerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

eventHandlerArray = (jarrayFromList [(jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_)), (jio (WaypointEventHandler.new_))])

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointEventHandlerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = WaypointEventHandlerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: WaypointEventHandlerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WaypointEventHandlerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointEventHandlerFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: Group.Group -> IO (WaypointEventHandler.WaypointEventHandler)
getInstance groupInterface = do
        pure ((jindex WaypointEventHandlerFactory.eventHandlerArray ((Prelude.fromIntegral (jio (Group.getGroupId groupInterface))))))


removeAll :: IO (())
removeAll = do
        forM_ [((jlength WaypointEventHandlerFactory.eventHandlerArray) - 1), ((jlength WaypointEventHandlerFactory.eventHandlerArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (removeAllListeners ((jindex WaypointEventHandlerFactory.eventHandlerArray (index))))
        pure ()


