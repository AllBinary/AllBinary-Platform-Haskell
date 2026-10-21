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
-- package org.allbinary.logic.util.cache
module BaseCircularPool where

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
import qualified AllBinaryObjectFactoryInterface -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BaseCircularPool = BaseCircularPool
    { header_ :: JavaHeader
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , oBJECT_ARRAY :: IORef (JavaArray (Any.Any))
    }

instance JavaNull BaseCircularPool where
    javaNull = javaNullRecord "BaseCircularPool"

instance JavaEquals BaseCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass BaseCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseCircularPool
newRecord_ = do
    header_ <- newJavaHeader
    circularIndexUtil <- newIORef javaNull
    oBJECT_ARRAY <- newIORef javaNull
    let this = BaseCircularPool header_ circularIndexUtil oBJECT_ARRAY
    jregisterLevel header_ this
    jregisterMethod header_ "getNextInstance" (\() -> getNextInstance_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BaseCircularPool -> IO ()
initFields_ this = do
    jset this.circularIndexUtil (CircularIndexUtil.nULL_CIRCULAR_INDEX_UTIL)
    jset this.oBJECT_ARRAY ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT_ARRAY))
    pure ()

new_ :: IO BaseCircularPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseCircularPool -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getNextInstance :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getNextInstance object_ = jmethod object_ "getNextInstance" (\() -> (getNextInstance_impl (javaCast object_ :: BaseCircularPool))) ()

getNextInstance_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getNextInstance_super object_ = (getNextInstance_impl (javaCast object_ :: BaseCircularPool))

getNextInstance_impl :: BaseCircularPool -> IO (Any.Any)
getNextInstance_impl this = do
        let anyType = (jindex ((jget (this).oBJECT_ARRAY)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ((jtoObject anyType))


init :: (JavaObjectClass this_) => this_ -> AllBinaryObjectFactoryInterface.AllBinaryObjectFactoryInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseCircularPool))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryObjectFactoryInterface.AllBinaryObjectFactoryInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BaseCircularPool)) a1

init_impl :: BaseCircularPool -> AllBinaryObjectFactoryInterface.AllBinaryObjectFactoryInterface -> IO (())
init_impl this allBinaryObjectFactoryInterface = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) 0)
        size <- (CircularIndexUtil.getSize ((jget (this).circularIndexUtil)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap jtoObject (AllBinaryObjectFactoryInterface.getInstance allBinaryObjectFactoryInterface))
            jsetIndex ((jget (this).oBJECT_ARRAY)) (index) (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BaseCircularPool))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: BaseCircularPool)) a1

getInstance_impl :: BaseCircularPool -> Int -> IO (Any.Any)
getInstance_impl this index = do
        pure ((jtoObject (jindex ((jget (this).oBJECT_ARRAY)) (index))))


