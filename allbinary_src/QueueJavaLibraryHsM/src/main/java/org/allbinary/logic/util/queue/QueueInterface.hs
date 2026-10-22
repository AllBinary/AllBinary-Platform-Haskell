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
-- package org.allbinary.logic.util.queue
module QueueInterface where

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

-- Java interface: the classes that implement it have these functions
data QueueInterface = QueueInterface
    { header_ :: JavaHeader
    }

instance JavaNull QueueInterface where
    javaNull = javaNullRecord "QueueInterface"

instance JavaEquals QueueInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QueueInterface where
    (==) = jrecordEquals

instance JavaObjectClass QueueInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> QueueInterface
fromHeader_ header = QueueInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (QueueInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
offer :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
offer object_ a1 = jmethod object_ "offer" (\() -> (offer_impl (javaCast object_ :: QueueInterface))) () (jtoObject a1)

offer_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
offer_super object_ a1 = (offer_impl (javaCast object_ :: QueueInterface)) (jtoObject a1)

offer_impl :: QueueInterface -> JavaObject -> IO (Bool)
offer_impl this anyTypeObject_ = javaAbstractMethod "offer"


-- throws Exception
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: QueueInterface))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: QueueInterface)) (jtoObject a1)

remove_impl :: QueueInterface -> JavaObject -> IO (())
remove_impl this anyTypeObject_ = javaAbstractMethod "remove"


-- throws Exception
remove_0 :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
remove_0 object_ = jmethod object_ "remove_0" (\() -> (remove_0_impl (javaCast object_ :: QueueInterface))) ()

remove_0_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
remove_0_super object_ = (remove_0_impl (javaCast object_ :: QueueInterface))

remove_0_impl :: QueueInterface -> IO (Any.Any)
remove_0_impl this = javaAbstractMethod "remove"


