{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module SpecialGameInput where

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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SpecialGameInputInterface

-- implements SpecialGameInputInterface
data SpecialGameInput = SpecialGameInput
    { header_ :: JavaHeader
    }

instance JavaNull SpecialGameInput where
    javaNull = javaNullRecord "SpecialGameInput"

instance JavaEquals SpecialGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialGameInput where
    (==) = jrecordEquals

instance JavaObjectClass SpecialGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpecialGameInput
newRecord_ = do
    header_ <- newJavaHeader
    let this = SpecialGameInput header_
    jregisterLevel header_ this
    SpecialGameInputInterface.registerInterface_ header_
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "strafeLeft" (\() -> strafeLeft_impl this)
    jregisterMethod header_ "strafeRight" (\() -> strafeRight_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    jregisterMethod header_ "special1" (\() -> special1_impl this)
    jregisterMethod header_ "special2" (\() -> special2_impl this)
    jregisterMethod header_ "special3" (\() -> special3_impl this)
    jregisterMethod header_ "special4" (\() -> special4_impl this)
    jregisterMethod header_ "special5" (\() -> special5_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: SpecialGameInput -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SpecialGameInput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpecialGameInput -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: SpecialGameInput))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: SpecialGameInput))

up_impl :: SpecialGameInput -> IO (())
up_impl this = do
        pure ()


-- throws Exception
down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: SpecialGameInput))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: SpecialGameInput))

down_impl :: SpecialGameInput -> IO (())
down_impl this = do
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: SpecialGameInput))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: SpecialGameInput))

right_impl :: SpecialGameInput -> IO (())
right_impl this = do
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: SpecialGameInput))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: SpecialGameInput))

left_impl :: SpecialGameInput -> IO (())
left_impl this = do
        pure ()


-- throws Exception
strafeLeft :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft object_ = jmethod object_ "strafeLeft" (\() -> (strafeLeft_impl (javaCast object_ :: SpecialGameInput))) ()

strafeLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft_super object_ = (strafeLeft_impl (javaCast object_ :: SpecialGameInput))

strafeLeft_impl :: SpecialGameInput -> IO (())
strafeLeft_impl this = do
        pure ()


-- throws Exception
strafeRight :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight object_ = jmethod object_ "strafeRight" (\() -> (strafeRight_impl (javaCast object_ :: SpecialGameInput))) ()

strafeRight_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight_super object_ = (strafeRight_impl (javaCast object_ :: SpecialGameInput))

strafeRight_impl :: SpecialGameInput -> IO (())
strafeRight_impl this = do
        pure ()


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire object_ a1 a2 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

fire_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_super object_ a1 a2 = (fire_impl (javaCast object_ :: SpecialGameInput)) a1 a2

fire_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special1 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1 object_ a1 a2 = jmethod object_ "special1" (\() -> (special1_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

special1_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_super object_ a1 a2 = (special1_impl (javaCast object_ :: SpecialGameInput)) a1 a2

special1_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special2 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2 object_ a1 a2 = jmethod object_ "special2" (\() -> (special2_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

special2_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_super object_ a1 a2 = (special2_impl (javaCast object_ :: SpecialGameInput)) a1 a2

special2_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special3 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3 object_ a1 a2 = jmethod object_ "special3" (\() -> (special3_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

special3_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_super object_ a1 a2 = (special3_impl (javaCast object_ :: SpecialGameInput)) a1 a2

special3_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special4 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4 object_ a1 a2 = jmethod object_ "special4" (\() -> (special4_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

special4_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_super object_ a1 a2 = (special4_impl (javaCast object_ :: SpecialGameInput)) a1 a2

special4_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special5 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5 object_ a1 a2 = jmethod object_ "special5" (\() -> (special5_impl (javaCast object_ :: SpecialGameInput))) () a1 a2

special5_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_super object_ a1 a2 = (special5_impl (javaCast object_ :: SpecialGameInput)) a1 a2

special5_impl :: SpecialGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_impl this layerManager gameKeyEvent = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: SpecialGameInput))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: SpecialGameInput)) a1

paint_impl :: SpecialGameInput -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: SpecialGameInput))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: SpecialGameInput)) a1

paintThreed_impl :: SpecialGameInput -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


