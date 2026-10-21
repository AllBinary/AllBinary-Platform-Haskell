{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module SelectionHudPaintable (module SelectionHudPaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, updateInfo, updateInfo_super, updateInfo_impl, getPrimitiveLongUtil, getPrimitiveLongUtil_super, getPrimitiveLongUtil_impl, setAnimationInterface, setAnimationInterface_super, setAnimationInterface_impl, getAnimationInterface, getAnimationInterface_super, getAnimationInterface_impl, setName, setName_super, setName_impl, getName, getName_super, getName_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, setColor, setColor_super, setColor_impl, getColor, getColor_super, getColor_impl, getWidth, getWidth_super, getWidth_impl, setHeight, setHeight_super, setHeight_impl, getHeight, getHeight_super, getHeight_impl, getX, getX_super, getX_impl, paint, paint_super, paint_impl, y, primitiveLongUtil, updateMyFontProcessor, myFontProcessor, x, textX, imageX, basicColor, color, width, height, name, animationInterface, backgroundColor)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified CommonButtons -- org.allbinary.input.motion.button.CommonButtons
import qualified TouchButtonLocationHelper -- org.allbinary.input.motion.button.TouchButtonLocationHelper
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil

-- implements UpdateMyFontInterface
data SelectionHudPaintable = SelectionHudPaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , y :: IORef (Int)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , x :: IORef (Int)
    , textX :: IORef (Int)
    , imageX :: IORef (Int)
    , basicColor :: IORef (BasicColor.BasicColor)
    , color :: IORef (Int)
    , width :: IORef (Int)
    , height :: IORef (Int)
    , name :: IORef (String)
    , animationInterface :: IORef (Animation.Animation)
    , backgroundColor :: IORef (Int)
    }

instance JavaNull SelectionHudPaintable where
    javaNull = javaNullRecord "SelectionHudPaintable"

instance JavaEquals SelectionHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectionHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass SelectionHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SelectionHudPaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    y <- newIORef 0
    primitiveLongUtil <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    x <- newIORef 0
    textX <- newIORef 0
    imageX <- newIORef 0
    basicColor <- newIORef javaNull
    color <- newIORef 0
    width <- newIORef 0
    height <- newIORef 0
    name <- newIORef ""
    animationInterface <- newIORef javaNull
    backgroundColor <- newIORef 0
    let this = SelectionHudPaintable header_ base y primitiveLongUtil updateMyFontProcessor myFontProcessor x textX imageX basicColor color width height name animationInterface backgroundColor
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "updateInfo" (\() -> updateInfo_impl this)
    jregisterMethod header_ "getPrimitiveLongUtil" (\() -> getPrimitiveLongUtil_impl this)
    jregisterMethod header_ "setAnimationInterface" (\() -> setAnimationInterface_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: SelectionHudPaintable -> IO ()
initFields_ this = do
    jset this.y (((jget ((jio (CommonButtons.getInstance))).sTANDARD_BUTTON_SIZE) + 17))
    jset this.primitiveLongUtil (javaNull)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget this.updateMyFontProcessor))
    jset this.x (0)
    jset this.textX (0)
    jset this.imageX (0)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
    jset this.color (0)
    jset this.width (0)
    jset this.height (0)
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.animationInterface =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    jset this.backgroundColor =<< (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).gREY)))
    pure ()

new_ :: IO SelectionHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SelectionHudPaintable -> IO ()
init_ this = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        Control.Monad.void (SelectionHudPaintable.update this)
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen 10000)
        jset (this).primitiveLongUtil (assignedValue)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: SelectionHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: SelectionHudPaintable)) a1

updateMeasurement_impl :: SelectionHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        commonButtons <- (CommonButtons.getInstance)
        font <- (Graphics.getFont graphics)
        Control.Monad.void (SelectionHudPaintable.setHeight this ((jget (commonButtons).sTANDARD_BUTTON_SIZE) + (jio (Font.getHeight font))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: SelectionHudPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: SelectionHudPaintable))

update_impl :: SelectionHudPaintable -> IO (())
update_impl this = do
        commonButtons <- (CommonButtons.getInstance)
        touchButtonLocationHelper <- (TouchButtonLocationHelper.new_)
        displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
        jset (this).x (((jget (commonButtons).sTANDARD_BUTTON_SIZE) + (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper))))
        jset (this).textX (((jio (SelectionHudPaintable.getX this)) + 4))
        jset (this).width (((jio (DisplayInfoSingleton.getLastWidth displayInfoSingleton)) - ((jio (SelectionHudPaintable.getX this)) * 2)))
        jset (this).imageX ((((jio (SelectionHudPaintable.getWidth this)) + (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper))) - 10))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: SelectionHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: SelectionHudPaintable))

