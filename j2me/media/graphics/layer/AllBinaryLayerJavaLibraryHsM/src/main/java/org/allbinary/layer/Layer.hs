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
-- package org.allbinary.layer
module Layer where

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
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Layer = Layer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , x :: IORef (Int)
    , y :: IORef (Int)
    , z :: IORef (Int)
    , width :: IORef (Int)
    , height :: IORef (Int)
    , visible :: IORef (Bool)
    }

instance JavaNull Layer where
    javaNull = javaNullRecord "Layer"

instance JavaEquals Layer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Layer where
    (==) = jrecordEquals

instance JavaObjectClass Layer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iD #-}
iD = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Layer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    x <- newIORef 0
    y <- newIORef 0
    z <- newIORef 0
    width <- newIORef 0
    height <- newIORef 0
    visible <- newIORef False
    let this = Layer header_ logUtil x y z width height visible
    jregisterLevel header_ this
    jregisterMethod header_ "setPosition" (\() -> setPosition_impl this)
    jregisterMethod header_ "moveDXY" (\() -> moveDXY_impl this)
    jregisterMethod header_ "moveDXYZ" (\() -> moveDXYZ_impl this)
    jregisterMethod header_ "getXP" (\() -> getXP_impl this)
    jregisterMethod header_ "getYP" (\() -> getYP_impl this)
    jregisterMethod header_ "getZP" (\() -> getZP_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getDepth" (\() -> getDepth_impl this)
    jregisterMethod header_ "setVisible" (\() -> setVisible_impl this)
    jregisterMethod header_ "isVisible" (\() -> isVisible_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setLayerWidth" (\() -> setLayerWidth_impl this)
    jregisterMethod header_ "setLayerHeight" (\() -> setLayerHeight_impl this)
    jregisterMethod header_ "toStringAppend" (\() -> toStringAppend_impl this)
    pure this

initFields_ :: Layer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.x (0)
    jset this.y (0)
    jset this.z (3)
    jset this.width (0)
    jset this.height (0)
    jset this.visible (True)
    pure ()

new_2 :: Int -> Int -> IO Layer
new_2 width height = do
    this <- newRecord_
    init_2 this width height
    pure this

init_2 :: Layer -> Int -> Int -> IO ()
init_2 this width height = do
        initFields_ this
        Control.Monad.void (Layer.setLayerWidth this width)
        Control.Monad.void (Layer.setLayerHeight this height)
        pure ()


setPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: Layer))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: Layer)) a1 a2 a3

setPosition_impl :: Layer -> Int -> Int -> Int -> IO (())
setPosition_impl this x y z = do
        jset (this).x (x)
        jset (this).y (y)
        jset (this).z (z)
        pure ()


moveDXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
moveDXY object_ a1 a2 = jmethod object_ "moveDXY" (\() -> (moveDXY_impl (javaCast object_ :: Layer))) () a1 a2

moveDXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
moveDXY_super object_ a1 a2 = (moveDXY_impl (javaCast object_ :: Layer)) a1 a2

moveDXY_impl :: Layer -> Int -> Int -> IO (())
moveDXY_impl this dx dy = do
        jset (this).x (((jget (this).x) + dx))
        jset (this).y (((jget (this).y) + dy))
        pure ()


moveDXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ object_ a1 a2 a3 = jmethod object_ "moveDXYZ" (\() -> (moveDXYZ_impl (javaCast object_ :: Layer))) () a1 a2 a3

moveDXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ_super object_ a1 a2 a3 = (moveDXYZ_impl (javaCast object_ :: Layer)) a1 a2 a3

moveDXYZ_impl :: Layer -> Int -> Int -> Int -> IO (())
moveDXYZ_impl this dx dy dz = do
        jset (this).x (((jget (this).x) + dx))
        jset (this).y (((jget (this).y) + dy))
        jset (this).z (((jget (this).z) + dz))
        pure ()


