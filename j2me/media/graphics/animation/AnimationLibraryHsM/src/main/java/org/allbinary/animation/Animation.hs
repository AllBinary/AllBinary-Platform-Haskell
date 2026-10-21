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
-- package org.allbinary.animation
module Animation where

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
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified OpenGLSurfaceChangedInterface -- org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
import qualified AnimationInterface

-- implements AnimationInterface
-- implements OpenGLSurfaceChangedInterface
data Animation = Animation
    { header_ :: JavaHeader
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , basicColor :: IORef (BasicColor.BasicColor)
    , colorP :: IORef (Int)
    , changeBasicColorP :: IORef (BasicColor.BasicColor)
    , changeColorP :: IORef (Int)
    , alphaP :: IORef (Int)
    }

instance JavaNull Animation where
    javaNull = javaNullRecord "Animation"

instance JavaEquals Animation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Animation where
    (==) = jrecordEquals

instance JavaObjectClass Animation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Animation
newRecord_ = do
    header_ <- newJavaHeader
    basicSetColorUtil <- newIORef javaNull
    basicColor <- newIORef javaNull
    colorP <- newIORef 0
    changeBasicColorP <- newIORef javaNull
    changeColorP <- newIORef 0
    alphaP <- newIORef 0
    let this = Animation header_ basicSetColorUtil basicColor colorP changeBasicColorP changeColorP alphaP
    jregisterLevel header_ this
    AnimationInterface.registerInterface_ header_
    OpenGLSurfaceChangedInterface.registerInterface_ header_
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "isThreed" (\() -> isThreed_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setBackgroundBasicColorP" (\() -> setBackgroundBasicColorP_impl this)
    jregisterMethod header_ "getChangeBasicColor" (\() -> getChangeBasicColor_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "getChangeColor" (\() -> getChangeColor_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "setMaxScale" (\() -> setMaxScale_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "setDx" (\() -> setDx_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "setDy" (\() -> setDy_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    pure this

initFields_ :: Animation -> IO ()
initFields_ this = do
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.colorP (0)
    jset this.changeBasicColorP ((jget ((jio (BasicColorFactory.getInstance))).nULL_COLOR))
    jset this.changeColorP (0)
    jset this.alphaP (0)
    pure ()

new_ :: IO Animation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Animation -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: Animation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: Animation)) a1

setAlpha_impl :: Animation -> Int -> IO (())
setAlpha_impl this alpha = do
        jset (this).alphaP (alpha)
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: Animation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: Animation))

nextFrame_impl :: Animation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: Animation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: Animation)) a1 a2 a3

paintXY_impl :: Animation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: Animation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: Animation)) a1 a2 a3 a4

paintThreedXYZ_impl :: Animation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        pure ()


isThreed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isThreed object_ = jmethod object_ "isThreed" (\() -> (isThreed_impl (javaCast object_ :: Animation))) ()

isThreed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isThreed_super object_ = (isThreed_impl (javaCast object_ :: Animation))

isThreed_impl :: Animation -> IO (Bool)
isThreed_impl this = do
        pure (False)


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: Animation))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: Animation))

getBasicColorP_impl :: Animation -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: Animation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: Animation)) a1

setBasicColorP_impl :: Animation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        assignedValue <- (BasicColor.intValue ((jget (this).basicColor)))
        jset (this).colorP (assignedValue)
        pure ()


setBackgroundBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP object_ a1 = jmethod object_ "setBackgroundBasicColorP" (\() -> (setBackgroundBasicColorP_impl (javaCast object_ :: Animation))) () a1

setBackgroundBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_super object_ a1 = (setBackgroundBasicColorP_impl (javaCast object_ :: Animation)) a1

setBackgroundBasicColorP_impl :: Animation -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_impl this basicColor = do
        pure ()


getChangeBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getChangeBasicColor object_ = jmethod object_ "getChangeBasicColor" (\() -> (getChangeBasicColor_impl (javaCast object_ :: Animation))) ()

getChangeBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getChangeBasicColor_super object_ = (getChangeBasicColor_impl (javaCast object_ :: Animation))

getChangeBasicColor_impl :: Animation -> IO (BasicColor.BasicColor)
getChangeBasicColor_impl this = do
        pure ((jget (this).changeBasicColorP))


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: Animation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: Animation)) a1

changeBasicColor_impl :: Animation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        jset (this).changeBasicColorP (basicColor)
        assignedValue <- (BasicColor.intValue ((jget (this).changeBasicColorP)))
        jset (this).changeColorP (assignedValue)
        pure ()


getChangeColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getChangeColor object_ = jmethod object_ "getChangeColor" (\() -> (getChangeColor_impl (javaCast object_ :: Animation))) ()

getChangeColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getChangeColor_super object_ = (getChangeColor_impl (javaCast object_ :: Animation))

getChangeColor_impl :: Animation -> IO (Int)
getChangeColor_impl this = do
        pure ((jget (this).changeColorP))


getColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: Animation))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor_super object_ = (getColor_impl (javaCast object_ :: Animation))

getColor_impl :: Animation -> IO (Int)
getColor_impl this = do
        pure ((jget (this).colorP))


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: Animation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: Animation)) a1 a2

setScale_impl :: Animation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        pure ()


setMaxScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale object_ a1 a2 = jmethod object_ "setMaxScale" (\() -> (setMaxScale_impl (javaCast object_ :: Animation))) () a1 a2

setMaxScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale_super object_ a1 a2 = (setMaxScale_impl (javaCast object_ :: Animation)) a1 a2

setMaxScale_impl :: Animation -> Float -> Float -> IO (())
setMaxScale_impl this maxScaleX maxScaleY = do
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: Animation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: Animation)) a1

set_impl :: Animation -> GL.GL -> IO (())
set_impl this gl = do
        pure ()


setDx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx object_ a1 = jmethod object_ "setDx" (\() -> (setDx_impl (javaCast object_ :: Animation))) () a1

setDx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx_super object_ a1 = (setDx_impl (javaCast object_ :: Animation)) a1

setDx_impl :: Animation -> Int -> IO (())
setDx_impl this dx = do
        pure ()


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: Animation))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: Animation))

getDx_impl :: Animation -> IO (Int)
getDx_impl this = do
        pure (0)


setDy :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy object_ a1 = jmethod object_ "setDy" (\() -> (setDy_impl (javaCast object_ :: Animation))) () a1

setDy_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy_super object_ a1 = (setDy_impl (javaCast object_ :: Animation)) a1

setDy_impl :: Animation -> Int -> IO (())
setDy_impl this dy = do
        pure ()


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: Animation))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: Animation))

getDy_impl :: Animation -> IO (Int)
getDy_impl this = do
        pure (0)


