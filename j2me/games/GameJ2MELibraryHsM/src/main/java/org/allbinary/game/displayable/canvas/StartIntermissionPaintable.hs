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
module StartIntermissionPaintable (module StartIntermissionPaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paint, paint_super, paint_impl, update, update_super, update_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, fontDebugFactory, basicSetColorUtil, gameCanvas, stringArray, fontSize, font, lastWidth, updateMyFontProcessor, myFontProcessor, basicColor, color, lineYOffsetArray, hasChanged, anchor, fontHeightP, bEGIN_LEVEL, eMPTY_STRING)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified FontDebugFactory -- org.allbinary.graphics.font.FontDebugFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

-- implements UpdateMyFontInterface
data StartIntermissionPaintable = StartIntermissionPaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , fontDebugFactory :: IORef (FontDebugFactory.FontDebugFactory)
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , stringArray :: IORef (JavaArray (String))
    , fontSize :: IORef (Int)
    , font :: IORef (Font.Font)
    , lastWidth :: IORef (JavaArray (Int))
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , basicColor :: IORef (BasicColor.BasicColor)
    , color :: IORef (Int)
    , lineYOffsetArray :: IORef (JavaArray (Int))
    , hasChanged :: IORef (Bool)
    , anchor :: IORef (Int)
    , fontHeightP :: IORef (Int)
    , bEGIN_LEVEL :: IORef (String)
    , eMPTY_STRING :: IORef (String)
    }

instance JavaNull StartIntermissionPaintable where
    javaNull = javaNullRecord "StartIntermissionPaintable"

instance JavaEquals StartIntermissionPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StartIntermissionPaintable where
    (==) = jrecordEquals

instance JavaObjectClass StartIntermissionPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StartIntermissionPaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    fontDebugFactory <- newIORef javaNull
    basicSetColorUtil <- newIORef javaNull
    gameCanvas <- newIORef javaNull
    stringArray <- newIORef javaNull
    fontSize <- newIORef 0
    font <- newIORef javaNull
    lastWidth <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    basicColor <- newIORef javaNull
    color <- newIORef 0
    lineYOffsetArray <- newIORef javaNull
    hasChanged <- newIORef False
    anchor <- newIORef 0
    fontHeightP <- newIORef 0
    bEGIN_LEVEL <- newIORef ""
    eMPTY_STRING <- newIORef ""
    let this = StartIntermissionPaintable header_ base fontDebugFactory basicSetColorUtil gameCanvas stringArray fontSize font lastWidth updateMyFontProcessor myFontProcessor basicColor color lineYOffsetArray hasChanged anchor fontHeightP bEGIN_LEVEL eMPTY_STRING
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    pure this

initFields_ :: StartIntermissionPaintable -> IO ()
initFields_ this = do
    jset this.fontDebugFactory =<< (FontDebugFactory.getInstance)
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.gameCanvas (javaNull)
    jset this.stringArray (javaNull)
    jset this.fontSize (0)
    jset this.font (javaNull)
    jset this.lastWidth (javaNull)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
    jset this.color (0)
    jset this.lineYOffsetArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.hasChanged (True)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.fontHeightP (0)
    jset this.bEGIN_LEVEL ("Begin Level ")
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_4 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> JavaArray (String) -> BasicColor.BasicColor -> Font.Font -> IO StartIntermissionPaintable
new_4 gameCanvas stringArray basicColor font = do
    this <- newRecord_
    init_4 this gameCanvas stringArray basicColor font
    pure this

init_4 :: StartIntermissionPaintable -> AllBinaryGameCanvas.AllBinaryGameCanvas -> JavaArray (String) -> BasicColor.BasicColor -> Font.Font -> IO ()
init_4 this gameCanvas stringArray basicColor font = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        jset (this).gameCanvas (gameCanvas)
        jset (this).stringArray (stringArray)
        jset (this).lastWidth ((jnewArray ((jlength (jget (this).stringArray))) 0))
        Control.Monad.void (StartIntermissionPaintable.setBasicColorP this basicColor)
        assignedValue <- (BasicColor.intValue basicColor)
        jset (this).color (assignedValue)
        assignedValue <- (Font.getSize font)
        jset (this).fontSize (assignedValue)
        jset (this).font (font)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: StartIntermissionPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: StartIntermissionPaintable)) a1

updateMeasurement_impl :: StartIntermissionPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeightP (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: StartIntermissionPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: StartIntermissionPaintable)) a1

paint_impl :: StartIntermissionPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        existingFont <- (Graphics.getFont graphics)
        Control.Monad.void (FontDebugFactory.setFont ((jget (this).fontDebugFactory)) (jget (this).font) graphics)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).basicSetColorUtil)) graphics (jget (this).basicColor) (jget (this).color))
        beginWidth <- newIORef (0)
        forM_ [((jlength (jget (this).lineYOffsetArray)) - 1), ((jlength (jget (this).lineYOffsetArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (jget (this).hasChanged) $ do
                jsetIndex ((jget (this).lastWidth)) (index) ((((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jindex ((jget (this).stringArray)) (index)))) `Data.Bits.shiftR` 1)))
            jset beginWidth ((jindex ((jget (this).lastWidth)) (index)))
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).stringArray)) (index)) ((jio (DisplayInfoSingleton.getLastHalfWidth displayInfo)) - (jget beginWidth)) ((jio (DisplayInfoSingleton.getLastHalfHeight displayInfo)) - (jindex ((jget (this).lineYOffsetArray)) (index))) (jget (this).anchor))
        jset (this).hasChanged (False)
        Control.Monad.void (FontDebugFactory.setFont ((jget (this).fontDebugFactory)) existingFont graphics)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StartIntermissionPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: StartIntermissionPaintable))

update_impl :: StartIntermissionPaintable -> IO (())
update_impl this = do
        level <- (GameInfo.getCurrentLevel ((jio (AllBinaryGameLayerManager.getGameInfo ((jio (AllBinaryGameCanvas.getLayerManager ((jget (this).gameCanvas)))))))))
        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).bEGIN_LEVEL)))) level))))
        jsetIndex ((jget (this).stringArray)) (0) (assignedValue)
        forM_ [((jlength (jget (this).stringArray)) - 1), ((jlength (jget (this).stringArray)) - 1) + (-1) .. 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).stringArray)) (index) ((jget (this).eMPTY_STRING))
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: StartIntermissionPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: StartIntermissionPaintable)) a1

setBasicColorP_impl :: StartIntermissionPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: StartIntermissionPaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: StartIntermissionPaintable))

getBasicColorP_impl :: StartIntermissionPaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


