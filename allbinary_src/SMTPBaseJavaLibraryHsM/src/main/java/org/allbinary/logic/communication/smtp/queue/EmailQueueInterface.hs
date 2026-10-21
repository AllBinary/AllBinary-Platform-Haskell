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
-- package org.allbinary.logic.communication.smtp.queue
module EmailQueueInterface where

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
import qualified EmailInterface -- org.allbinary.logic.communication.smtp.EmailInterface

-- Java interface: the classes that implement it have these functions
data EmailQueueInterface = EmailQueueInterface
    { header_ :: JavaHeader
    }

instance JavaNull EmailQueueInterface where
    javaNull = javaNullRecord "EmailQueueInterface"

instance JavaEquals EmailQueueInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailQueueInterface where
    (==) = jrecordEquals

instance JavaObjectClass EmailQueueInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> EmailQueueInterface
fromHeader_ header = EmailQueueInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (EmailQueueInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
offer :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
offer object_ a1 = jmethod object_ "offer" (\() -> (offer_impl (javaCast object_ :: EmailQueueInterface))) () a1

offer_super :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
offer_super object_ a1 = (offer_impl (javaCast object_ :: EmailQueueInterface)) a1

offer_impl :: EmailQueueInterface -> EmailInterface.EmailInterface -> IO (Bool)
offer_impl this emailInterface = javaAbstractMethod "offer"


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> IO (EmailInterface.EmailInterface)
remove object_ = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: EmailQueueInterface))) ()

remove_super :: (JavaObjectClass this_) => this_ -> IO (EmailInterface.EmailInterface)
remove_super object_ = (remove_impl (javaCast object_ :: EmailQueueInterface))

remove_impl :: EmailQueueInterface -> IO (EmailInterface.EmailInterface)
remove_impl this = javaAbstractMethod "remove"


