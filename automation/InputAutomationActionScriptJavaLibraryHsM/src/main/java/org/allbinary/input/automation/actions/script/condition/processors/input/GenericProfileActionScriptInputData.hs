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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module GenericProfileActionScriptInputData where

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

data GenericProfileActionScriptInputData = GenericProfileActionScriptInputData
    { header_ :: JavaHeader
    }

instance JavaNull GenericProfileActionScriptInputData where
    javaNull = javaNullRecord "GenericProfileActionScriptInputData"

instance JavaEquals GenericProfileActionScriptInputData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActionScriptInputData where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActionScriptInputData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nAME #-}
nAME = unsafePerformIO (newIORef ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_NAME"))

{-# NOINLINE tYPE #-}
tYPE = unsafePerformIO (newIORef ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_TYPE"))

{-# NOINLINE dELAY #-}
dELAY = unsafePerformIO (newIORef ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_DELAY"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfileActionScriptInputData
newRecord_ = do
    header_ <- newJavaHeader
    let this = GenericProfileActionScriptInputData header_
    jregisterLevel header_ this
    pure this

initFields_ :: GenericProfileActionScriptInputData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GenericProfileActionScriptInputData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericProfileActionScriptInputData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


