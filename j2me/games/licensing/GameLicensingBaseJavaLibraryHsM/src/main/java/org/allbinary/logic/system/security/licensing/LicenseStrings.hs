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
module LicenseStrings where

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

data LicenseStrings = LicenseStrings
    { header_ :: JavaHeader
    , lOCKED :: IORef (String)
    }

instance JavaNull LicenseStrings where
    javaNull = javaNullRecord "LicenseStrings"

instance JavaEquals LicenseStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseStrings where
    (==) = jrecordEquals

instance JavaObjectClass LicenseStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseStrings
newRecord_ = do
    header_ <- newJavaHeader
    lOCKED <- newIORef ""
    let this = LicenseStrings header_ lOCKED
    jregisterLevel header_ this
    pure this

initFields_ :: LicenseStrings -> IO ()
initFields_ this = do
    jset this.lOCKED ("Demo Locked Feature")
    pure ()

new_ :: IO LicenseStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LicenseStrings)
getInstance = do
        pure (LicenseStrings.instance_)


