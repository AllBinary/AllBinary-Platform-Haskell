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
-- package org.allbinary.game.paint.help
module HelpPaintable (module HelpPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, setInputInfoP, setInputInfoP_super, setInputInfoP_impl, paint, paint_super, paint_impl, displayInfo, updateMyFontProcessor, myFontProcessor, anchor, title, inputInfo, basicColor, titleBeginWidth, beginWidthArray, charHeight)
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
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

-- implements UpdateMyFontInterface
data HelpPaintable = HelpPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , anchor :: IORef (Int)
    , title :: IORef (String)
    , inputInfo :: IORef (JavaArray (String))
    , basicColor :: IORef (BasicColor.BasicColor)
    , titleBeginWidth :: IORef (Int)
    , beginWidthArray :: IORef (JavaArray (Int))
    , charHeight :: IORef (Int)
    }

instance JavaNull HelpPaintable where
    javaNull = javaNullRecord "HelpPaintable"

instance JavaEquals HelpPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HelpPaintable where
    (==) = jrecordEquals

instance JavaObjectClass HelpPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HelpPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfo <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    anchor <- newIORef 0
    title <- newIORef ""
    inputInfo <- newIORef javaNull
    basicColor <- newIORef javaNull
    titleBeginWidth <- newIORef 0
    beginWidthArray <- newIORef javaNull
    charHeight <- newIORef 0
    let this = HelpPaintable header_ base displayInfo updateMyFontProcessor myFontProcessor anchor title inputInfo basicColor titleBeginWidth beginWidthArray charHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "setInputInfoP" (\() -> setInputInfoP_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: HelpPaintable -> IO ()
initFields_ this = do
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.title (javaNull)
    jset this.inputInfo =<< (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))
    jset this.basicColor (javaNull)
    jset this.titleBeginWidth (0)
    jset this.beginWidthArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.charHeight (0)
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO HelpPaintable
new_3 title backgroundBasicColor basicColor = do
    this <- newRecord_
    init_3 this title backgroundBasicColor basicColor
    pure this

init_3 :: HelpPaintable -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this title backgroundBasicColor basicColor = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).title (title)
        jset (this).basicColor (basicColor)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: HelpPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: HelpPaintable)) a1

updateMeasurement_impl :: HelpPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).titleBeginWidth ((((jio (Font.stringWidth font (jget (this).title))) `Data.Bits.shiftR` 1)))
        assignedValue <- (Font.getHeight font)
        jset (this).charHeight (assignedValue)
        let size = (jlength (jget (this).inputInfo))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).beginWidthArray)) (index) ((((jio (Font.stringWidth font (jindex ((jget (this).inputInfo)) (index)))) `Data.Bits.shiftR` 1)))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


setInputInfoP :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (())
setInputInfoP object_ a1 = jmethod object_ "setInputInfoP" (\() -> (setInputInfoP_impl (javaCast object_ :: HelpPaintable))) () a1

setInputInfoP_super :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (())
setInputInfoP_super object_ a1 = (setInputInfoP_impl (javaCast object_ :: HelpPaintable)) a1

setInputInfoP_impl :: HelpPaintable -> JavaArray (String) -> IO (())
setInputInfoP_impl this inputInfo = do
        jset (this).inputInfo (inputInfo)
        jset (this).beginWidthArray ((jnewArray ((jlength (jget (this).inputInfo))) 0))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HelpPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HelpPaintable)) a1

paint_impl :: HelpPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfo)))
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget (this).basicColor)))))
        Control.Monad.void (Graphics.drawString graphics (jget (this).title) (halfWidth - (jget (this).titleBeginWidth)) (jget (this).charHeight) (jget (this).anchor))
        let size = (jlength (jget (this).inputInfo))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).inputInfo)) (index)) (halfWidth - (jindex ((jget (this).beginWidthArray)) (index))) (((index + 3)) * (jget (this).charHeight)) (jget (this).anchor))
        pure ()


