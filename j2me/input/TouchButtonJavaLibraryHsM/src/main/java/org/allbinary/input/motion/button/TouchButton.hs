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
-- package org.allbinary.input.motion.button
module TouchButton (module TouchButton, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createButton, createButton_super, createButton_impl, paintHint, paintHint_super, paintHint_impl, paint, paint_super, paint_impl, updateRectangle, updateRectangle_super, updateRectangle_impl, getCellPosition, getCellPosition_super, getCellPosition_impl, getRectangle, getRectangle_super, getRectangle_impl, getTouchButtonInput, getTouchButtonInput_super, getTouchButtonInput_impl, toString, toString_super, toString_impl, logUtil, commonStrings, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, xBorder, yBorder, rectangleP, cellPositionP, animationX, animationY, hintAnimationY)
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
import qualified TouchButtonInput -- same package or java.lang
import qualified TouchButtonResource -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TouchButton = TouchButton
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , touchButtonInput :: IORef (TouchButtonInput.TouchButtonInput)
    , animationInterface :: IORef (Animation.Animation)
    , hintAnimationInterface :: IORef (Animation.Animation)
    , rawRectangle :: IORef (Rectangle.Rectangle)
    , xBorder :: IORef (Int)
    , yBorder :: IORef (Int)
    , rectangleP :: IORef (Rectangle.Rectangle)
    , cellPositionP :: IORef (CellPosition.CellPosition)
    , animationX :: IORef (Int)
    , animationY :: IORef (Int)
    , hintAnimationY :: IORef (Int)
    }

instance JavaNull TouchButton where
    javaNull = javaNullRecord "TouchButton"

instance JavaEquals TouchButton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButton where
    (==) = jrecordEquals

instance JavaObjectClass TouchButton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButton
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    touchButtonInput <- newIORef javaNull
    animationInterface <- newIORef javaNull
    hintAnimationInterface <- newIORef javaNull
    rawRectangle <- newIORef javaNull
    xBorder <- newIORef 0
    yBorder <- newIORef 0
    rectangleP <- newIORef javaNull
    cellPositionP <- newIORef javaNull
    animationX <- newIORef 0
    animationY <- newIORef 0
    hintAnimationY <- newIORef 0
    let this = TouchButton header_ base logUtil commonStrings touchButtonInput animationInterface hintAnimationInterface rawRectangle xBorder yBorder rectangleP cellPositionP animationX animationY hintAnimationY
    jregisterLevel header_ this
    jregisterMethod header_ "paintHint" (\() -> paintHint_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "updateRectangle" (\() -> updateRectangle_impl this)
    jregisterMethod header_ "getCellPosition" (\() -> getCellPosition_impl this)
    jregisterMethod header_ "getRectangle" (\() -> getRectangle_impl this)
    jregisterMethod header_ "getTouchButtonInput" (\() -> getTouchButtonInput_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TouchButton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.touchButtonInput (javaNull)
    jset this.animationInterface (javaNull)
    jset this.hintAnimationInterface (javaNull)
    jset this.rawRectangle (javaNull)
    jset this.xBorder (0)
    jset this.yBorder (0)
    jset this.rectangleP (RectangleFactory.sINGLETON)
    jset this.cellPositionP (javaNull)
    jset this.animationX (0)
    jset this.animationY (0)
    jset this.hintAnimationY (0)
    pure ()


-- throws Exception
createButton :: TouchButtonInput.TouchButtonInput -> TouchButtonResource.TouchButtonResource -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO (TouchButton)
createButton touchButtonInput touchButtonResource rawRectangle cellPosition xBorder yBorder = do
        (new_7 touchButtonInput (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget (touchButtonResource).rESOURCE)))) 0)) (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget (touchButtonResource).hINT)))) 0)) rawRectangle cellPosition xBorder yBorder)

new_7 :: TouchButtonInput.TouchButtonInput -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO TouchButton
new_7 touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder = do
    this <- newRecord_
    init_7 this touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder
    pure this

