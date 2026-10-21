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
module ColorFillBasePaintable (module ColorFillBasePaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, getColor, getColor_super, getColor_impl, setColor, setColor_super, setColor_impl, paint, paint_super, paint_impl, basicColor, colorP)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ColorCompositeInterface -- org.allbinary.graphics.color.ColorCompositeInterface
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

-- implements ColorCompositeInterface
data ColorFillBasePaintable = ColorFillBasePaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , basicColor :: IORef (BasicColor.BasicColor)
    , colorP :: IORef (Int)
    }

instance JavaNull ColorFillBasePaintable where
    javaNull = javaNullRecord "ColorFillBasePaintable"

instance JavaEquals ColorFillBasePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorFillBasePaintable where
    (==) = jrecordEquals

instance JavaObjectClass ColorFillBasePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorFillBasePaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    basicColor <- newIORef javaNull
    colorP <- newIORef 0
    let this = ColorFillBasePaintable header_ base basicColor colorP
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ColorFillBasePaintable -> IO ()
initFields_ this = do
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.colorP (0)
    pure ()

new_1 :: BasicColor.BasicColor -> IO ColorFillBasePaintable
new_1 basicColor = do
    this <- newRecord_
    init_1 this basicColor
    pure this

init_1 :: ColorFillBasePaintable -> BasicColor.BasicColor -> IO ()
init_1 this basicColor = do
        Paintable.init_ this.base
        initFields_ this
        Control.Monad.void (ColorFillBasePaintable.setBasicColorP this basicColor)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: ColorFillBasePaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: ColorFillBasePaintable)) a1

setBasicColorP_impl :: ColorFillBasePaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        Control.Monad.void (ColorFillBasePaintable.setColor this (jio (BasicColor.intValue ((jio (ColorFillBasePaintable.getBasicColorP this))))))
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: ColorFillBasePaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: ColorFillBasePaintable))

getBasicColorP_impl :: ColorFillBasePaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


getColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: ColorFillBasePaintable))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor_super object_ = (getColor_impl (javaCast object_ :: ColorFillBasePaintable))

getColor_impl :: ColorFillBasePaintable -> IO (Int)
getColor_impl this = do
        pure ((jget (this).colorP))


setColor :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ColorFillBasePaintable))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: ColorFillBasePaintable)) a1

setColor_impl :: ColorFillBasePaintable -> Int -> IO (())
setColor_impl this color = do
        jset (this).colorP (color)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ColorFillBasePaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ColorFillBasePaintable)) a1

paint_impl :: ColorFillBasePaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


