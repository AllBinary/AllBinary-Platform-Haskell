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
-- package org.allbinary.business.user.subscription
module Subscription where

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

data Subscription = Subscription
    { header_ :: JavaHeader
    }

instance JavaNull Subscription where
    javaNull = javaNullRecord "Subscription"

instance JavaEquals Subscription where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Subscription where
    (==) = jrecordEquals

instance JavaObjectClass Subscription where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Subscription
newRecord_ = do
    header_ <- newJavaHeader
    let this = Subscription header_
    jregisterLevel header_ this
    jregisterMethod header_ "isSubscribed" (\() -> isSubscribed_impl this)
    pure this

initFields_ :: Subscription -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Subscription
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Subscription -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isSubscribed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSubscribed object_ = jmethod object_ "isSubscribed" (\() -> (isSubscribed_impl (javaCast object_ :: Subscription))) ()

isSubscribed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSubscribed_super object_ = (isSubscribed_impl (javaCast object_ :: Subscription))

isSubscribed_impl :: Subscription -> IO (Bool)
isSubscribed_impl this = do
        pure (True)


