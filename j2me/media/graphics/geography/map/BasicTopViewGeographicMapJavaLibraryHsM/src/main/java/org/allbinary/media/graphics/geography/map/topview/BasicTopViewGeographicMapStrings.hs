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
-- package org.allbinary.media.graphics.geography.map.topview
module BasicTopViewGeographicMapStrings where

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

data BasicTopViewGeographicMapStrings = BasicTopViewGeographicMapStrings
    { header_ :: JavaHeader
    , dEFAULT :: IORef (String)
    , oTHER :: IORef (String)
    , wALL :: IORef (String)
    , oFF_MAP :: IORef (String)
    , fLOOR :: IORef (String)
    , dOOR :: IORef (String)
    , sTAIRS_UP :: IORef (String)
    , sTAIRS_DOWN :: IORef (String)
    }

instance JavaNull BasicTopViewGeographicMapStrings where
    javaNull = javaNullRecord "BasicTopViewGeographicMapStrings"

instance JavaEquals BasicTopViewGeographicMapStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTopViewGeographicMapStrings where
    (==) = jrecordEquals

instance JavaObjectClass BasicTopViewGeographicMapStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTopViewGeographicMapStrings
newRecord_ = do
    header_ <- newJavaHeader
    dEFAULT <- newIORef ""
    oTHER <- newIORef ""
    wALL <- newIORef ""
    oFF_MAP <- newIORef ""
    fLOOR <- newIORef ""
    dOOR <- newIORef ""
    sTAIRS_UP <- newIORef ""
    sTAIRS_DOWN <- newIORef ""
    let this = BasicTopViewGeographicMapStrings header_ dEFAULT oTHER wALL oFF_MAP fLOOR dOOR sTAIRS_UP sTAIRS_DOWN
    jregisterLevel header_ this
    pure this

initFields_ :: BasicTopViewGeographicMapStrings -> IO ()
initFields_ this = do
    jset this.dEFAULT ("Default")
    jset this.oTHER ("Other")
    jset this.wALL ("Wall")
    jset this.oFF_MAP ("OffMap")
    jset this.fLOOR ("Floor")
    jset this.dOOR ("Door")
    jset this.sTAIRS_UP ("StairsUp")
    jset this.sTAIRS_DOWN ("StairsDown")
    pure ()

new_ :: IO BasicTopViewGeographicMapStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTopViewGeographicMapStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicTopViewGeographicMapStrings)
getInstance = do
        pure (BasicTopViewGeographicMapStrings.instance_)