updateSelectionInfo_impl :: SelectionHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        pure ()


updateInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateInfo object_ = jmethod object_ "updateInfo" (\() -> (updateInfo_impl (javaCast object_ :: SelectionHudPaintable))) ()

updateInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateInfo_super object_ = (updateInfo_impl (javaCast object_ :: SelectionHudPaintable))

updateInfo_impl :: SelectionHudPaintable -> IO (())
updateInfo_impl this = do
        pure ()


getPrimitiveLongUtil :: (JavaObjectClass this_) => this_ -> IO (PrimitiveLongUtil.PrimitiveLongUtil)
getPrimitiveLongUtil object_ = jmethod object_ "getPrimitiveLongUtil" (\() -> (getPrimitiveLongUtil_impl (javaCast object_ :: SelectionHudPaintable))) ()

getPrimitiveLongUtil_super :: (JavaObjectClass this_) => this_ -> IO (PrimitiveLongUtil.PrimitiveLongUtil)
getPrimitiveLongUtil_super object_ = (getPrimitiveLongUtil_impl (javaCast object_ :: SelectionHudPaintable))

getPrimitiveLongUtil_impl :: SelectionHudPaintable -> IO (PrimitiveLongUtil.PrimitiveLongUtil)
getPrimitiveLongUtil_impl this = do
        pure ((jget (this).primitiveLongUtil))


setAnimationInterface :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface object_ a1 = jmethod object_ "setAnimationInterface" (\() -> (setAnimationInterface_impl (javaCast object_ :: SelectionHudPaintable))) () a1

setAnimationInterface_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface_super object_ a1 = (setAnimationInterface_impl (javaCast object_ :: SelectionHudPaintable)) a1

setAnimationInterface_impl :: SelectionHudPaintable -> Animation.Animation -> IO (())
setAnimationInterface_impl this animationInterface = do
        jset (this).animationInterface (animationInterface)
        pure ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: SelectionHudPaintable))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: SelectionHudPaintable))

getAnimationInterface_impl :: SelectionHudPaintable -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: SelectionHudPaintable))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: SelectionHudPaintable)) a1

setName_impl :: SelectionHudPaintable -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SelectionHudPaintable))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SelectionHudPaintable))

getName_impl :: SelectionHudPaintable -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: SelectionHudPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: SelectionHudPaintable)) a1

setBasicColorP_impl :: SelectionHudPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        Control.Monad.void (SelectionHudPaintable.setColor this (jio (BasicColor.intValue basicColor)))
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: SelectionHudPaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: SelectionHudPaintable))

getBasicColorP_impl :: SelectionHudPaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setColor :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: SelectionHudPaintable))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: SelectionHudPaintable)) a1

setColor_impl :: SelectionHudPaintable -> Int -> IO (())
setColor_impl this color = do
        jset (this).color (color)
        pure ()


getColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: SelectionHudPaintable))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor_super object_ = (getColor_impl (javaCast object_ :: SelectionHudPaintable))

getColor_impl :: SelectionHudPaintable -> IO (Int)
getColor_impl this = do
        pure ((jget (this).color))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: SelectionHudPaintable))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: SelectionHudPaintable))

getWidth_impl :: SelectionHudPaintable -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: SelectionHudPaintable))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: SelectionHudPaintable)) a1

setHeight_impl :: SelectionHudPaintable -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: SelectionHudPaintable))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: SelectionHudPaintable))

getHeight_impl :: SelectionHudPaintable -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: SelectionHudPaintable))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: SelectionHudPaintable))

getX_impl :: SelectionHudPaintable -> IO (Int)
getX_impl this = do
        pure ((jget (this).x))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: SelectionHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: SelectionHudPaintable)) a1

paint_impl :: SelectionHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jget (this).backgroundColor))
        Control.Monad.void (Graphics.drawRect graphics (jio (SelectionHudPaintable.getX this)) (jget (this).y) (jio (SelectionHudPaintable.getWidth this)) (jio (SelectionHudPaintable.getHeight this)))
        Control.Monad.void (Graphics.setColor graphics (jio (SelectionHudPaintable.getColor this)))
        Control.Monad.void (Graphics.drawString graphics (jio (SelectionHudPaintable.getName this)) (jget (this).textX) (jget (this).y) 0)
        pure ()


