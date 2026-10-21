{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.layer.waypoint
module WaypointRunnableLogHelper where

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
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface

data WaypointRunnableLogHelper = WaypointRunnableLogHelper
    { header_ :: JavaHeader
    }

instance JavaNull WaypointRunnableLogHelper where
    javaNull = javaNullRecord "WaypointRunnableLogHelper"

instance JavaEquals WaypointRunnableLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointRunnableLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass WaypointRunnableLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WaypointRunnableLogHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = WaypointRunnableLogHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    pure this

initFields_ :: WaypointRunnableLogHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WaypointRunnableLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointRunnableLogHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (WaypointRunnableLogHelper)
getInstance = do
        pure (WaypointRunnableLogHelper.instance_)


start :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: WaypointRunnableLogHelper))) () a1

start_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: WaypointRunnableLogHelper)) a1

start_impl :: WaypointRunnableLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start_impl this pathFindingLayerInterface = do
        pure ()


end :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end object_ a1 = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: WaypointRunnableLogHelper))) () a1

end_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end_super object_ a1 = (end_impl (javaCast object_ :: WaypointRunnableLogHelper)) a1

end_impl :: WaypointRunnableLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end_impl this pathFindingLayerInterface = do
        pure ()


