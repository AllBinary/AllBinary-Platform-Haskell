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
-- package org.allbinary.graphics.j2me
module StatusFactory where

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
import qualified MyFrame -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data StatusFactory = StatusFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sETSTATUS :: IORef (String)
    , sTATUS_LABEL :: IORef (String)
    }

instance JavaNull StatusFactory where
    javaNull = javaNullRecord "StatusFactory"

instance JavaEquals StatusFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StatusFactory where
    (==) = jrecordEquals

instance JavaObjectClass StatusFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StatusFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sETSTATUS <- newIORef ""
    sTATUS_LABEL <- newIORef ""
    let this = StatusFactory header_ logUtil sETSTATUS sTATUS_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "setStatusNoLog" (\() -> setStatusNoLog_impl this)
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    pure this

initFields_ :: StatusFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sETSTATUS ("setStatus")
    jset this.sTATUS_LABEL ("Status: ")
    pure ()

new_ :: IO StatusFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StatusFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (StatusFactory)
getInstance = do
        pure (StatusFactory.instance_)


setStatusNoLog :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatusNoLog object_ a1 = jmethod object_ "setStatusNoLog" (\() -> (setStatusNoLog_impl (javaCast object_ :: StatusFactory))) () a1

setStatusNoLog_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatusNoLog_super object_ a1 = (setStatusNoLog_impl (javaCast object_ :: StatusFactory)) a1

setStatusNoLog_impl :: StatusFactory -> String -> IO (())
setStatusNoLog_impl this status = do
        Control.Monad.void (JLabel.setText ((jget MyFrame.statusJLabel)) status)
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus object_ a1 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: StatusFactory))) () a1

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus_super object_ a1 = (setStatus_impl (javaCast object_ :: StatusFactory)) a1

setStatus_impl :: StatusFactory -> String -> IO (())
setStatus_impl this status = do
        Control.Monad.void (StatusFactory.setStatusNoLog this status)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).sTATUS_LABEL) ++ status) this (jget (this).sETSTATUS))
        pure ()


