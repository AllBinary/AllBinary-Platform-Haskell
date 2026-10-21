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
-- package org.allbinary
module AppletUtil where

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

data AppletUtil = AppletUtil
    { header_ :: JavaHeader
    }

instance JavaNull AppletUtil where
    javaNull = javaNullRecord "AppletUtil"

instance JavaEquals AppletUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AppletUtil where
    (==) = jrecordEquals

instance JavaObjectClass AppletUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE applet #-}
applet = unsafePerformIO (newIORef (False))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AppletUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = AppletUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: AppletUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AppletUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AppletUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setApplet :: IO (())
setApplet = do
        jset AppletUtil.applet (True)
        pure ()


isAppletLoader :: (JavaObjectClass o1) => o1 -> IO (Bool)
isAppletLoader anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ((jget AppletUtil.applet))


