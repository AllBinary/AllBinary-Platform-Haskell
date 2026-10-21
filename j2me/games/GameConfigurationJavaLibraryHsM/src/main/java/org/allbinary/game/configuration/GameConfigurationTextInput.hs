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
-- package org.allbinary.game.configuration
module GameConfigurationTextInput where

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
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data GameConfigurationTextInput = GameConfigurationTextInput
    { header_ :: JavaHeader
    , label :: IORef (String)
    , text :: IORef (String)
    }

instance JavaNull GameConfigurationTextInput where
    javaNull = javaNullRecord "GameConfigurationTextInput"

instance JavaEquals GameConfigurationTextInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfigurationTextInput where
    (==) = jrecordEquals

instance JavaObjectClass GameConfigurationTextInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashtable #-}
hashtable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))) >>= newIORef)

{-# NOINLINE sIMULATOR_IP #-}
sIMULATOR_IP = unsafePerformIO ((new_2 "IP: " "192.168.1.3") >>= newIORef)

{-# NOINLINE sIMULATOR_PORT #-}
sIMULATOR_PORT = unsafePerformIO ((new_2 "Port: " "8010") >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameConfigurationTextInput
newRecord_ = do
    header_ <- newJavaHeader
    label <- newIORef ""
    text <- newIORef ""
    let this = GameConfigurationTextInput header_ label text
    jregisterLevel header_ this
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    jregisterMethod header_ "setLabel" (\() -> setLabel_impl this)
    jregisterMethod header_ "getLabel" (\() -> getLabel_impl this)
    pure this

initFields_ :: GameConfigurationTextInput -> IO ()
initFields_ this = do
    jset this.label ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.text ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_2 :: String -> String -> IO GameConfigurationTextInput
new_2 label text = do
    this <- newRecord_
    init_2 this label text
    pure this

init_2 :: GameConfigurationTextInput -> String -> String -> IO ()
init_2 this label text = do
        initFields_ this
        Control.Monad.void (GameConfigurationTextInput.setText this text)
        Control.Monad.void (GameConfigurationTextInput.setLabel this label)
        Control.Monad.void (put ((jget GameConfigurationTextInput.hashtable)) (jio (GameConfigurationTextInput.getLabel this)) this)
        pure ()


update :: TextField.TextField -> IO (())
update textField = do
        let anyType = (javaCast (jio (TextField.getLabel textField)) :: Any.Any)
        let gameConfigurationTextInput = (javaCast (jio (get ((jget GameConfigurationTextInput.hashtable)) anyType)) :: GameConfigurationTextInput)
        Control.Monad.void (GameConfigurationTextInput.setText gameConfigurationTextInput (jio (TextField.getString textField)))
        pure ()


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: GameConfigurationTextInput))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: GameConfigurationTextInput)) a1

setText_impl :: GameConfigurationTextInput -> String -> IO (())
setText_impl this text = do
        jset (this).text (text)
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: GameConfigurationTextInput))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: GameConfigurationTextInput))

getText_impl :: GameConfigurationTextInput -> IO (String)
getText_impl this = do
        pure ((jget (this).text))


setLabel :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel object_ a1 = jmethod object_ "setLabel" (\() -> (setLabel_impl (javaCast object_ :: GameConfigurationTextInput))) () a1

setLabel_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel_super object_ a1 = (setLabel_impl (javaCast object_ :: GameConfigurationTextInput)) a1

setLabel_impl :: GameConfigurationTextInput -> String -> IO (())
setLabel_impl this label = do
        jset (this).label (label)
        pure ()


getLabel :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel object_ = jmethod object_ "getLabel" (\() -> (getLabel_impl (javaCast object_ :: GameConfigurationTextInput))) ()

getLabel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel_super object_ = (getLabel_impl (javaCast object_ :: GameConfigurationTextInput))

getLabel_impl :: GameConfigurationTextInput -> IO (String)
getLabel_impl this = do
        pure ((jget (this).label))


getHashtable :: IO (ABHashtable.ABHashtable)
getHashtable = do
        pure ((jget GameConfigurationTextInput.hashtable))


