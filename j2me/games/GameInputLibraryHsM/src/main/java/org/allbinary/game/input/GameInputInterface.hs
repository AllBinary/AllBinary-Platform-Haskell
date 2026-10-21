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
-- package org.allbinary.game.input
module GameInputInterface (module GameInputInterface, module NamedInterface) where

import NamedInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processInput, processInput_super, processInput_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, toString)
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
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified NamedInterface -- org.allbinary.layer.NamedInterface

-- Java interface: the classes that implement it have these functions
data GameInputInterface = GameInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameInputInterface where
    javaNull = javaNullRecord "GameInputInterface"

instance JavaEquals GameInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameInputInterface
fromHeader_ header = GameInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameInputInterface header)
    NamedInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: GameInputInterface))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: GameInputInterface)) a1

processInput_impl :: GameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = javaAbstractMethod "processInput"


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: GameInputInterface))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: GameInputInterface))

initInputProcessors_impl :: GameInputInterface -> IO (())
initInputProcessors_impl this = javaAbstractMethod "initInputProcessors"


