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
import qualified NotificationBuilder -- same package or java.lang
import qualified NotificationBuilderAPI23 -- same package or java.lang
import qualified CommandUriAction -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified Notification -- android.app.Notification
import qualified NotificationManager -- android.app.NotificationManager
import qualified PendingIntent -- android.app.PendingIntent
import qualified Context -- android.content.Context
import qualified Intent -- android.content.Intent
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NotificationUtil = NotificationUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , notificationManager :: IORef (NotificationManager.NotificationManager)
    , notificationBuilder :: IORef (NotificationBuilder.NotificationBuilder)
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
    logUtil <- newIORef javaNull
    notificationManager <- newIORef javaNull
    notificationBuilder <- newIORef javaNull
    let this = NotificationUtil header_ logUtil notificationManager notificationBuilder
    jregisterLevel header_ this
    jregisterMethod header_ "notify" (\() -> notify_impl this)
    pure this

initFields_ :: NotificationUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.notificationManager ((javaCast (jio (Context.getSystemService ((jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))) (Context.nOTIFICATION_SERVICE))) :: NotificationManager.NotificationManager))
    jset this.notificationBuilder (javaNull)
    pure ()


getInstance :: IO (NotificationUtil)
getInstance = do
        pure (NotificationUtil.sINGLETON)

new_ :: IO NotificationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NotificationUtil -> IO ()
init_ this = do
        initFields_ this
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION > 22) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: NotificationBuilder.NotificationBuilder) (NotificationBuilderAPI23.new_))
            jset (this).notificationBuilder (assignedValue)
        else do
            jset (this).notificationBuilder (NotificationBuilder.nULL_NOTIFICATION_BUILDER)
        pure ()


notify :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> String -> IO (())
notify object_ a1 a2 a3 = jmethod object_ "notify" (\() -> (notify_impl (javaCast object_ :: NotificationUtil))) () a1 a2 a3

notify_super :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> String -> IO (())
notify_super object_ a1 a2 a3 = (notify_impl (javaCast object_ :: NotificationUtil)) a1 a2 a3

notify_impl :: NotificationUtil -> Command.Command -> String -> String -> IO (())
notify_impl this command resource message = do
    javaCatchReturn $ do
        context <- (ResourceUtil.getContext ((jio (ResourceUtil.getInstance))))
        intent <- (CommandUriAction.getIntent ((jio (CommandUriAction.getInstance))) command)
        integer <- (ResourceUtil.getResourceId ((jio (ResourceUtil.getInstance))) resource)
        let fLAG_IMMUTABLE = (1 `Data.Bits.shiftL` 26)
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        pendingIntent <- (PendingIntent.getActivity context 0 intent (if (sDK_VERSION > 22) then fLAG_IMMUTABLE else 0))
        when ((jget (this).notificationBuilder) == javaNull) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).nOT_IMPLEMENTED))
            javaReturn (())
        Control.Monad.void (NotificationBuilder.build ((jget (this).notificationBuilder)) context command message integer pendingIntent)
    pure ()


