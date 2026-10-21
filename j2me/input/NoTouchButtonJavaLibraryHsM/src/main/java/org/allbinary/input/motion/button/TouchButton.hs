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

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, updateRectangle, updateRectangle_super, updateRectangle_impl, getCellPositionP, getCellPositionP_super, getCellPositionP_impl, getRectangleP, getRectangleP_super, getRectangleP_impl, getTouchButtonInput, getTouchButtonInput_super, getTouchButtonInput_impl, toString, toString_super, toString_impl, logUtil, commonStrings, touchButtonInput, animationInterface, rawRectangle, xBorder, yBorder, rectangle, cellPosition, animationX, animationY)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationInterface -- org.allbinary.animation.AnimationInterface
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
    , rawRectangle :: IORef (Rectangle.Rectangle)
    , xBorder :: IORef (Int)
    , yBorder :: IORef (Int)
    , rectangle :: IORef (Rectangle.Rectangle)
    , cellPosition :: IORef (CellPosition.CellPosition)
    , animationX :: IORef (Int)
    , animationY :: IORef (Int)
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
    rawRectangle <- newIORef javaNull
    xBorder <- newIORef 0
    yBorder <- newIORef 0
    rectangle <- newIORef javaNull
    cellPosition <- newIORef javaNull
    animationX <- newIORef 0
    animationY <- newIORef 0
    let this = TouchButton header_ base logUtil commonStrings touchButtonInput animationInterface rawRectangle xBorder yBorder rectangle cellPosition animationX animationY
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "updateRectangle" (\() -> updateRectangle_impl this)
    jregisterMethod header_ "getCellPositionP" (\() -> getCellPositionP_impl this)
    jregisterMethod header_ "getRectangleP" (\() -> getRectangleP_impl this)
    jregisterMethod header_ "getTouchButtonInput" (\() -> getTouchButtonInput_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TouchButton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.touchButtonInput (javaNull)
    jset this.animationInterface (javaNull)
    jset this.rawRectangle (javaNull)
    jset this.xBorder (0)
    jset this.yBorder (0)
    jset this.rectangle (RectangleFactory.sINGLETON)
    jset this.cellPosition (javaNull)
    jset this.animationX (0)
    jset this.animationY (0)
    pure ()

new_6 :: TouchButtonInput.TouchButtonInput -> AnimationInterface.AnimationInterface -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO TouchButton
new_6 touchButtonInput animationInterface rawRectangle cellPosition xBorder yBorder = do
    this <- newRecord_
    init_6 this touchButtonInput animationInterface rawRectangle cellPosition xBorder yBorder
    pure this

init_6 :: TouchButton -> TouchButtonInput.TouchButtonInput -> AnimationInterface.AnimationInterface -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO ()
init_6 this touchButtonInput animationInterface rawRectangle cellPosition xBorder yBorder = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).touchButtonInput (touchButtonInput)
        jset (this).animationInterface ((javaCast animationInterface :: Animation.Animation))
        jset (this).rawRectangle (rawRectangle)
        jset (this).cellPosition (cellPosition)
        jset (this).xBorder (xBorder)
        jset (this).yBorder (yBorder)
        Control.Monad.void (TouchButton.updateRectangle this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Created: "))) (jio (TouchButton.toString this))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TouchButton))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TouchButton)) a1

paint_impl :: TouchButton -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (jget this.animationX) (jget (this).animationY))
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
            let x = ((jio (Rectangle.getWidth ((jget (this).rawRectangle)))) * (jio (CellPosition.getColumn ((jget (this).cellPosition)))))
            let y = ((jio (Rectangle.getHeight ((jget (this).rawRectangle)))) * (jio (CellPosition.getRow ((jget (this).cellPosition)))))
            pointFactory <- (PointFactory.getInstance)
            assignedValue <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory (x + (jget (this).xBorder)) (y + (jget (this).yBorder)))) (jio (Rectangle.getWidth ((jget (this).rawRectangle)))) (jio (Rectangle.getHeight ((jget (this).rawRectangle)))))
            jset (this).rectangle (assignedValue)
            point <- (Rectangle.getPoint ((jget (this).rectangle)))
            assignedValue <- (GPoint.getX point)
            jset (this).animationX (assignedValue)
            assignedValue <- (GPoint.getY point)
            jset (this).animationY (assignedValue)
        pure ()


getCellPositionP :: (JavaObjectClass this_) => this_ -> IO (CellPosition.CellPosition)
getCellPositionP object_ = jmethod object_ "getCellPositionP" (\() -> (getCellPositionP_impl (javaCast object_ :: TouchButton))) ()

getCellPositionP_super :: (JavaObjectClass this_) => this_ -> IO (CellPosition.CellPosition)
getCellPositionP_super object_ = (getCellPositionP_impl (javaCast object_ :: TouchButton))

getCellPositionP_impl :: TouchButton -> IO (CellPosition.CellPosition)
getCellPositionP_impl this = do
        pure ((jget (this).cellPosition))


getRectangleP :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangleP object_ = jmethod object_ "getRectangleP" (\() -> (getRectangleP_impl (javaCast object_ :: TouchButton))) ()

getRectangleP_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangleP_super object_ = (getRectangleP_impl (javaCast object_ :: TouchButton))

getRectangleP_impl :: TouchButton -> IO (Rectangle.Rectangle)
getRectangleP_impl this = do
        pure ((jget (this).rectangle))


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
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).rectangle))))
        Control.Monad.void (StringMaker.append stringBuffer " CellPosition: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).cellPosition))))
        Control.Monad.void (StringMaker.append stringBuffer " xBorder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).xBorder))
        Control.Monad.void (StringMaker.append stringBuffer " yBorder: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).yBorder))
        (StringMaker.toString stringBuffer)


