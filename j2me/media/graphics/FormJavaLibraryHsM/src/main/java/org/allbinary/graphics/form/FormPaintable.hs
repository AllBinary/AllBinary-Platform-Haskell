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
-- package org.allbinary.graphics.form
module FormPaintable (module FormPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, getForm, getForm_super, getForm_impl, form)
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
import qualified PaintableForm -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

data FormPaintable = FormPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , form :: IORef (PaintableForm.PaintableForm)
    }

instance JavaNull FormPaintable where
    javaNull = javaNullRecord "FormPaintable"

instance JavaEquals FormPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FormPaintable where
    (==) = jrecordEquals

instance JavaObjectClass FormPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FormPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    form <- newIORef javaNull
    let this = FormPaintable header_ base form
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getForm" (\() -> getForm_impl this)
    pure this

initFields_ :: FormPaintable -> IO ()
initFields_ this = do
    jset this.form (javaNull)
    pure ()

new_1 :: PaintableForm.PaintableForm -> IO FormPaintable
new_1 form = do
    this <- newRecord_
    init_1 this form
    pure this

init_1 :: FormPaintable -> PaintableForm.PaintableForm -> IO ()
init_1 this form = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).form (form)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: FormPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: FormPaintable)) a1

paint_impl :: FormPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (PaintableForm.paint ((jget (this).form)) graphics)
        pure ()


getForm :: (JavaObjectClass this_) => this_ -> IO (PaintableForm.PaintableForm)
getForm object_ = jmethod object_ "getForm" (\() -> (getForm_impl (javaCast object_ :: FormPaintable))) ()

getForm_super :: (JavaObjectClass this_) => this_ -> IO (PaintableForm.PaintableForm)
getForm_super object_ = (getForm_impl (javaCast object_ :: FormPaintable))

getForm_impl :: FormPaintable -> IO (PaintableForm.PaintableForm)
getForm_impl this = do
        pure ((jget (this).form))


