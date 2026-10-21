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
-- package org.allbinary.content
module NotificationUtil where

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
import qualified Command -- javax.microedition.lcdui.Command

data NotificationUtil = NotificationUtil
    { header_ :: JavaHeader
    }

instance JavaNull NotificationUtil where
    javaNull = javaNullRecord "NotificationUtil"

instance JavaEquals NotificationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NotificationUtil where
    (==) = jrecordEquals

instance JavaObjectClass NotificationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NotificationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = NotificationUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "notify" (\() -> notify_impl this)
    pure this

initFields_ :: NotificationUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NotificationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NotificationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NotificationUtil)
getInstance = do
        pure (NotificationUtil.sINGLETON)


notify :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> String -> IO (())
notify object_ a1 a2 a3 = jmethod object_ "notify" (\() -> (notify_impl (javaCast object_ :: NotificationUtil))) () a1 a2 a3

notify_super :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> String -> IO (())
notify_super object_ a1 a2 a3 = (notify_impl (javaCast object_ :: NotificationUtil)) a1 a2 a3

notify_impl :: NotificationUtil -> Command.Command -> String -> String -> IO (())
notify_impl this command resource message = do
        pure ()


