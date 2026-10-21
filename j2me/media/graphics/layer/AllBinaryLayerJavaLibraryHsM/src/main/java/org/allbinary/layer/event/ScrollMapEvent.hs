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
-- package org.allbinary.layer.event
module ScrollMapEvent (module ScrollMapEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setDx, setDx_super, setDx_impl, getDx, getDx_super, getDx_impl, setDy, setDy_super, setDy_impl, getDy, getDy_super, getDy_impl, setDxDy, setDxDy_super, setDxDy_impl, dx, dy)
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
import qualified Any -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data ScrollMapEvent = ScrollMapEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull ScrollMapEvent where
    javaNull = javaNullRecord "ScrollMapEvent"

instance JavaEquals ScrollMapEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollMapEvent where
    (==) = jrecordEquals

instance JavaObjectClass ScrollMapEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollMapEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    dx <- newIORef 0
    dy <- newIORef 0
    let this = ScrollMapEvent header_ base dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "setDx" (\() -> setDx_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "setDy" (\() -> setDy_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    jregisterMethod header_ "setDxDy" (\() -> setDxDy_impl this)
    pure this

initFields_ :: ScrollMapEvent -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO ScrollMapEvent
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => ScrollMapEvent -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setDx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx object_ a1 = jmethod object_ "setDx" (\() -> (setDx_impl (javaCast object_ :: ScrollMapEvent))) () a1

setDx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx_super object_ a1 = (setDx_impl (javaCast object_ :: ScrollMapEvent)) a1

setDx_impl :: ScrollMapEvent -> Int -> IO (())
setDx_impl this dx = do
        jset (this).dx (dx)
        pure ()


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ScrollMapEvent))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: ScrollMapEvent))

getDx_impl :: ScrollMapEvent -> IO (Int)
getDx_impl this = do
        pure ((jget (this).dx))


setDy :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy object_ a1 = jmethod object_ "setDy" (\() -> (setDy_impl (javaCast object_ :: ScrollMapEvent))) () a1

setDy_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy_super object_ a1 = (setDy_impl (javaCast object_ :: ScrollMapEvent)) a1

setDy_impl :: ScrollMapEvent -> Int -> IO (())
setDy_impl this dy = do
        jset (this).dy (dy)
        pure ()


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: ScrollMapEvent))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: ScrollMapEvent))

getDy_impl :: ScrollMapEvent -> IO (Int)
getDy_impl this = do
        pure ((jget (this).dy))


setDxDy :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setDxDy object_ a1 a2 = jmethod object_ "setDxDy" (\() -> (setDxDy_impl (javaCast object_ :: ScrollMapEvent))) () a1 a2

setDxDy_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setDxDy_super object_ a1 a2 = (setDxDy_impl (javaCast object_ :: ScrollMapEvent)) a1 a2

setDxDy_impl :: ScrollMapEvent -> Int -> Int -> IO (())
setDxDy_impl this dx dy = do
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


