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
module CommandUriAction where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified Intent -- android.content.Intent
import qualified Uri -- android.net.Uri
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data CommandUriAction = CommandUriAction
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull CommandUriAction where
    javaNull = javaNullRecord "CommandUriAction"

instance JavaEquals CommandUriAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandUriAction where
    (==) = jrecordEquals

instance JavaObjectClass CommandUriAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommandUriAction
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    hashtable <- newIORef javaNull
    let this = CommandUriAction header_ logUtil hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getIntent" (\() -> getIntent_impl this)
    pure this

initFields_ :: CommandUriAction -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()

new_ :: IO CommandUriAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommandUriAction -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommandUriAction)
getInstance = do
        pure (CommandUriAction.instance_)


add :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CommandUriAction))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Command.Command -> String -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: CommandUriAction)) a1 a2

add_impl :: CommandUriAction -> Command.Command -> String -> IO (())
add_impl this command url = do
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) command url)
        pure ()


process :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: CommandUriAction))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: CommandUriAction)) a1

process_impl :: CommandUriAction -> Command.Command -> IO (())
process_impl this command = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).pROCESS) e)
            ) $ do
            intent <- (CommandUriAction.getIntent this command)
            Control.Monad.void (Context.startActivity ((jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))) intent)
        pure ()


getIntent :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Intent.Intent)
getIntent object_ a1 = jmethod object_ "getIntent" (\() -> (getIntent_impl (javaCast object_ :: CommandUriAction))) () a1

getIntent_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Intent.Intent)
getIntent_super object_ a1 = (getIntent_impl (javaCast object_ :: CommandUriAction)) a1

getIntent_impl :: CommandUriAction -> Command.Command -> IO (Intent.Intent)
getIntent_impl this command = do
        let url = (javaCast (jio (ABHashtable.get ((jget (this).hashtable)) command)) :: String)
        uri <- (Uri.parse url)
        intent <- (Intent.new_2 (Intent.aCTION_VIEW) uri)
        pure (intent)


