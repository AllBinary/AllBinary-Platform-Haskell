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
module NotificationBuilderAPI23 (module NotificationBuilderAPI23, module NotificationBuilder) where

import NotificationBuilder hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, build, build_super, build_impl)
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
import qualified Notification -- android.app.Notification
import qualified Builder -- android.app.Notification.Builder
import qualified PendingIntent -- android.app.PendingIntent
import qualified Context -- android.content.Context
import qualified Parcelable -- android.os.Parcelable
import qualified NotificationBuilder

data NotificationBuilderAPI23 = NotificationBuilderAPI23
    { header_ :: JavaHeader
    , base :: NotificationBuilder.NotificationBuilder
    }

instance JavaNull NotificationBuilderAPI23 where
    javaNull = javaNullRecord "NotificationBuilderAPI23"

instance JavaEquals NotificationBuilderAPI23 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NotificationBuilderAPI23 where
    (==) = jrecordEquals

instance JavaObjectClass NotificationBuilderAPI23 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NotificationBuilderAPI23
newRecord_ = do
    base <- NotificationBuilder.newRecord_
    let header_ = base.header_
    let this = NotificationBuilderAPI23 header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "build" (\() -> build_impl this)
    pure this

initFields_ :: NotificationBuilderAPI23 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NotificationBuilderAPI23
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NotificationBuilderAPI23 -> IO ()
init_ this = do
    NotificationBuilder.init_ this.base
    initFields_ this


build :: (JavaObjectClass this_) => this_ -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build object_ a1 a2 a3 a4 a5 = jmethod object_ "build" (\() -> (build_impl (javaCast object_ :: NotificationBuilderAPI23))) () a1 a2 a3 a4 a5

build_super :: (JavaObjectClass this_) => this_ -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build_super object_ a1 a2 a3 a4 a5 = (build_impl (javaCast object_ :: NotificationBuilderAPI23)) a1 a2 a3 a4 a5

build_impl :: NotificationBuilderAPI23 -> Context.Context -> Command.Command -> String -> Int -> PendingIntent.PendingIntent -> IO (Parcelable.Parcelable)
build_impl this context command message integer pendingIntent = do
        notification <- (Builder.build ((jio (Builder.setContentIntent ((jio (Builder.setContentText ((jio (Builder.setContentTitle ((jio (Builder.setWhen ((jio (Builder.setTicker ((jio (Builder.setSmallIcon ((jio (Builder.new_1 context))) (integer)))) message))) (jio jcurrentTimeMillis)))) (jio (Command.getLabel command))))) message))) pendingIntent))))
        pure ((javaCast notification :: Parcelable.Parcelable))


