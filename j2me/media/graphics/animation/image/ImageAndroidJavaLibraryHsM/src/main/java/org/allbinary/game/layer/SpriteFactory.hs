{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module SpriteFactory where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SpriteFactoryInterface

-- implements SpriteFactoryInterface
data SpriteFactory = SpriteFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull SpriteFactory where
    javaNull = javaNullRecord "SpriteFactory"

instance JavaEquals SpriteFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpriteFactory where
    (==) = jrecordEquals

instance JavaObjectClass SpriteFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpriteFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = SpriteFactory header_ logUtil
    jregisterLevel header_ this
    SpriteFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "createSprite" (\() -> createSprite_impl this)
    pure this

initFields_ :: SpriteFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO SpriteFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpriteFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SpriteFactory)
getInstance = do
        pure (SpriteFactory.instance_)


createSprite :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite object_ a1 a2 a3 = jmethod object_ "createSprite" (\() -> (createSprite_impl (javaCast object_ :: SpriteFactory))) () a1 a2 a3

createSprite_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite_super object_ a1 a2 a3 = (createSprite_impl (javaCast object_ :: SpriteFactory)) a1 a2 a3

createSprite_impl :: SpriteFactory -> Image.Image -> Int -> Int -> IO (Sprite.Sprite)
createSprite_impl this image frameWidth frameHeight = do
        (Sprite.new_5 image frameWidth frameHeight ((jio (Image.getWidth image)) / frameWidth) ((jio (Image.getHeight image)) / frameHeight))


