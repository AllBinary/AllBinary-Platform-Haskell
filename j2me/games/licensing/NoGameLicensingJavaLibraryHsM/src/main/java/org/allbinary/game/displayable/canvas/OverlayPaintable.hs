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
module OverlayPaintable (module OverlayPaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, paint, paint_super, paint_impl, logUtil)
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
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OverlayPaintable = OverlayPaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull OverlayPaintable where
    javaNull = javaNullRecord "OverlayPaintable"

instance JavaEquals OverlayPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OverlayPaintable where
    (==) = jrecordEquals

instance JavaObjectClass OverlayPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OverlayPaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = OverlayPaintable header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: OverlayPaintable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO OverlayPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OverlayPaintable -> IO ()
init_ this = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OverlayPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: OverlayPaintable))

update_impl :: OverlayPaintable -> IO (())
update_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).uPDATE) e)
            ) $ do
            pure ()
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: OverlayPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: OverlayPaintable)) a1

paint_impl :: OverlayPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


