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
-- package org.allbinary.business.user.modules.customer.subscriber
module SubscriberUserFactory where

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
import qualified SubscriberUser -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified UserFactoryInterface -- org.allbinary.business.user.UserFactoryInterface
import qualified UserInterface -- org.allbinary.business.user.UserInterface

-- implements UserFactoryInterface
data SubscriberUserFactory = SubscriberUserFactory
    { header_ :: JavaHeader
    }

instance JavaNull SubscriberUserFactory where
    javaNull = javaNullRecord "SubscriberUserFactory"

instance JavaEquals SubscriberUserFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SubscriberUserFactory where
    (==) = jrecordEquals

instance JavaObjectClass SubscriberUserFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SubscriberUserFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = SubscriberUserFactory header_
    jregisterLevel header_ this
    UserFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: SubscriberUserFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SubscriberUserFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SubscriberUserFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (UserInterface.UserInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SubscriberUserFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (UserInterface.UserInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: SubscriberUserFactory))

getInstance_impl :: SubscriberUserFactory -> IO (UserInterface.UserInterface)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: UserInterface.UserInterface) (SubscriberUser.new_))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (UserInterface.UserInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SubscriberUserFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (UserInterface.UserInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: SubscriberUserFactory)) a1

getInstance_impl :: SubscriberUserFactory -> HashMap.HashMap -> IO (UserInterface.UserInterface)
getInstance_impl this hashMap = do
        (fmap (\value_ -> javaCast value_ :: UserInterface.UserInterface) (SubscriberUser.new_1 hashMap))


