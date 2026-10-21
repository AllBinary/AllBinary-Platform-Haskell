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
-- package org.allbinary.input.automation.actions.script.condition
module ColorAtActionScriptConditionData where

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

data ColorAtActionScriptConditionData = ColorAtActionScriptConditionData
    { header_ :: JavaHeader
    }

instance JavaNull ColorAtActionScriptConditionData where
    javaNull = javaNullRecord "ColorAtActionScriptConditionData"

instance JavaEquals ColorAtActionScriptConditionData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorAtActionScriptConditionData where
    (==) = jrecordEquals

instance JavaObjectClass ColorAtActionScriptConditionData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nAME #-}
nAME = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_NAME"))

{-# NOINLINE lOCATION_X #-}
lOCATION_X = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_LOCATION_X"))

{-# NOINLINE lOCATION_Y #-}
lOCATION_Y = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_LOCATION_Y"))

{-# NOINLINE mIN_RED #-}
mIN_RED = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MIN_RED"))

{-# NOINLINE mAX_RED #-}
mAX_RED = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MAX_RED"))

{-# NOINLINE mIN_GREEN #-}
mIN_GREEN = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MIN_GREEN"))

{-# NOINLINE mAX_GREEN #-}
mAX_GREEN = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MAX_GREEN"))

{-# NOINLINE mIN_BLUE #-}
mIN_BLUE = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MIN_BLUE"))

{-# NOINLINE mAX_BLUE #-}
mAX_BLUE = unsafePerformIO (newIORef ("COLOR_AT_ACTION_CONDITION_MAX_BLUE"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorAtActionScriptConditionData
newRecord_ = do
    header_ <- newJavaHeader
    let this = ColorAtActionScriptConditionData header_
    jregisterLevel header_ this
    pure this

initFields_ :: ColorAtActionScriptConditionData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ColorAtActionScriptConditionData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorAtActionScriptConditionData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


