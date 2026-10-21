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
-- package org.allbinary.media.audio
module NoPlayer (module NoPlayer, module BasicPlayer) where

import BasicPlayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, close, close_super, close_impl, getContentType, getContentType_super, getContentType_impl, getControl, getControl_super, getControl_impl, getControls, getControls_super, getControls_impl, nO_PLAYER)
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
import qualified NullControl -- same package or java.lang
import qualified Control -- javax.microedition.media.Control
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicPlayer

data NoPlayer = NoPlayer
    { header_ :: JavaHeader
    , base :: BasicPlayer.BasicPlayer
    }

instance JavaNull NoPlayer where
    javaNull = javaNullRecord "NoPlayer"

instance JavaEquals NoPlayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoPlayer where
    (==) = jrecordEquals

instance JavaObjectClass NoPlayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nO_PLAYER #-}
nO_PLAYER = unsafePerformIO ((new_))

newRecord_ :: IO NoPlayer
newRecord_ = do
    base <- BasicPlayer.newRecord_
    let header_ = base.header_
    let this = NoPlayer header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getControl" (\() -> getControl_impl this)
    jregisterMethod header_ "getControls" (\() -> getControls_impl this)
    pure this

initFields_ :: NoPlayer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoPlayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoPlayer -> IO ()
init_ this = do
        BasicPlayer.init_ this.base
        initFields_ this
        pure ()
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NoPlayer))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NoPlayer))

close_impl :: NoPlayer -> IO (())
close_impl this = do
        pure ()


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: NoPlayer))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: NoPlayer))

getContentType_impl :: NoPlayer -> IO (String)
getContentType_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).nULL_STRING))


getControl :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl object_ a1 = jmethod object_ "getControl" (\() -> (getControl_impl (javaCast object_ :: NoPlayer))) () a1

getControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl_super object_ a1 = (getControl_impl (javaCast object_ :: NoPlayer)) a1

getControl_impl :: NoPlayer -> String -> IO (Control.Control)
getControl_impl this controlType = do
        (fmap (\value_ -> javaCast value_ :: Control.Control) (NullControl.new_))


getControls :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls object_ = jmethod object_ "getControls" (\() -> (getControls_impl (javaCast object_ :: NoPlayer))) ()

getControls_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls_super object_ = (getControls_impl (javaCast object_ :: NoPlayer))

getControls_impl :: NoPlayer -> IO (JavaArray (Control.Control))
getControls_impl this = do
        pure ((jnewArray (0) javaNull))


