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
-- package org.allbinary.game.paint
module AboutPaintable (module AboutPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, getPaintableArrayInstance, getPaintableArrayInstance_super, getPaintableArrayInstance_impl, paint, paint_super, paint_impl, displayInfoSingleton, aBOUT, info, developers, paintableArray, myFontProcessor, charHeight, aboutBeginWidth, infoBeginWidth, developersBeginWidth, anchor)
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
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

-- implements UpdateMyFontInterface
data AboutPaintable = AboutPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , aBOUT :: IORef (String)
    , info :: IORef (JavaArray (String))
    , developers :: IORef (JavaArray (String))
    , paintableArray :: IORef (JavaArray (Paintable.Paintable))
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , charHeight :: IORef (Int)
    , aboutBeginWidth :: IORef (Int)
    , infoBeginWidth :: IORef (JavaArray (Int))
    , developersBeginWidth :: IORef (JavaArray (Int))
    , anchor :: IORef (Int)
    }

instance JavaNull AboutPaintable where
    javaNull = javaNullRecord "AboutPaintable"

instance JavaEquals AboutPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AboutPaintable where
    (==) = jrecordEquals

instance JavaObjectClass AboutPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AboutPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    aBOUT <- newIORef ""
    info <- newIORef javaNull
    developers <- newIORef javaNull
    paintableArray <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    charHeight <- newIORef 0
    aboutBeginWidth <- newIORef 0
    infoBeginWidth <- newIORef javaNull
    developersBeginWidth <- newIORef javaNull
    anchor <- newIORef 0
    let this = AboutPaintable header_ base displayInfoSingleton aBOUT info developers paintableArray myFontProcessor charHeight aboutBeginWidth infoBeginWidth developersBeginWidth anchor
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getPaintableArrayInstance" (\() -> getPaintableArrayInstance_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: AboutPaintable -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.aBOUT ((jget ((jio (CanvasStrings.getInstance))).aBOUT))
    jset this.info (javaNull)
    jset this.developers (javaNull)
    jset this.paintableArray ((jarrayFromList [this]))
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.charHeight (0)
    jset this.aboutBeginWidth (0)
    jset this.infoBeginWidth (javaNull)
    jset this.developersBeginWidth (javaNull)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()


getInstance :: JavaArray (String) -> JavaArray (String) -> IO (AboutPaintable)
getInstance info developers = do
        (new_2 info developers)

new_2 :: JavaArray (String) -> JavaArray (String) -> IO AboutPaintable
new_2 info developers = do
    this <- newRecord_
    init_2 this info developers
    pure this

init_2 :: AboutPaintable -> JavaArray (String) -> JavaArray (String) -> IO ()
init_2 this info developers = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).info (info)
        jset (this).infoBeginWidth ((jnewArray ((jlength (jget (this).info))) 0))
        jset (this).developers (developers)
        jset (this).developersBeginWidth ((jnewArray ((jlength (jget (this).developers))) 0))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: AboutPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: AboutPaintable)) a1

updateMeasurement_impl :: AboutPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).charHeight (assignedValue)
        jset (this).aboutBeginWidth ((((jio (Font.stringWidth font (jget (this).aBOUT))) `Data.Bits.shiftR` 1)))
        let infoSize = (jlength (jget (this).info))
        forM_ [0 .. infoSize - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).infoBeginWidth)) (index) ((((jio (Font.stringWidth font (jindex ((jget (this).info)) (index)))) `Data.Bits.shiftR` 1)))
        let size = (jlength (jget (this).developers))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).developersBeginWidth)) (index) ((((jio (Font.stringWidth font (jindex ((jget (this).developers)) (index)))) `Data.Bits.shiftR` 1)))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


getPaintableArrayInstance :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Paintable.Paintable))
getPaintableArrayInstance object_ = jmethod object_ "getPaintableArrayInstance" (\() -> (getPaintableArrayInstance_impl (javaCast object_ :: AboutPaintable))) ()

getPaintableArrayInstance_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Paintable.Paintable))
getPaintableArrayInstance_super object_ = (getPaintableArrayInstance_impl (javaCast object_ :: AboutPaintable))

getPaintableArrayInstance_impl :: AboutPaintable -> IO (JavaArray (Paintable.Paintable))
getPaintableArrayInstance_impl this = do
        pure ((jget (this).paintableArray))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AboutPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AboutPaintable)) a1

paint_impl :: AboutPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))
        Control.Monad.void (Graphics.drawString graphics (jget (this).aBOUT) (halfWidth - (jget (this).aboutBeginWidth)) (2 * (jget (this).charHeight)) (jget (this).anchor))
        let infoSize = (jlength (jget (this).info))
        forM_ [0 .. infoSize - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).info)) (index)) (halfWidth - (jindex ((jget (this).infoBeginWidth)) (index))) (((4 + index)) * (jget (this).charHeight)) (jget (this).anchor))
        let size = (jlength (jget (this).developers))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).developers)) (index)) (halfWidth - (jindex ((jget (this).developersBeginWidth)) (index))) ((((5 + infoSize) + index)) * (jget (this).charHeight)) (jget (this).anchor))
        pure ()


