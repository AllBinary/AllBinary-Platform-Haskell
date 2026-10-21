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
-- package org.allbinary.util
module ImmutableBasicArrayList (module ImmutableBasicArrayList, module BasicArrayListS) where

import BasicArrayListS hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, add, add_super, add_impl, addAt, addAt_super, addAt_impl, toString, toString_super, toString_impl, name)
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
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified BasicArrayListS

data ImmutableBasicArrayList = ImmutableBasicArrayList
    { header_ :: JavaHeader
    , base :: BasicArrayListS.BasicArrayListS
    , name :: IORef (String)
    }

instance JavaNull ImmutableBasicArrayList where
    javaNull = javaNullRecord "ImmutableBasicArrayList"

instance JavaEquals ImmutableBasicArrayList where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImmutableBasicArrayList where
    (==) = jrecordEquals

instance JavaObjectClass ImmutableBasicArrayList where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImmutableBasicArrayList
newRecord_ = do
    base <- BasicArrayListS.newRecord_
    let header_ = base.header_
    name <- newIORef ""
    let this = ImmutableBasicArrayList header_ base name
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addAt" (\() -> addAt_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImmutableBasicArrayList -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_2 :: String -> Int -> IO ImmutableBasicArrayList
new_2 name size = do
    this <- newRecord_
    init_2 this name size
    pure this

init_2 :: ImmutableBasicArrayList -> String -> Int -> IO ()
init_2 this name size = do
        BasicArrayListS.init_1 this.base (size)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).name (name)
        pure ()


add :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ImmutableBasicArrayList))) () (jtoObject a1)

add_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
add_super object_ a1 = (add_impl (javaCast object_ :: ImmutableBasicArrayList)) (jtoObject a1)

add_impl :: ImmutableBasicArrayList -> JavaObject -> IO (Bool)
add_impl this eObject_ = do
        let e = jtoObject eObject_
        Control.Monad.void (ForcedLogUtil.log (jget (this).name) this)
        pure (True)


addAt :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (())
addAt object_ a1 a2 = jmethod object_ "addAt" (\() -> (addAt_impl (javaCast object_ :: ImmutableBasicArrayList))) () a1 (jtoObject a2)

addAt_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (())
addAt_super object_ a1 a2 = (addAt_impl (javaCast object_ :: ImmutableBasicArrayList)) a1 (jtoObject a2)

addAt_impl :: ImmutableBasicArrayList -> Int -> JavaObject -> IO (())
addAt_impl this index elementObject_ = do
        let element = jtoObject elementObject_
        Control.Monad.void (ForcedLogUtil.log (jget (this).name) this)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImmutableBasicArrayList))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImmutableBasicArrayList))

toString_impl :: ImmutableBasicArrayList -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


