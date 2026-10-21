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
-- package org.allbinary.game.score
module HighScoresPaintable (module HighScoresPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, onEvent, onEvent_super, onEvent_impl, paint, paint_super, paint_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, setHighScores, setHighScores_super, setHighScores_impl, displayInfoSingleton, myFontProcessor, basicColor, highScores, anchor, charHeight)
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
import qualified NullHighScoresSingletonFactory -- same package or java.lang
import qualified HighScores -- same package or java.lang
import qualified HighScore -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ColorChangeEvent -- org.allbinary.graphics.color.ColorChangeEvent
import qualified ColorChangeListener -- org.allbinary.graphics.color.ColorChangeListener
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- implements ColorChangeListener
-- implements UpdateMyFontInterface
data HighScoresPaintable = HighScoresPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , basicColor :: IORef (BasicColor.BasicColor)
    , highScores :: IORef (HighScores.HighScores)
    , anchor :: IORef (Int)
    , charHeight :: IORef (Int)
    }

instance JavaNull HighScoresPaintable where
    javaNull = javaNullRecord "HighScoresPaintable"

instance JavaEquals HighScoresPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresPaintable where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoresPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    basicColor <- newIORef javaNull
    highScores <- newIORef javaNull
    anchor <- newIORef 0
    charHeight <- newIORef 0
    let this = HighScoresPaintable header_ base displayInfoSingleton myFontProcessor basicColor highScores anchor charHeight
    jregisterLevel header_ this
    ColorChangeListener.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setHighScores" (\() -> setHighScores_impl this)
    pure this

initFields_ :: HighScoresPaintable -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.highScores =<< (NullHighScoresSingletonFactory.getInstance)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.charHeight (0)
    pure ()

new_ :: IO HighScoresPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresPaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: HighScoresPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: HighScoresPaintable)) a1

updateMeasurement_impl :: HighScoresPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).charHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: HighScoresPaintable))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: HighScoresPaintable)) a1

onEvent_impl :: HighScoresPaintable -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        let colorChangeEvent = (javaCast eventObject :: ColorChangeEvent.ColorChangeEvent)
        assignedValue <- (ColorChangeEvent.getBasicColorP colorChangeEvent)
        jset (this).basicColor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HighScoresPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HighScoresPaintable)) a1

paint_impl :: HighScoresPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        width <- (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))
        height <- (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfoSingleton)))
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jio (HighScoresPaintable.getBasicColorP this))))))
        heading <- (HighScores.getHeading ((jget (this).highScores)))
        let topScoresWidth = (((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) heading)) `Data.Bits.shiftR` 1))
        let charHeight = (jget (this).charHeight)
        Control.Monad.void (Graphics.drawString graphics heading (((width `Data.Bits.shiftR` 1)) - topScoresWidth) charHeight (jget (this).anchor))
        Control.Monad.void (Graphics.drawString graphics (jio (HighScores.getColumnOneHeading ((jget (this).highScores)))) 10 (charHeight * 3) (jget (this).anchor))
        columnTwoHeading <- (HighScores.getColumnTwoHeading ((jget (this).highScores)))
        columnTwoHeadingWidth <- (Graphics.stringWidth ((jio (Graphics.getFont graphics))) columnTwoHeading)
        Control.Monad.void (Graphics.drawString graphics columnTwoHeading ((width - 10) - columnTwoHeadingWidth) (charHeight * 3) (jget (this).anchor))
        index <- newIORef (4)
        largestSecondColumnWidth <- newIORef (columnTwoHeadingWidth)
        list <- (HighScores.getList ((jget (this).highScores)))
        size <- (BasicArrayList.size list)
        vectorIndex <- newIORef (0)
        highScore <- newIORef (javaNull)
        fix $ \loop -> when (((jget vectorIndex) < size) && ((charHeight * (jget index)) < (height - ((charHeight * 2))))) $ javaIteration (loop) $ do
            jset highScore ((javaCast (jindex ((jget (list).objectArray)) ((jget vectorIndex))) :: HighScore.HighScore))
            nextScoreWidth <- (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jio (HighScore.getScoreString ((jget highScore)))))
            when (nextScoreWidth > (jget largestSecondColumnWidth)) $ do
                jset largestSecondColumnWidth (nextScoreWidth)
            jset vectorIndex ((jget vectorIndex) + 1)
        jset vectorIndex (0)
        fix $ \loop -> when (((jget vectorIndex) < size) && ((charHeight * (jget index)) < (height - ((charHeight * 2))))) $ javaIteration (loop) $ do
            jset highScore ((javaCast (jindex ((jget (list).objectArray)) ((jget vectorIndex))) :: HighScore.HighScore))
            Control.Monad.void (Graphics.drawString graphics (jio (HighScore.getName ((jget highScore)))) 10 (charHeight * (jget index)) (jget (this).anchor))
            Control.Monad.void (Graphics.drawString graphics (jio (HighScore.getScoreString ((jget highScore)))) ((width - 10) - (jget largestSecondColumnWidth)) (charHeight * (jget index)) (jget (this).anchor))
            jset index ((jget index) + 1)
            jset vectorIndex ((jget vectorIndex) + 1)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: HighScoresPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: HighScoresPaintable)) a1

setBasicColorP_impl :: HighScoresPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: HighScoresPaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: HighScoresPaintable))

getBasicColorP_impl :: HighScoresPaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setHighScores :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setHighScores object_ a1 = jmethod object_ "setHighScores" (\() -> (setHighScores_impl (javaCast object_ :: HighScoresPaintable))) () a1

setHighScores_super :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setHighScores_super object_ a1 = (setHighScores_impl (javaCast object_ :: HighScoresPaintable)) a1

setHighScores_impl :: HighScoresPaintable -> HighScores.HighScores -> IO (())
setHighScores_impl this highScores = do
        jset (this).highScores (highScores)
        pure ()


