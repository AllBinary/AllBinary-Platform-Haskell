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
-- package org.allbinary.game.layer.pickup
module IconLayer (module IconLayer, module AllBinaryLayer) where

import AllBinaryLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, getAnimationInterface, getAnimationInterface_super, getAnimationInterface_impl, nULL_ICON_LAYER, animationInterface)
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
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition

data IconLayer = IconLayer
    { header_ :: JavaHeader
    , base :: AllBinaryLayer.AllBinaryLayer
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull IconLayer where
    javaNull = javaNullRecord "IconLayer"

instance JavaEquals IconLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IconLayer where
    (==) = jrecordEquals

instance JavaObjectClass IconLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ICON_LAYER #-}
nULL_ICON_LAYER = unsafePerformIO ((new_3 (jio (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)) 0 0))

newRecord_ :: IO IconLayer
newRecord_ = do
    base <- AllBinaryLayer.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    let this = IconLayer header_ base animationInterface
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    pure this

initFields_ :: IconLayer -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    pure ()

new_3 :: Animation.Animation -> Int -> Int -> IO IconLayer
new_3 animationInterface width height = do
    this <- newRecord_
    init_3 this animationInterface width height
    pure this

init_3 :: IconLayer -> Animation.Animation -> Int -> Int -> IO ()
init_3 this animationInterface width height = do
        AllBinaryLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) width height)) (jio (ViewPosition.getInstanceD))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterface (animationInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: IconLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: IconLayer)) a1

paint_impl :: IconLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (jget (this).base.base.x) (jget (this).base.base.y))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: IconLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: IconLayer)) a1

paintThreed_impl :: IconLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics (jget (this).base.base.x) (jget (this).base.base.y) (jget (this).base.base.z))
        pure ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: IconLayer))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: IconLayer))

getAnimationInterface_impl :: IconLayer -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


