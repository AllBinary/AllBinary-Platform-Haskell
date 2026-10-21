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
module ColorFillPaintable (module ColorFillPaintable, module ColorFillBasePaintable) where

import ColorFillBasePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, displayInfoSingleton)
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
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified ColorFillBasePaintable

data ColorFillPaintable = ColorFillPaintable
    { header_ :: JavaHeader
    , base :: ColorFillBasePaintable.ColorFillBasePaintable
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    }

instance JavaNull ColorFillPaintable where
    javaNull = javaNullRecord "ColorFillPaintable"

instance JavaEquals ColorFillPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorFillPaintable where
    (==) = jrecordEquals

instance JavaObjectClass ColorFillPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorFillPaintable
newRecord_ = do
    base <- ColorFillBasePaintable.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    let this = ColorFillPaintable header_ base displayInfoSingleton
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ColorFillPaintable -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    pure ()

new_1 :: BasicColor.BasicColor -> IO ColorFillPaintable
new_1 basicColor = do
    this <- newRecord_
    init_1 this basicColor
    pure this

init_1 :: ColorFillPaintable -> BasicColor.BasicColor -> IO ()
init_1 this basicColor = do
        ColorFillBasePaintable.init_1 this.base (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ColorFillPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ColorFillPaintable)) a1

paint_impl :: ColorFillPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.setColor graphics (jget (this).base.colorP))
        Control.Monad.void (Graphics.fillRect graphics 0 0 (jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))) (jio (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfoSingleton)))))
        pure ()


