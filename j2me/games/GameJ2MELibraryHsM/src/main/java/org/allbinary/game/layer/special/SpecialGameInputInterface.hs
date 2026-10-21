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
-- package org.allbinary.game.layer.special
module SpecialGameInputInterface (module SpecialGameInputInterface, module PaintableInterface) where

import PaintableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, up, up_super, up_impl, down, down_super, down_impl, right, right_super, right_impl, left, left_super, left_impl, strafeLeft, strafeLeft_super, strafeLeft_impl, strafeRight, strafeRight_super, strafeRight_impl, fire, fire_super, fire_impl, special1, special1_super, special1_impl, special2, special2_super, special2_impl, special3, special3_super, special3_impl, special4, special4_super, special4_impl, special5, special5_super, special5_impl, toString)
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
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

-- Java interface: the classes that implement it have these functions
data SpecialGameInputInterface = SpecialGameInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull SpecialGameInputInterface where
    javaNull = javaNullRecord "SpecialGameInputInterface"

instance JavaEquals SpecialGameInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialGameInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass SpecialGameInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SpecialGameInputInterface
fromHeader_ header = SpecialGameInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SpecialGameInputInterface header)
    PaintableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: SpecialGameInputInterface))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: SpecialGameInputInterface))

up_impl :: SpecialGameInputInterface -> IO (())
up_impl this = javaAbstractMethod "up"


-- throws Exception
down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: SpecialGameInputInterface))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: SpecialGameInputInterface))

down_impl :: SpecialGameInputInterface -> IO (())
down_impl this = javaAbstractMethod "down"


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: SpecialGameInputInterface))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: SpecialGameInputInterface))

right_impl :: SpecialGameInputInterface -> IO (())
right_impl this = javaAbstractMethod "right"


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: SpecialGameInputInterface))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: SpecialGameInputInterface))

left_impl :: SpecialGameInputInterface -> IO (())
left_impl this = javaAbstractMethod "left"


-- throws Exception
strafeLeft :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft object_ = jmethod object_ "strafeLeft" (\() -> (strafeLeft_impl (javaCast object_ :: SpecialGameInputInterface))) ()

strafeLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft_super object_ = (strafeLeft_impl (javaCast object_ :: SpecialGameInputInterface))

strafeLeft_impl :: SpecialGameInputInterface -> IO (())
strafeLeft_impl this = javaAbstractMethod "strafeLeft"


-- throws Exception
strafeRight :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight object_ = jmethod object_ "strafeRight" (\() -> (strafeRight_impl (javaCast object_ :: SpecialGameInputInterface))) ()

strafeRight_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight_super object_ = (strafeRight_impl (javaCast object_ :: SpecialGameInputInterface))

strafeRight_impl :: SpecialGameInputInterface -> IO (())
strafeRight_impl this = javaAbstractMethod "strafeRight"


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire object_ a1 a2 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

fire_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_super object_ a1 a2 = (fire_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

fire_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_impl this layerManager gameKeyEvent = javaAbstractMethod "fire"


-- throws Exception
special1 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1 object_ a1 a2 = jmethod object_ "special1" (\() -> (special1_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

special1_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_super object_ a1 a2 = (special1_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

special1_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_impl this layerManager gameKeyEvent = javaAbstractMethod "special1"


-- throws Exception
special2 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2 object_ a1 a2 = jmethod object_ "special2" (\() -> (special2_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

special2_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_super object_ a1 a2 = (special2_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

special2_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_impl this layerManager gameKeyEvent = javaAbstractMethod "special2"


-- throws Exception
special3 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3 object_ a1 a2 = jmethod object_ "special3" (\() -> (special3_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

special3_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_super object_ a1 a2 = (special3_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

special3_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_impl this layerManager gameKeyEvent = javaAbstractMethod "special3"


-- throws Exception
special4 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4 object_ a1 a2 = jmethod object_ "special4" (\() -> (special4_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

special4_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_super object_ a1 a2 = (special4_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

special4_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_impl this layerManager gameKeyEvent = javaAbstractMethod "special4"


-- throws Exception
special5 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5 object_ a1 a2 = jmethod object_ "special5" (\() -> (special5_impl (javaCast object_ :: SpecialGameInputInterface))) () a1 a2

special5_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_super object_ a1 a2 = (special5_impl (javaCast object_ :: SpecialGameInputInterface)) a1 a2

special5_impl :: SpecialGameInputInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_impl this layerManager gameKeyEvent = javaAbstractMethod "special5"


