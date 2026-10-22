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
-- package org.allbinary.servlet
module BlisketServletUtil where

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
import qualified Class -- same package or java.lang
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified AppUrlGlobals -- org.allbinary.globals.AppUrlGlobals
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified WebappClassLoaderInfo -- org.allbinary.logic.system.loader.WebappClassLoaderInfo

data BlisketServletUtil = BlisketServletUtil
    { header_ :: JavaHeader
    }

instance JavaNull BlisketServletUtil where
    javaNull = javaNullRecord "BlisketServletUtil"

instance JavaEquals BlisketServletUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BlisketServletUtil where
    (==) = jrecordEquals

instance JavaObjectClass BlisketServletUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BlisketServletUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = BlisketServletUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: BlisketServletUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BlisketServletUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BlisketServletUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BlisketServletUtil)
getInstance = do
        pure (BlisketServletUtil.instance_)


init :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BlisketServletUtil))) () a1

init_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BlisketServletUtil)) a1

init_impl :: BlisketServletUtil -> HttpServletRequest.HttpServletRequest -> IO (())
init_impl this request = do
        urlGlobals <- (AppUrlGlobals.new_)
        Control.Monad.void (AppUrlGlobals.setWebappPath urlGlobals (jio (HttpServletRequest.getRealPath ((jio (HttpServletRequest.getServletContext request))) (jget ((jio (AbPathData.getInstance))).sEPARATOR))))
        Control.Monad.void (URLGLOBALS.init (javaCast urlGlobals))
        Control.Monad.void (WebappClassLoaderInfo.setLoader (jio (Class.getClassLoader ((jio (BlisketServletUtil.getClass this))))))
        pure ()


