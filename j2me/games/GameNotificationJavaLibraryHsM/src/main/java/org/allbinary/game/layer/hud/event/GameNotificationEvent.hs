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
-- package org.allbinary.game.layer.hud.event
module GameNotificationEvent (module GameNotificationEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getString, getString_super, getString_impl, getSeconds, getSeconds_super, getSeconds_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, getPermanent, getPermanent_super, getPermanent_impl, setString, setString_super, setString_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, string, seconds, basicColor, removeable)
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
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data GameNotificationEvent = GameNotificationEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , string :: IORef (String)
    , seconds :: IORef (Int)
    , basicColor :: IORef (BasicColor.BasicColor)
    , removeable :: IORef (Bool)
    }

instance JavaNull GameNotificationEvent where
    javaNull = javaNullRecord "GameNotificationEvent"

instance JavaEquals GameNotificationEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameNotificationEvent where
    (==) = jrecordEquals

instance JavaObjectClass GameNotificationEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameNotificationEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    string <- newIORef ""
    seconds <- newIORef javaNull
    basicColor <- newIORef javaNull
    removeable <- newIORef javaNull
    let this = GameNotificationEvent header_ base string seconds basicColor removeable
    jregisterLevel header_ this
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "getSeconds" (\() -> getSeconds_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "getPermanent" (\() -> getPermanent_impl this)
    jregisterMethod header_ "setString" (\() -> setString_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    pure this

initFields_ :: GameNotificationEvent -> IO ()
initFields_ this = do
    jset this.string ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.seconds (javaNull)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
    jset this.removeable (javaNull)
    pure ()

new_5 :: (JavaObjectClass o1) => o1 -> String -> Int -> BasicColor.BasicColor -> Bool -> IO GameNotificationEvent
new_5 anyTypeObject_ string seconds basicColor permanent = do
    this <- newRecord_
    init_5 this anyTypeObject_ string seconds basicColor permanent
    pure this

init_5 :: (JavaObjectClass o1) => GameNotificationEvent -> o1 -> String -> Int -> BasicColor.BasicColor -> Bool -> IO ()
init_5 this anyTypeObject_ string seconds basicColor permanent = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GameNotificationEvent.setString this string)
        jset (this).seconds (seconds)
        Control.Monad.void (GameNotificationEvent.setBasicColorP this basicColor)
        jset (this).removeable (permanent)
        pure ()


getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: GameNotificationEvent))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: GameNotificationEvent))

getString_impl :: GameNotificationEvent -> IO (String)
getString_impl this = do
        pure ((jget (this).string))


getSeconds :: (JavaObjectClass this_) => this_ -> IO (Int)
getSeconds object_ = jmethod object_ "getSeconds" (\() -> (getSeconds_impl (javaCast object_ :: GameNotificationEvent))) ()

getSeconds_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSeconds_super object_ = (getSeconds_impl (javaCast object_ :: GameNotificationEvent))

getSeconds_impl :: GameNotificationEvent -> IO (Int)
getSeconds_impl this = do
        pure ((jget (this).seconds))


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: GameNotificationEvent))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: GameNotificationEvent))

getBasicColorP_impl :: GameNotificationEvent -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


getPermanent :: (JavaObjectClass this_) => this_ -> IO (Bool)
getPermanent object_ = jmethod object_ "getPermanent" (\() -> (getPermanent_impl (javaCast object_ :: GameNotificationEvent))) ()

getPermanent_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
getPermanent_super object_ = (getPermanent_impl (javaCast object_ :: GameNotificationEvent))

getPermanent_impl :: GameNotificationEvent -> IO (Bool)
getPermanent_impl this = do
        pure ((jget (this).removeable))


setString :: (JavaObjectClass this_) => this_ -> String -> IO (())
setString object_ a1 = jmethod object_ "setString" (\() -> (setString_impl (javaCast object_ :: GameNotificationEvent))) () a1

setString_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setString_super object_ a1 = (setString_impl (javaCast object_ :: GameNotificationEvent)) a1

setString_impl :: GameNotificationEvent -> String -> IO (())
setString_impl this string = do
        jset (this).string (string)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: GameNotificationEvent))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: GameNotificationEvent)) a1

setBasicColorP_impl :: GameNotificationEvent -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


