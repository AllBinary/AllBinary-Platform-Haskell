{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.layer.unit
module UnitWaypointStrings where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data UnitWaypointStrings = UnitWaypointStrings
    { header_ :: JavaHeader
    , pATHING :: IORef (String)
    , wANDERING :: IORef (String)
    , tHINKING :: IORef (String)
    , tHINKING_ABOUT_TARGET :: IORef (String)
    , tARGET :: IORef (String)
    , kILL :: IORef (String)
    , sTOP :: IORef (String)
    , wAYPOINT_DESTROYED_SHORT :: IORef (String)
    , wAYPOINT_DESTROYED :: IORef (String)
    , aLL_VISITED_SHORT :: IORef (String)
    , aLL_VISITED :: IORef (String)
    , aLREADY_THERE_SHORT :: IORef (String)
    , aLREADY_THERE :: IORef (String)
    , nEXT_PATH_NODE :: IORef (String)
    , _ALL_VISITED_SHORT :: IORef (String)
    , _ALREADY_THERE_SHORT :: IORef (String)
    , vISITED_MOST_OF_THE_PATH :: IORef (String)
    , rETURNING_AS_WAYPOINT_PATH_LIST :: IORef (String)
    }

instance JavaNull UnitWaypointStrings where
    javaNull = javaNullRecord "UnitWaypointStrings"

instance JavaEquals UnitWaypointStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitWaypointStrings where
    (==) = jrecordEquals

instance JavaObjectClass UnitWaypointStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

instance_ :: UnitWaypointStrings
{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO UnitWaypointStrings
newRecord_ = do
    header_ <- newJavaHeader
    pATHING <- newIORef ""
    wANDERING <- newIORef ""
    tHINKING <- newIORef ""
    tHINKING_ABOUT_TARGET <- newIORef ""
    tARGET <- newIORef ""
    kILL <- newIORef ""
    sTOP <- newIORef ""
    wAYPOINT_DESTROYED_SHORT <- newIORef ""
    wAYPOINT_DESTROYED <- newIORef ""
    aLL_VISITED_SHORT <- newIORef ""
    aLL_VISITED <- newIORef ""
    aLREADY_THERE_SHORT <- newIORef ""
    aLREADY_THERE <- newIORef ""
    nEXT_PATH_NODE <- newIORef ""
    _ALL_VISITED_SHORT <- newIORef ""
    _ALREADY_THERE_SHORT <- newIORef ""
    vISITED_MOST_OF_THE_PATH <- newIORef ""
    rETURNING_AS_WAYPOINT_PATH_LIST <- newIORef ""
    let this = UnitWaypointStrings header_ pATHING wANDERING tHINKING tHINKING_ABOUT_TARGET tARGET kILL sTOP wAYPOINT_DESTROYED_SHORT wAYPOINT_DESTROYED aLL_VISITED_SHORT aLL_VISITED aLREADY_THERE_SHORT aLREADY_THERE nEXT_PATH_NODE _ALL_VISITED_SHORT _ALREADY_THERE_SHORT vISITED_MOST_OF_THE_PATH rETURNING_AS_WAYPOINT_PATH_LIST
    jregisterLevel header_ this
    pure this

initFields_ :: UnitWaypointStrings -> IO ()
initFields_ this = do
    jset this.pATHING ("Pathing")
    jset this.wANDERING ("Order?")
    jset this.tHINKING ("Thinking")
    jset this.tHINKING_ABOUT_TARGET ("Hmmm")
    jset this.tARGET ("Target")
    jset this.kILL ("Kill!")
    jset this.sTOP ("Stop")
    jset this.wAYPOINT_DESTROYED_SHORT ("Uh Oh")
    jset this.wAYPOINT_DESTROYED ("Waypoint Destroyed")
    jset this.aLL_VISITED_SHORT ("Arrived")
    jset this.aLL_VISITED ("All Visited")
    jset this.aLREADY_THERE_SHORT ("Again?")
    jset this.aLREADY_THERE ("Already There")
    jset this.nEXT_PATH_NODE ((javaToString (jget ((jio (CommonLabels.getInstance))).nEXT) ++ " Path Node"))
    jset this._ALL_VISITED_SHORT (" Arrived")
    jset this._ALREADY_THERE_SHORT (" Again?")
    jset this.vISITED_MOST_OF_THE_PATH (" visited most of the path")
    jset this.rETURNING_AS_WAYPOINT_PATH_LIST (" returning as waypointPathsList was runningWaypointPathList")
    pure ()

new_ :: IO UnitWaypointStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UnitWaypointStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (UnitWaypointStrings)
getInstance = do
        pure (UnitWaypointStrings.instance_)


