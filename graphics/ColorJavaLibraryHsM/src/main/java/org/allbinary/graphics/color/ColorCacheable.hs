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
-- package org.allbinary.graphics.color
module ColorCacheable where

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
import qualified Color -- same package or java.lang
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
-- import java.awt.*

-- implements CacheableInterface
data ColorCacheable = ColorCacheable
    { header_ :: JavaHeader
    , key :: IORef (Any.Any)
    , color :: IORef (Color.Color)
    }

instance JavaNull ColorCacheable where
    javaNull = javaNullRecord "ColorCacheable"

instance JavaEquals ColorCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorCacheable where
    (==) = jrecordEquals

instance JavaObjectClass ColorCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorCacheable
newRecord_ = do
    header_ <- newJavaHeader
    key <- newIORef javaNull
    color <- newIORef javaNull
    let this = ColorCacheable header_ key color
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    pure this

initFields_ :: ColorCacheable -> IO ()
initFields_ this = do
    jset this.key (javaNull)
    jset this.color (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO ColorCacheable
new_1 keyObject_ = do
    this <- newRecord_
    init_1 this keyObject_
    pure this

init_1 :: (JavaObjectClass o1) => ColorCacheable -> o1 -> IO ()
init_1 this keyObject_ = do
        let key = jtoObject keyObject_
        initFields_ this
        jset (this).key (key)
        assignedValue <- (Color.new_1 (jio (intValue (((javaCast key :: Int))))))
        jset (this).color (assignedValue)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ColorCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ColorCacheable))

getKey_impl :: ColorCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).key)))


getColor :: (JavaObjectClass this_) => this_ -> IO (Color.Color)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: ColorCacheable))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Color.Color)
getColor_super object_ = (getColor_impl (javaCast object_ :: ColorCacheable))

getColor_impl :: ColorCacheable -> IO (Color.Color)
getColor_impl this = do
        pure ((jget (this).color))


setColor :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ColorCacheable))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: ColorCacheable)) a1

setColor_impl :: ColorCacheable -> Color.Color -> IO (())
setColor_impl this color = do
        jset (this).color (color)
        pure ()


