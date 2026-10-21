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
-- package org.allbinary.business.user.commerce.shipping
module ShippingMethodData where

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

data ShippingMethodData = ShippingMethodData
    { header_ :: JavaHeader
    }

instance JavaNull ShippingMethodData where
    javaNull = javaNullRecord "ShippingMethodData"

instance JavaEquals ShippingMethodData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethodData where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethodData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dESCRIPTION = "SHIPPINGMETHOD_DESCRIPTION"

dEFAULT = "SHIPPINGMETHOD_DEFAULT"

nAME = "SHIPPINGMETHOD_NAME"

gROUP = "SHIPPINGMETHOD_GROUP"

cOST = "SHIPPINGMETHOD_COST"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShippingMethodData
newRecord_ = do
    header_ <- newJavaHeader
    let this = ShippingMethodData header_
    jregisterLevel header_ this
    pure this

initFields_ :: ShippingMethodData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShippingMethodData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShippingMethodData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


