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
module KeyboardActionScriptInputData where

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

data KeyboardActionScriptInputData = KeyboardActionScriptInputData
    { header_ :: JavaHeader
    }

instance JavaNull KeyboardActionScriptInputData where
    javaNull = javaNullRecord "KeyboardActionScriptInputData"

instance JavaEquals KeyboardActionScriptInputData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyboardActionScriptInputData where
    (==) = jrecordEquals

instance JavaObjectClass KeyboardActionScriptInputData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nAME #-}
nAME = unsafePerformIO (newIORef ("KEY_ACTION_INPUT_NAME"))

{-# NOINLINE kEY #-}
kEY = unsafePerformIO (newIORef ("KEY_ACTION_INPUT_KEY"))

{-# NOINLINE dELAY_BETWEEN_KEYS #-}
dELAY_BETWEEN_KEYS = unsafePerformIO (newIORef ("KEY_ACTION_INPUT_DELAY_BETWEEN_KEYS"))

{-# NOINLINE pRESS #-}
pRESS = unsafePerformIO (newIORef ("KEY_ACTION_INPUT_PRESS"))

{-# NOINLINE rELEASE #-}
rELEASE = unsafePerformIO (newIORef ("KEY_ACTION_INPUT_RELEASE"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeyboardActionScriptInputData
newRecord_ = do
    header_ <- newJavaHeader
    let this = KeyboardActionScriptInputData header_
    jregisterLevel header_ this
    pure this

initFields_ :: KeyboardActionScriptInputData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO KeyboardActionScriptInputData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyboardActionScriptInputData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


