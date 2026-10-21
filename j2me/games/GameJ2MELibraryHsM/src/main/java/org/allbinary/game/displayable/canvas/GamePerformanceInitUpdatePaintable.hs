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
module GamePerformanceInitUpdatePaintable (module GamePerformanceInitUpdatePaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, init, init_super, init_impl, update, update_super, update_impl, paint, paint_super, paint_impl, halfHeight, yArray, myFontProcessor, baseRefreshHelperCharArray, defaultStringWidth, rED)
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
import qualified BasicColor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameStatisticsFactory -- org.allbinary.canvas.GameStatisticsFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable

-- implements UpdateMyFontInterface
data GamePerformanceInitUpdatePaintable = GamePerformanceInitUpdatePaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , halfHeight :: IORef (Int)
    , yArray :: IORef (JavaArray (Int))
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , baseRefreshHelperCharArray :: IORef (JavaArray (JavaArray (Char)))
    , defaultStringWidth :: IORef (Int)
    , rED :: IORef (Int)
    }

instance JavaNull GamePerformanceInitUpdatePaintable where
    javaNull = javaNullRecord "GamePerformanceInitUpdatePaintable"

instance JavaEquals GamePerformanceInitUpdatePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GamePerformanceInitUpdatePaintable where
    (==) = jrecordEquals

instance JavaObjectClass GamePerformanceInitUpdatePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GamePerformanceInitUpdatePaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    halfHeight <- newIORef 0
    yArray <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    baseRefreshHelperCharArray <- newIORef javaNull
    defaultStringWidth <- newIORef 0
    rED <- newIORef 0
    let this = GamePerformanceInitUpdatePaintable header_ base halfHeight yArray myFontProcessor baseRefreshHelperCharArray defaultStringWidth rED
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GamePerformanceInitUpdatePaintable -> IO ()
initFields_ this = do
    jset this.halfHeight =<< (DisplayInfoSingleton.getLastHalfHeight ((jio (DisplayInfoSingleton.getInstance))))
    jset this.yArray ((jarrayFromList [((jget (this).halfHeight) + 30), ((jget (this).halfHeight) + 30), (((jget (this).halfHeight) + 30) + 15), (((jget (this).halfHeight) + 30) + 15), (((jget (this).halfHeight) + 30) + 30), (((jget (this).halfHeight) + 30) + 30), (((jget (this).halfHeight) + 30) + 45), (((jget (this).halfHeight) + 30) + 45)]))
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.baseRefreshHelperCharArray ((jnewArray2 (0) (0) '\0'))
    jset this.defaultStringWidth (0)
    jset this.rED =<< (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED)))
    pure ()

new_ :: IO GamePerformanceInitUpdatePaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GamePerformanceInitUpdatePaintable -> IO ()
init_ this = do
    InitUpdatePaintable.init_ this.base
    initFields_ this


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable)) a1

updateMeasurement_impl :: GamePerformanceInitUpdatePaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (MyFontProcessor.defaultStringWidth font 2)
        jset (this).defaultStringWidth (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))

init_impl :: GamePerformanceInitUpdatePaintable -> IO (())
init_impl this = do
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))

update_impl :: GamePerformanceInitUpdatePaintable -> IO (())
update_impl this = do
        assignedValue <- (GameStatisticsFactory.to2DCharArray ((jio (GameStatisticsFactory.getInstance))))
        jset (this).baseRefreshHelperCharArray (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GamePerformanceInitUpdatePaintable)) a1

paint_impl :: GamePerformanceInitUpdatePaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jget (this).rED))
        charArray <- newIORef (javaNull)
        charArray2 <- newIORef (javaNull)
        size2 <- newIORef (0)
        size3 <- newIORef (0)
        let size = ((jlength (jget (this).baseRefreshHelperCharArray)) - 2)
        forM_ [size, size + (-2) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset charArray ((jindex ((jget (this).baseRefreshHelperCharArray)) (index)))
            jset charArray2 ((jindex ((jget (this).baseRefreshHelperCharArray)) ((index + 1))))
            jset size2 ((jlength (jget charArray)))
            jset size3 ((jlength (jget charArray2)))
            Control.Monad.void (Graphics.drawChars graphics (jget charArray) 0 (jget size2) 0 (jindex ((jget (this).yArray)) (index)) 0)
            Control.Monad.void (Graphics.drawChars graphics (jget charArray2) 0 (jget size3) ((jget size2) * (jget (this).defaultStringWidth)) (jindex ((jget (this).yArray)) ((index + 1))) 0)
        pure ()


