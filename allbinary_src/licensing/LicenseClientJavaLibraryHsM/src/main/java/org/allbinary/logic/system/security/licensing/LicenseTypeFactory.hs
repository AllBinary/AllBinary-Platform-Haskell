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
-- package org.allbinary.logic.system.security.licensing
module LicenseTypeFactory where

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
import qualified LicenseType -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LicenseTypeFactory = LicenseTypeFactory
    { header_ :: JavaHeader
    , uNKNOWN :: IORef (LicenseType.LicenseType)
    , dEMO :: IORef (LicenseType.LicenseType)
    , nORMAL :: IORef (LicenseType.LicenseType)
    }

instance JavaNull LicenseTypeFactory where
    javaNull = javaNullRecord "LicenseTypeFactory"

instance JavaEquals LicenseTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass LicenseTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    uNKNOWN <- newIORef javaNull
    dEMO <- newIORef javaNull
    nORMAL <- newIORef javaNull
    let this = LicenseTypeFactory header_ uNKNOWN dEMO nORMAL
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: LicenseTypeFactory -> IO ()
initFields_ this = do
    jset this.uNKNOWN =<< (LicenseType.new_1 (jget ((jio (CommonStrings.getInstance))).uNKNOWN))
    jset this.dEMO =<< (LicenseType.new_1 "Demo")
    jset this.nORMAL =<< (LicenseType.new_1 "Normal")
    pure ()

new_ :: IO LicenseTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LicenseTypeFactory)
getInstance = do
        pure (LicenseTypeFactory.instance_)


getInstance_1 :: (JavaObjectClass this_) => this_ -> String -> IO (LicenseType.LicenseType)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: LicenseTypeFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (LicenseType.LicenseType)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: LicenseTypeFactory)) a1

getInstance_1_impl :: LicenseTypeFactory -> String -> IO (LicenseType.LicenseType)
getInstance_1_impl this name = do
    javaCatchReturn $ do
        if ((Prelude.fromEnum (Prelude.compare (jio (LicenseType.getName ((jget (this).dEMO)))) name) - 1) == 0) then do
            javaReturn ((jget (this).dEMO))
        else when ((Prelude.fromEnum (Prelude.compare (jio (LicenseType.getName ((jget (this).nORMAL)))) name) - 1) == 0) $ do
            javaReturn ((jget (this).nORMAL))
        pure ((jget (this).uNKNOWN))


