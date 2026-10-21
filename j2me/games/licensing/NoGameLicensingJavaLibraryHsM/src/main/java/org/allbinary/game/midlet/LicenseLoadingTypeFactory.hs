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
-- package org.allbinary.game.midlet
module LicenseLoadingTypeFactory where

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
import qualified LicenseLoadingType -- same package or java.lang

data LicenseLoadingTypeFactory = LicenseLoadingTypeFactory
    { header_ :: JavaHeader
    , iNITIAL_LOADING :: IORef (LicenseLoadingType.LicenseLoadingType)
    , gAME_START :: IORef (LicenseLoadingType.LicenseLoadingType)
    , lOGIN :: IORef (LicenseLoadingType.LicenseLoadingType)
    , oTHER :: IORef (LicenseLoadingType.LicenseLoadingType)
    }

instance JavaNull LicenseLoadingTypeFactory where
    javaNull = javaNullRecord "LicenseLoadingTypeFactory"

instance JavaEquals LicenseLoadingTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseLoadingTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass LicenseLoadingTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseLoadingTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    iNITIAL_LOADING <- newIORef javaNull
    gAME_START <- newIORef javaNull
    lOGIN <- newIORef javaNull
    oTHER <- newIORef javaNull
    let this = LicenseLoadingTypeFactory header_ iNITIAL_LOADING gAME_START lOGIN oTHER
    jregisterLevel header_ this
    pure this

initFields_ :: LicenseLoadingTypeFactory -> IO ()
initFields_ this = do
    jset this.iNITIAL_LOADING =<< (LicenseLoadingType.new_1 "Initial Loading")
    jset this.gAME_START =<< (LicenseLoadingType.new_1 "Game Start")
    jset this.lOGIN =<< (LicenseLoadingType.new_1 "Login")
    jset this.oTHER =<< (LicenseLoadingType.new_1 "Other/Usually The First Non Demo Level")
    pure ()

new_ :: IO LicenseLoadingTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseLoadingTypeFactory -> IO ()
init_ this = do
    initFields_ this


getIntance :: IO (LicenseLoadingTypeFactory)
getIntance = do
        pure (LicenseLoadingTypeFactory.instance_)


