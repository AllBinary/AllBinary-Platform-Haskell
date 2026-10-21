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
-- package org.allbinary.game.layer
module SpriteFactoryInterface where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite

-- Java interface: the classes that implement it have these functions
data SpriteFactoryInterface = SpriteFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull SpriteFactoryInterface where
    javaNull = javaNullRecord "SpriteFactoryInterface"

instance JavaEquals SpriteFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpriteFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass SpriteFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SpriteFactoryInterface
fromHeader_ header = SpriteFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SpriteFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


createSprite :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite object_ a1 a2 a3 = jmethod object_ "createSprite" (\() -> (createSprite_impl (javaCast object_ :: SpriteFactoryInterface))) () a1 a2 a3

createSprite_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite_super object_ a1 a2 a3 = (createSprite_impl (javaCast object_ :: SpriteFactoryInterface)) a1 a2 a3

createSprite_impl :: SpriteFactoryInterface -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite_impl this image frameWidth frameHeight = javaAbstractMethod "createSprite"


