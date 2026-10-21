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
-- package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim
module AuthorizeNetAimData where

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

data AuthorizeNetAimData = AuthorizeNetAimData
    { header_ :: JavaHeader
    }

instance JavaNull AuthorizeNetAimData where
    javaNull = javaNullRecord "AuthorizeNetAimData"

instance JavaEquals AuthorizeNetAimData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthorizeNetAimData where
    (==) = jrecordEquals

instance JavaObjectClass AuthorizeNetAimData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

x_DELIM_DATA = "x_delim_data"

x_DELIM_CHAR = "x_delim_char"

x_ENCAP_CHAR = "x_encap_char"

x_AUTHENTICATION_INDICATOR = "x_authentication_indicator"

x_CARDHOLDER_AUTHENTICATION_VALUE = "x_cardholder_authentication_value"

x_DRIVERS_LICENSE_NUM = "x_drivers_license_num"

x_DRIVERS_LICENSE_STATE = "x_drivers_license_state"

x_DRIVERS_LICENSE_DOB = "x_drivers_license_dob"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AuthorizeNetAimData
newRecord_ = do
    header_ <- newJavaHeader
    let this = AuthorizeNetAimData header_
    jregisterLevel header_ this
    pure this

initFields_ :: AuthorizeNetAimData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AuthorizeNetAimData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthorizeNetAimData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


