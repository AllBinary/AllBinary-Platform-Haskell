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
-- package org.allbinary.input.automation.module.generic
module GenericConfigData where

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

data GenericConfigData = GenericConfigData
    { header_ :: JavaHeader
    }

instance JavaNull GenericConfigData where
    javaNull = javaNullRecord "GenericConfigData"

instance JavaEquals GenericConfigData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericConfigData where
    (==) = jrecordEquals

instance JavaObjectClass GenericConfigData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE rELATIVE_PATH #-}
rELATIVE_PATH = unsafePerformIO (newIORef ("./"))

{-# NOINLINE cONFIG_PATH #-}
cONFIG_PATH = unsafePerformIO (newIORef ("modules/configs/"))

{-# NOINLINE mODULE_RELATIVE_PATH #-}
mODULE_RELATIVE_PATH = unsafePerformIO (newIORef ((javaToString ((jget GenericConfigData.rELATIVE_PATH) + (jget GenericConfigData.cONFIG_PATH)) ++ "allbinary/input/automation/module/")))

{-# NOINLINE gAME_MODULE_RELATIVE_PATH #-}
gAME_MODULE_RELATIVE_PATH = unsafePerformIO (newIORef ((javaToString (jget GenericConfigData.mODULE_RELATIVE_PATH) ++ "game/")))

{-# NOINLINE mMO_GAME_MODULE_RELATIVE_PATH #-}
mMO_GAME_MODULE_RELATIVE_PATH = unsafePerformIO (newIORef ((javaToString (jget GenericConfigData.gAME_MODULE_RELATIVE_PATH) ++ "mmog/")))

{-# NOINLINE fREE_MMO_GAME_MODULE_RELATIVE_PATH #-}
fREE_MMO_GAME_MODULE_RELATIVE_PATH = unsafePerformIO (newIORef ("free/"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericConfigData
newRecord_ = do
    header_ <- newJavaHeader
    let this = GenericConfigData header_
    jregisterLevel header_ this
    pure this

initFields_ :: GenericConfigData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GenericConfigData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericConfigData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


