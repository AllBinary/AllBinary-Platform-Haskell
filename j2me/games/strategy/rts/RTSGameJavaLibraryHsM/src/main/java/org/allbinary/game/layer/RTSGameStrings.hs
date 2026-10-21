{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module RTSGameStrings where

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

data RTSGameStrings = RTSGameStrings
    { header_ :: JavaHeader
    , dRAG_TO_SPOT :: IORef (String)
    , nOT_YOURS :: IORef (String)
    , nEW_UNIT :: IORef (String)
    , nEW_WAYPOINT :: IORef (String)
    , bUILDING :: IORef (String)
    , uPGRADE :: IORef (String)
    , dOWNGRADE :: IORef (String)
    , nO_MONEY :: IORef (String)
    , sPOT_TAKEN :: IORef (String)
    , bUILDING_COLLISION :: IORef (String)
    , sTRUCTURE_TO_CLOSE :: IORef (String)
    , mAP_EDGE :: IORef (String)
    , rOAD_COLLISION :: IORef (String)
    , sELECT_BUILD_SPOT :: IORef (String)
    , bUILD_ON_PATH :: IORef (String)
    , dRAGGABLE :: IORef (String)
    }

instance JavaNull RTSGameStrings where
    javaNull = javaNullRecord "RTSGameStrings"

instance JavaEquals RTSGameStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSGameStrings where
    (==) = jrecordEquals

instance JavaObjectClass RTSGameStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSGameStrings
newRecord_ = do
    header_ <- newJavaHeader
    dRAG_TO_SPOT <- newIORef ""
    nOT_YOURS <- newIORef ""
    nEW_UNIT <- newIORef ""
    nEW_WAYPOINT <- newIORef ""
    bUILDING <- newIORef ""
    uPGRADE <- newIORef ""
    dOWNGRADE <- newIORef ""
    nO_MONEY <- newIORef ""
    sPOT_TAKEN <- newIORef ""
    bUILDING_COLLISION <- newIORef ""
    sTRUCTURE_TO_CLOSE <- newIORef ""
    mAP_EDGE <- newIORef ""
    rOAD_COLLISION <- newIORef ""
    sELECT_BUILD_SPOT <- newIORef ""
    bUILD_ON_PATH <- newIORef ""
    dRAGGABLE <- newIORef ""
    let this = RTSGameStrings header_ dRAG_TO_SPOT nOT_YOURS nEW_UNIT nEW_WAYPOINT bUILDING uPGRADE dOWNGRADE nO_MONEY sPOT_TAKEN bUILDING_COLLISION sTRUCTURE_TO_CLOSE mAP_EDGE rOAD_COLLISION sELECT_BUILD_SPOT bUILD_ON_PATH dRAGGABLE
    jregisterLevel header_ this
    pure this

initFields_ :: RTSGameStrings -> IO ()
initFields_ this = do
    jset this.dRAG_TO_SPOT ("Please Drag")
    jset this.nOT_YOURS ("Not Yours")
    jset this.nEW_UNIT ("New Unit")
    jset this.nEW_WAYPOINT ("New Waypoint")
    jset this.bUILDING ("Building")
    jset this.uPGRADE ("Upgrading")
    jset this.dOWNGRADE ("Downgrading")
    jset this.nO_MONEY ("Not Enough Money")
    jset this.sPOT_TAKEN ("Spot Taken")
    jset this.bUILDING_COLLISION ("Building Collision")
    jset this.sTRUCTURE_TO_CLOSE ("Building To Close")
    jset this.mAP_EDGE ("Map Edge")
    jset this.rOAD_COLLISION ("Road Collision")
    jset this.sELECT_BUILD_SPOT ("Select Build Spot")
    jset this.bUILD_ON_PATH ("Not On Path")
    jset this.dRAGGABLE ("Draggable")
    pure ()

new_ :: IO RTSGameStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSGameStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RTSGameStrings)
getInstance = do
        pure (RTSGameStrings.instance_)


