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
module NotificationBuilder where

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
import qualified NullParcelable -- org.allbinary.android.NullParcelable
import qualified Command -- javax.microedition.lcdui.Command
import qualified PendingIntent -- android.app.PendingIntent
import qualified Context -- android.content.Context
import qualified Parcelable -- android.os.Parcelable

data NotificationBuilder = NotificationBuilder
    { header_ :: JavaHeader
    }

instance JavaNull NotificationBuilder where
    javaNull = javaNullRecord "NotificationBuilder"

instance JavaEquals NotificationBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NotificationBuilder where
    (==) = jrecordEquals

instance JavaObjectClass NotificationBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_NOTIFICATION_BUILDER #-}
nULL_NOTIFICATION_BUILDER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NotificationBuilder
newRecord_ = do
    header_ <- newJavaHeader
    let this = NotificationBuilder header_
    jregisterLevel header_ this
    jregisterMethod header_ "build" (\() -> build_impl this)
    pure this

initFields_ :: NotificationBuilder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NotificationBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NotificationBuilder -> IO ()
init_ this = do
    initFields_ this


build :: (JavaObjectClass this_) => this_ -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build object_ a1 a2 a3 a4 a5 = jmethod object_ "build" (\() -> (build_impl (javaCast object_ :: NotificationBuilder))) () a1 a2 a3 a4 a5

build_super :: (JavaObjectClass this_) => this_ -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build_super object_ a1 a2 a3 a4 a5 = (build_impl (javaCast object_ :: NotificationBuilder)) a1 a2 a3 a4 a5

build_impl :: NotificationBuilder -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build_impl this context command message integer pendingIntent = do
        pure ((javaCast NullParcelable.nULL_PARCELABLE :: Parcelable.Parcelable))


