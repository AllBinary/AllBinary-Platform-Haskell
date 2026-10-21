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
-- package org.allbinary.business.user.commerce.money.payment.gateway.processor
module PaymentProcessorInterface (module PaymentProcessorInterface, module DomNodeInterface) where

import DomNodeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, toString)
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
import qualified PaymentException -- org.allbinary.business.user.commerce.money.payment.PaymentException
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface

-- Java interface: the classes that implement it have these functions
data PaymentProcessorInterface = PaymentProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentProcessorInterface where
    javaNull = javaNullRecord "PaymentProcessorInterface"

instance JavaEquals PaymentProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentProcessorInterface
fromHeader_ header = PaymentProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentProcessorInterface header)
    DomNodeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws PaymentException, Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PaymentProcessorInterface))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: PaymentProcessorInterface))

process_impl :: PaymentProcessorInterface -> IO (())
process_impl this = javaAbstractMethod "process"


