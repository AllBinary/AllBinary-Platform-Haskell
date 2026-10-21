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
module WaypointRunnableSelectedLogHelper (module WaypointRunnableSelectedLogHelper, module WaypointRunnableLogHelper) where

import WaypointRunnableLogHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, start, start_super, start_impl, end, end_super, end_impl, logUtil, instanceC, commonStrings)
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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified WaypointRunnableLogHelper

data WaypointRunnableSelectedLogHelper = WaypointRunnableSelectedLogHelper
    { header_ :: JavaHeader
    , base :: WaypointRunnableLogHelper.WaypointRunnableLogHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull WaypointRunnableSelectedLogHelper where
    javaNull = javaNullRecord "WaypointRunnableSelectedLogHelper"

instance JavaEquals WaypointRunnableSelectedLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointRunnableSelectedLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass WaypointRunnableSelectedLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO WaypointRunnableSelectedLogHelper
newRecord_ = do
    base <- WaypointRunnableLogHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = WaypointRunnableSelectedLogHelper header_ base logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    pure this

initFields_ :: WaypointRunnableSelectedLogHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO WaypointRunnableSelectedLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointRunnableSelectedLogHelper -> IO ()
init_ this = do
    WaypointRunnableLogHelper.init_ this.base
    initFields_ this


getInstance :: IO (WaypointRunnableSelectedLogHelper)
getInstance = do
        pure (WaypointRunnableSelectedLogHelper.instanceC)


start :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: WaypointRunnableSelectedLogHelper))) () a1

start_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: WaypointRunnableSelectedLogHelper)) a1

start_impl :: WaypointRunnableSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
start_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) (jget ((jget (this).commonStrings)).sTART_RUNNABLE)))))) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


end :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end object_ a1 = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: WaypointRunnableSelectedLogHelper))) () a1

end_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end_super object_ a1 = (end_impl (javaCast object_ :: WaypointRunnableSelectedLogHelper)) a1

end_impl :: WaypointRunnableSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
end_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) (jget ((jget (this).commonStrings)).eND_RUNNABLE)))))) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


