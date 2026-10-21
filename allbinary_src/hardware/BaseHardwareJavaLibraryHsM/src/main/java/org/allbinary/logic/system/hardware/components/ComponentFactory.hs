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
-- package org.allbinary.logic.system.hardware.components
module ComponentFactory where

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
import qualified Component -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ComponentFactory = ComponentFactory
    { header_ :: JavaHeader
    , vGA :: IORef (Component.Component)
    , iDE :: IORef (Component.Component)
    , sCSI :: IORef (Component.Component)
    , bRIDGE :: IORef (Component.Component)
    , eTHERNET :: IORef (Component.Component)
    , uSB :: IORef (Component.Component)
    , mULTIMEDIA :: IORef (Component.Component)
    , pCI :: IORef (Component.Component)
    , rAID :: IORef (Component.Component)
    , sMBUS :: IORef (Component.Component)
    , pIC :: IORef (Component.Component)
    , class_ :: IORef (Component.Component)
    , uNKNOWN :: IORef (Component.Component)
    }

instance JavaNull ComponentFactory where
    javaNull = javaNullRecord "ComponentFactory"

instance JavaEquals ComponentFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ComponentFactory where
    (==) = jrecordEquals

instance JavaObjectClass ComponentFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ComponentFactory
newRecord_ = do
    header_ <- newJavaHeader
    vGA <- newIORef javaNull
    iDE <- newIORef javaNull
    sCSI <- newIORef javaNull
    bRIDGE <- newIORef javaNull
    eTHERNET <- newIORef javaNull
    uSB <- newIORef javaNull
    mULTIMEDIA <- newIORef javaNull
    pCI <- newIORef javaNull
    rAID <- newIORef javaNull
    sMBUS <- newIORef javaNull
    pIC <- newIORef javaNull
    class_ <- newIORef javaNull
    uNKNOWN <- newIORef javaNull
    let this = ComponentFactory header_ vGA iDE sCSI bRIDGE eTHERNET uSB mULTIMEDIA pCI rAID sMBUS pIC class_ uNKNOWN
    jregisterLevel header_ this
    pure this

initFields_ :: ComponentFactory -> IO ()
initFields_ this = do
    jset this.vGA =<< (Component.new_1 "VGA")
    jset this.iDE =<< (Component.new_1 "IDE")
    jset this.sCSI =<< (Component.new_1 "SCSI")
    jset this.bRIDGE =<< (Component.new_1 "bridge")
    jset this.eTHERNET =<< (Component.new_1 "Ethernet")
    jset this.uSB =<< (Component.new_1 "USB")
    jset this.mULTIMEDIA =<< (Component.new_1 "Multimedia")
    jset this.pCI =<< (Component.new_1 "PCI")
    jset this.rAID =<< (Component.new_1 "RAID")
    jset this.sMBUS =<< (Component.new_1 "SMBus")
    jset this.pIC =<< (Component.new_1 "PIC")
    jset this.class_ =<< (Component.new_1 "Class")
    jset this.uNKNOWN =<< (Component.new_1 (jget ((jio (CommonStrings.getInstance))).uNKNOWN))
    pure ()

new_ :: IO ComponentFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ComponentFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ComponentFactory)
getInstance = do
        pure (ComponentFactory.instance_)