init_7 :: TouchButton -> TouchButtonInput.TouchButtonInput -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO ()
init_7 this touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).touchButtonInput (touchButtonInput)
        jset (this).animationInterface (animationInterface)
        jset (this).hintAnimationInterface (hintAnimationInterface)
        jset (this).rawRectangle (rawRectangle)
        jset (this).cellPositionP (cellPosition)
        jset (this).xBorder (xBorder)
        jset (this).yBorder (yBorder)
        Control.Monad.void (TouchButton.updateRectangle this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Created: "))) (jio (TouchButton.toString this))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


paintHint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintHint object_ a1 = jmethod object_ "paintHint" (\() -> (paintHint_impl (javaCast object_ :: TouchButton))) () a1

paintHint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintHint_super object_ a1 = (paintHint_impl (javaCast object_ :: TouchButton)) a1

paintHint_impl :: TouchButton -> Graphics.Graphics -> IO (())
paintHint_impl this graphics = do
        Control.Monad.void (Animation.paintXY ((jget (this).hintAnimationInterface)) graphics (jget (this).animationX) (jget (this).hintAnimationY))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TouchButton))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TouchButton)) a1

paint_impl :: TouchButton -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (jget (this).animationX) (jget (this).animationY))
        pure ()


updateRectangle :: (JavaObjectClass this_) => this_ -> IO (())
updateRectangle object_ = jmethod object_ "updateRectangle" (\() -> (updateRectangle_impl (javaCast object_ :: TouchButton))) ()

updateRectangle_super :: (JavaObjectClass this_) => this_ -> IO (())
updateRectangle_super object_ = (updateRectangle_impl (javaCast object_ :: TouchButton))

updateRectangle_impl :: TouchButton -> IO (())
updateRectangle_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "updateRectangle" e)
            ) $ do
            pointFactory <- (PointFactory.getInstance)
            let x = ((jio (Rectangle.getWidth ((jget (this).rawRectangle)))) * (jio (CellPosition.getColumn ((jget (this).cellPositionP)))))
            let y = ((jio (Rectangle.getHeight ((jget (this).rawRectangle)))) * (jio (CellPosition.getRow ((jget (this).cellPositionP)))))
            assignedValue <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory (x + (jget (this).xBorder)) (y + (jget (this).yBorder)))) (jio (Rectangle.getWidth ((jget (this).rawRectangle)))) (jio (Rectangle.getHeight ((jget (this).rawRectangle)))))
            jset (this).rectangleP (assignedValue)
            point <- (Rectangle.getPoint ((jget (this).rectangleP)))
            assignedValue <- (GPoint.getX point)
            jset (this).animationX (assignedValue)
            assignedValue <- (GPoint.getY point)
            jset (this).animationY (assignedValue)
            jset (this).hintAnimationY (((jget (this).animationY) - 32))
        pure ()


getCellPosition :: (JavaObjectClass this_) => this_ -> IO (CellPosition.CellPosition)
getCellPosition object_ = jmethod object_ "getCellPosition" (\() -> (getCellPosition_impl (javaCast object_ :: TouchButton))) ()

getCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (CellPosition.CellPosition)
getCellPosition_super object_ = (getCellPosition_impl (javaCast object_ :: TouchButton))

getCellPosition_impl :: TouchButton -> IO (CellPosition.CellPosition)
getCellPosition_impl this = do
        pure ((jget (this).cellPositionP))


getRectangle :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle object_ = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: TouchButton))) ()

getRectangle_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle_super object_ = (getRectangle_impl (javaCast object_ :: TouchButton))

getRectangle_impl :: TouchButton -> IO (Rectangle.Rectangle)
getRectangle_impl this = do
        pure ((jget (this).rectangleP))


getTouchButtonInput :: (JavaObjectClass this_) => this_ -> IO (TouchButtonInput.TouchButtonInput)
getTouchButtonInput object_ = jmethod object_ "getTouchButtonInput" (\() -> (getTouchButtonInput_impl (javaCast object_ :: TouchButton))) ()

getTouchButtonInput_super :: (JavaObjectClass this_) => this_ -> IO (TouchButtonInput.TouchButtonInput)
getTouchButtonInput_super object_ = (getTouchButtonInput_impl (javaCast object_ :: TouchButton))

getTouchButtonInput_impl :: TouchButton -> IO (TouchButtonInput.TouchButtonInput)
getTouchButtonInput_impl this = do
        pure ((jget (this).touchButtonInput))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TouchButton))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TouchButton))

toString_impl :: TouchButton -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer "TouchButton: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jio (TouchButton.getRectangle this)))))
        Control.Monad.void (StringMaker.append stringBuffer " CellPosition: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).cellPositionP))))
        Control.Monad.void (StringMaker.append stringBuffer " xBorder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).xBorder))
        Control.Monad.void (StringMaker.append stringBuffer " yBorder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).yBorder))
        (StringMaker.toString stringBuffer)


