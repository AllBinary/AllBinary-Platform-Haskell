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
-- package org.allbinary.globals
module Globals where

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
import qualified AppUrlGlobals -- same package or java.lang
import qualified ClassLoader -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified WebappClassLoaderInfo -- org.allbinary.logic.system.loader.WebappClassLoaderInfo
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Globals = Globals
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull Globals where
    javaNull = javaNullRecord "Globals"

instance JavaEquals Globals where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Globals where
    (==) = jrecordEquals

instance JavaObjectClass Globals where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Globals
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = Globals header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: Globals -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (Globals)
getInstance = do
        pure (Globals.instance_)

new_ :: IO Globals
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Globals -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> ClassLoader.ClassLoader -> String -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Globals))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> ClassLoader.ClassLoader -> String -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: Globals)) a1 a2

init_impl :: Globals -> ClassLoader.ClassLoader -> String -> IO (())
init_impl this classLoader pathString = do
        commonStrings <- (CommonStrings.getInstance)
        appUrlGlobals <- (AppUrlGlobals.new_)
        Control.Monad.void (AppUrlGlobals.setWebappPath appUrlGlobals pathString)
        Control.Monad.void (init uRLGLOBALS appUrlGlobals)
        Control.Monad.void (WebappClassLoaderInfo.setLoader classLoader)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Setting Up AllBinary System Configuration Args: ")
        Control.Monad.void (StringMaker.append stringBuffer pathString)
        Control.Monad.void (StringMaker.append stringBuffer " ClassLoader: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass classLoader))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).iNIT))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil pathString)) $ do
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "No Path Provided. Using Process Path: ")
            Control.Monad.void (StringMaker.append stringBuffer pathString)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).eQUALS))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (getWebappPath uRLGLOBALS)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).iNIT))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer "Webapp Path Set To: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (getWebappPath uRLGLOBALS)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).iNIT))
        pure ()


