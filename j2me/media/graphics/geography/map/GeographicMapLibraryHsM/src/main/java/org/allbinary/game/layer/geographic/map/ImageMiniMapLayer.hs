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
-- package org.allbinary.game.layer.geographic.map
module ImageMiniMapLayer (module ImageMiniMapLayer, module MiniMapLayer) where

import MiniMapLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, paint, paint_super, paint_impl, image, anchor)
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
import qualified AllBinaryTiledLayer -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PaintableToImageUtil -- org.allbinary.image.PaintableToImageUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified MiniMapLayer

data ImageMiniMapLayer = ImageMiniMapLayer
    { header_ :: JavaHeader
    , base :: MiniMapLayer.MiniMapLayer
    , image :: IORef (Image.Image)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageMiniMapLayer where
    javaNull = javaNullRecord "ImageMiniMapLayer"

instance JavaEquals ImageMiniMapLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageMiniMapLayer where
    (==) = jrecordEquals

instance JavaObjectClass ImageMiniMapLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageMiniMapLayer
newRecord_ = do
    base <- MiniMapLayer.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageMiniMapLayer header_ base image anchor
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ImageMiniMapLayer -> IO ()
initFields_ this = do
    jset this.image (NullImage.nULL_IMAGE)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: BasicGeographicMap.BasicGeographicMap -> ViewPositionBase.ViewPositionBase -> IO ImageMiniMapLayer
new_2 geographicMapInterface viewPosition = do
    this <- newRecord_
    init_2 this geographicMapInterface viewPosition
    pure this

init_2 :: ImageMiniMapLayer -> BasicGeographicMap.BasicGeographicMap -> ViewPositionBase.ViewPositionBase -> IO ()
init_2 this geographicMapInterface viewPosition = do
        MiniMapLayer.init_2 this.base (geographicMapInterface) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ImageMiniMapLayer))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ImageMiniMapLayer))

init_impl :: ImageMiniMapLayer -> IO (())
init_impl this = do
        aWidth <- (AllBinaryTiledLayer.getWidth ((jget (this).base.allBinaryTiledLayer)))
        aHeight <- (AllBinaryTiledLayer.getHeight ((jget (this).base.allBinaryTiledLayer)))
        assignedValue <- (PaintableToImageUtil.getImage (jget (this).base.allBinaryTiledLayer) aWidth aHeight)
        jset (this).image (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ImageMiniMapLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ImageMiniMapLayer)) a1

paint_impl :: ImageMiniMapLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).image) (jget (this).base.base.base.x) (jget (this).base.base.base.y) (jget (this).anchor))
        Control.Monad.void (MiniMapLayer.paintDots this graphics)
        pure ()


