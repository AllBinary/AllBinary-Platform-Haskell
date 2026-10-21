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
-- package org.allbinary.game.displayable.canvas
module BasicPopupMenuPaintable (module BasicPopupMenuPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, init, init_super, init_impl, paint, paint_super, paint_impl, nAME, basicSetColorUtil, drawStringUtil, label, foregroundBasicColor, myFontProcessor, rectangle, bORDER, heightOffset, offset, animationInterface)
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
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified RectangleFilledAnimation -- org.allbinary.animation.vector.RectangleFilledAnimation
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified SWTUtil -- org.allbinary.game.layer.SWTUtil
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified DrawVerticalStringUtil -- org.allbinary.graphics.draw.DrawVerticalStringUtil
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified SWTJOGLProcessor -- org.allbinary.graphics.threed.SWTJOGLProcessor

-- implements UpdateMyFontInterface
data BasicPopupMenuPaintable = BasicPopupMenuPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , drawStringUtil :: IORef (DrawVerticalStringUtil.DrawVerticalStringUtil)
    , label :: IORef (String)
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , rectangle :: IORef (Rectangle.Rectangle)
    , bORDER :: IORef (Int)
    , heightOffset :: IORef (Int)
    , offset :: IORef (Int)
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull BasicPopupMenuPaintable where
    javaNull = javaNullRecord "BasicPopupMenuPaintable"

instance JavaEquals BasicPopupMenuPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPopupMenuPaintable where
    (==) = jrecordEquals

instance JavaObjectClass BasicPopupMenuPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "MENU"

newRecord_ :: IO BasicPopupMenuPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    basicSetColorUtil <- newIORef javaNull
    drawStringUtil <- newIORef javaNull
    label <- newIORef ""
    foregroundBasicColor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    rectangle <- newIORef javaNull
    bORDER <- newIORef 0
    heightOffset <- newIORef 0
    offset <- newIORef 0
    animationInterface <- newIORef javaNull
    let this = BasicPopupMenuPaintable header_ base basicSetColorUtil drawStringUtil label foregroundBasicColor myFontProcessor rectangle bORDER heightOffset offset animationInterface
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: BasicPopupMenuPaintable -> IO ()
initFields_ this = do
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.drawStringUtil =<< (DrawVerticalStringUtil.getInstance)
    jset this.label (javaNull)
    jset this.foregroundBasicColor (javaNull)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.rectangle (javaNull)
    jset this.bORDER (0)
    jset this.heightOffset (0)
    jset this.offset (0)
    jset this.animationInterface (javaNull)
    pure ()

new_3 :: Rectangle.Rectangle -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO BasicPopupMenuPaintable
new_3 rectangle backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this rectangle backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: BasicPopupMenuPaintable -> Rectangle.Rectangle -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this rectangle backgroundBasicColor foregroundBasicColor = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).foregroundBasicColor (foregroundBasicColor)
        jset (this).label (BasicPopupMenuPaintable.nAME)
        jset (this).rectangle (rectangle)
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
            jset (this).animationInterface (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (RectangleFilledAnimation.new_3 (jio (Rectangle.getWidth ((jget (this).rectangle)))) (jio (Rectangle.getHeight ((jget (this).rectangle)))) (jget ((jio (BasicColorFactory.getInstance))).tRANSPARENT_GREY)))
            jset (this).animationInterface (assignedValue)
        Control.Monad.void (BasicPopupMenuPaintable.init this rectangle)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: BasicPopupMenuPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: BasicPopupMenuPaintable)) a1

updateMeasurement_impl :: BasicPopupMenuPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        features <- (Features.getInstance)
        isOpenGL <- (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))
        Control.Monad.void (DrawVerticalStringUtil.updateMeasurement ((jget (this).drawStringUtil)) graphics (jget (this).label))
        bORDER <- newIORef (0)
        if ((jio (J2MEUtil.isHTML)) || isOpenGL) then do
            jset bORDER (((jio (MyFontProcessor.defaultCharWidth font)) `quot` 2))
        else if (((jio (AndroidUtil.isAndroid)) || (jio (J2MEUtil.isJ2SE))) || (jget SWTUtil.isSWT)) then do
            assignedValue <- (MyFontProcessor.defaultCharWidth font)
            jset bORDER (assignedValue)
        else do
            jset bORDER (((jio (MyFontProcessor.defaultCharWidth font)) * 2))
        jset (this).bORDER ((jget bORDER))
        jset (this).heightOffset (((jio (Rectangle.getHeight ((jget (this).rectangle)))) - (((jio (Font.getHeight font)) * (jio (length BasicPopupMenuPaintable.nAME))))))
        when (jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) $ do
            jset (this).heightOffset (((jget (this).heightOffset) - ((jio (Font.getHeight font)) + 2)))
            if (jio (AndroidUtil.isAndroid)) then do
                assignedValue <- (Font.getHeight font)
                jset (this).heightOffset (assignedValue)
            else do
                jset (this).heightOffset (((jget (this).heightOffset) - ((jio (Font.getHeight font)) + 2)))
        jset (this).offset (((((jget (this).heightOffset) `Data.Bits.shiftR` 1)) + ((if (jio (SWTJOGLProcessor.isJOGL ((jio (SWTJOGLProcessor.getInstance))))) then 4 else 0))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicPopupMenuPaintable))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BasicPopupMenuPaintable)) a1

init_impl :: BasicPopupMenuPaintable -> Rectangle.Rectangle -> IO (())
init_impl this rectangle = do
        jset (this).rectangle (rectangle)
        width <- (Rectangle.getWidth ((jget (this).rectangle)))
        height <- (Rectangle.getHeight ((jget (this).rectangle)))
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            pure ()
        else do
            let rectangleFilledAnimation = (javaCast (jget (this).animationInterface) :: RectangleFilledAnimation.RectangleFilledAnimation)
            Control.Monad.void (RectangleFilledAnimation.setWidth rectangleFilledAnimation width)
            Control.Monad.void (RectangleFilledAnimation.setHeight rectangleFilledAnimation height)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BasicPopupMenuPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BasicPopupMenuPaintable)) a1

paint_impl :: BasicPopupMenuPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        point <- (Rectangle.getPoint ((jget (this).rectangle)))
        x <- (GPoint.getX point)
        y <- (GPoint.getY point)
        width <- (Rectangle.getWidth ((jget (this).rectangle)))
        height <- (Rectangle.getHeight ((jget (this).rectangle)))
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics x y)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jget (this).foregroundBasicColor))
        Control.Monad.void (DrawVerticalStringUtil.paintVerticle ((jget (this).drawStringUtil)) graphics (jget (this).label) (x + (jget (this).bORDER)) (y + (jget (this).offset)) 0)
        Control.Monad.void (Graphics.drawRect graphics x y width height)
        pure ()