getXP :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP object_ = jmethod object_ "getXP" (\() -> (getXP_impl (javaCast object_ :: Layer))) ()

getXP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP_super object_ = (getXP_impl (javaCast object_ :: Layer))

getXP_impl :: Layer -> IO (Int)
getXP_impl this = do
        pure ((jget (this).x))


getYP :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP object_ = jmethod object_ "getYP" (\() -> (getYP_impl (javaCast object_ :: Layer))) ()

getYP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP_super object_ = (getYP_impl (javaCast object_ :: Layer))

getYP_impl :: Layer -> IO (Int)
getYP_impl this = do
        pure ((jget (this).y))


getZP :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP object_ = jmethod object_ "getZP" (\() -> (getZP_impl (javaCast object_ :: Layer))) ()

getZP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP_super object_ = (getZP_impl (javaCast object_ :: Layer))

getZP_impl :: Layer -> IO (Int)
getZP_impl this = do
        pure ((jget (this).z))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: Layer))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: Layer))

getWidth_impl :: Layer -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: Layer))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: Layer))

getHeight_impl :: Layer -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


getDepth :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDepth object_ = jmethod object_ "getDepth" (\() -> (getDepth_impl (javaCast object_ :: Layer))) ()

getDepth_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDepth_super object_ = (getDepth_impl (javaCast object_ :: Layer))

getDepth_impl :: Layer -> IO (Int64)
getDepth_impl this = do
        pure (0)


setVisible :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible object_ a1 = jmethod object_ "setVisible" (\() -> (setVisible_impl (javaCast object_ :: Layer))) () a1

setVisible_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible_super object_ a1 = (setVisible_impl (javaCast object_ :: Layer)) a1

setVisible_impl :: Layer -> Bool -> IO (())
setVisible_impl this visible = do
        jset (this).visible (visible)
        pure ()


isVisible :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible object_ = jmethod object_ "isVisible" (\() -> (isVisible_impl (javaCast object_ :: Layer))) ()

isVisible_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible_super object_ = (isVisible_impl (javaCast object_ :: Layer))

isVisible_impl :: Layer -> IO (Bool)
isVisible_impl this = do
        pure ((jget (this).visible))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: Layer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: Layer)) a1

paint_impl :: Layer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        commonStrings <- (CommonStrings.getInstance)
        canvasStrings <- (CanvasStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).nOT_IMPLEMENTED) this (jget (canvasStrings).pAINT))
        pure ()


setLayerWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLayerWidth object_ a1 = jmethod object_ "setLayerWidth" (\() -> (setLayerWidth_impl (javaCast object_ :: Layer))) () a1

setLayerWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLayerWidth_super object_ a1 = (setLayerWidth_impl (javaCast object_ :: Layer)) a1

setLayerWidth_impl :: Layer -> Int -> IO (())
setLayerWidth_impl this width = do
        when (width < 0) $ do
            javaThrow ((JavaException "IllegalArgumentException" ""))
        jset (this).width (width)
        pure ()


setLayerHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLayerHeight object_ a1 = jmethod object_ "setLayerHeight" (\() -> (setLayerHeight_impl (javaCast object_ :: Layer))) () a1

setLayerHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLayerHeight_super object_ a1 = (setLayerHeight_impl (javaCast object_ :: Layer)) a1

setLayerHeight_impl :: Layer -> Int -> IO (())
setLayerHeight_impl this height = do
        when (height < 0) $ do
            javaThrow ((JavaException "IllegalArgumentException" ""))
        jset (this).height (height)
        pure ()


toStringAppend :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend object_ a1 = jmethod object_ "toStringAppend" (\() -> (toStringAppend_impl (javaCast object_ :: Layer))) () a1

toStringAppend_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend_super object_ a1 = (toStringAppend_impl (javaCast object_ :: Layer)) a1

toStringAppend_impl :: Layer -> StringMaker.StringMaker -> IO (())
toStringAppend_impl this stringBuffer = do
        pure ()


