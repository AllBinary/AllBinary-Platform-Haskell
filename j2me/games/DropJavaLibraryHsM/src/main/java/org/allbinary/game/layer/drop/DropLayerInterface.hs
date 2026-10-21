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
-- package org.allbinary.game.layer.drop
module DropLayerInterface (module DropLayerInterface, module LayerInterface) where

import LayerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDroppedLayer, getDroppedLayer_super, getDroppedLayer_impl, toString)
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
import qualified PickedUpLayerInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterface
import qualified LayerInterface -- org.allbinary.layer.LayerInterface

-- Java interface: the classes that implement it have these functions
data DropLayerInterface = DropLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull DropLayerInterface where
    javaNull = javaNullRecord "DropLayerInterface"

instance JavaEquals DropLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DropLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass DropLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DropLayerInterface
fromHeader_ header = DropLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DropLayerInterface header)
    LayerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getDroppedLayer :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getDroppedLayer object_ = jmethod object_ "getDroppedLayer" (\() -> (getDroppedLayer_impl (javaCast object_ :: DropLayerInterface))) ()

getDroppedLayer_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getDroppedLayer_super object_ = (getDroppedLayer_impl (javaCast object_ :: DropLayerInterface))

getDroppedLayer_impl :: DropLayerInterface -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getDroppedLayer_impl this = javaAbstractMethod "getDroppedLayer"


