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
-- package org.allbinary.logic.system.os
module OperatingSystems where

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

data OperatingSystems = OperatingSystems
    { header_ :: JavaHeader
    , lINUX :: IORef (String)
    , wINDOWS :: IORef (String)
    , sOLARIS :: IORef (String)
    , wINDOWS2000 :: IORef (String)
    , wINDOWS_NT :: IORef (String)
    , wINDOWS_10 :: IORef (String)
    , wINDOWS_11 :: IORef (String)
    , wINDOWS_VISTA :: IORef (String)
    , wINDOWS_XP :: IORef (String)
    , aNDROID :: IORef (String)
    , hARMONY :: IORef (String)
    , unknownSpecificOSAllowed :: IORef (Bool)
    }

instance JavaNull OperatingSystems where
    javaNull = javaNullRecord "OperatingSystems"

instance JavaEquals OperatingSystems where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OperatingSystems where
    (==) = jrecordEquals

instance JavaObjectClass OperatingSystems where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OperatingSystems
newRecord_ = do
    header_ <- newJavaHeader
    lINUX <- newIORef ""
    wINDOWS <- newIORef ""
    sOLARIS <- newIORef ""
    wINDOWS2000 <- newIORef ""
    wINDOWS_NT <- newIORef ""
    wINDOWS_10 <- newIORef ""
    wINDOWS_11 <- newIORef ""
    wINDOWS_VISTA <- newIORef ""
    wINDOWS_XP <- newIORef ""
    aNDROID <- newIORef ""
    hARMONY <- newIORef ""
    unknownSpecificOSAllowed <- newIORef False
    let this = OperatingSystems header_ lINUX wINDOWS sOLARIS wINDOWS2000 wINDOWS_NT wINDOWS_10 wINDOWS_11 wINDOWS_VISTA wINDOWS_XP aNDROID hARMONY unknownSpecificOSAllowed
    jregisterLevel header_ this
    jregisterMethod header_ "isUnknownSpecificOSAllowed" (\() -> isUnknownSpecificOSAllowed_impl this)
    jregisterMethod header_ "setUnknownSpecificOSAllowed" (\() -> setUnknownSpecificOSAllowed_impl this)
    pure this

initFields_ :: OperatingSystems -> IO ()
initFields_ this = do
    jset this.lINUX ("Linux")
    jset this.wINDOWS ("Windows")
    jset this.sOLARIS ("Solaris")
    jset this.wINDOWS2000 ("Windows 2000")
    jset this.wINDOWS_NT ("Windows NT")
    jset this.wINDOWS_10 ("Windows 10")
    jset this.wINDOWS_11 ("Windows 11")
    jset this.wINDOWS_VISTA ("Windows Vista")
    jset this.wINDOWS_XP ("Windows XP")
    jset this.aNDROID ((jget (this).lINUX))
    jset this.hARMONY ("HarmonyOS")
    jset this.unknownSpecificOSAllowed (True)
    pure ()

new_ :: IO OperatingSystems
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OperatingSystems -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isUnknownSpecificOSAllowed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUnknownSpecificOSAllowed object_ = jmethod object_ "isUnknownSpecificOSAllowed" (\() -> (isUnknownSpecificOSAllowed_impl (javaCast object_ :: OperatingSystems))) ()

isUnknownSpecificOSAllowed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUnknownSpecificOSAllowed_super object_ = (isUnknownSpecificOSAllowed_impl (javaCast object_ :: OperatingSystems))

isUnknownSpecificOSAllowed_impl :: OperatingSystems -> IO (Bool)
isUnknownSpecificOSAllowed_impl this = do
        pure ((jget (this).unknownSpecificOSAllowed))


setUnknownSpecificOSAllowed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setUnknownSpecificOSAllowed object_ a1 = jmethod object_ "setUnknownSpecificOSAllowed" (\() -> (setUnknownSpecificOSAllowed_impl (javaCast object_ :: OperatingSystems))) () a1

setUnknownSpecificOSAllowed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setUnknownSpecificOSAllowed_super object_ a1 = (setUnknownSpecificOSAllowed_impl (javaCast object_ :: OperatingSystems)) a1

setUnknownSpecificOSAllowed_impl :: OperatingSystems -> Bool -> IO (())
setUnknownSpecificOSAllowed_impl this aUnknownSpecificOSAllowed = do
        jset (this).unknownSpecificOSAllowed (aUnknownSpecificOSAllowed)
        pure ()


getInstance :: IO (OperatingSystems)
getInstance = do
        pure (OperatingSystems.instance_)


