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
-- package org.allbinary.android
module AndroidInfoFactory where

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
import qualified Build -- android.os.Build

data AndroidInfoFactory = AndroidInfoFactory
    { header_ :: JavaHeader
    , version :: IORef (Int)
    }

instance JavaNull AndroidInfoFactory where
    javaNull = javaNullRecord "AndroidInfoFactory"

instance JavaEquals AndroidInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    version <- newIORef 0
    let this = AndroidInfoFactory header_ version
    jregisterLevel header_ this
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    pure this

initFields_ :: AndroidInfoFactory -> IO ()
initFields_ this = do
    jset this.version ((Prelude.read (jget (Build.vERSION).sDK)))
    pure ()

new_ :: IO AndroidInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidInfoFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AndroidInfoFactory)
getInstance = do
        pure (AndroidInfoFactory.instance_)


getVersion :: (JavaObjectClass this_) => this_ -> IO (Int)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: AndroidInfoFactory))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: AndroidInfoFactory))

getVersion_impl :: AndroidInfoFactory -> IO (Int)
getVersion_impl this = do
        pure ((jget (this).version))


