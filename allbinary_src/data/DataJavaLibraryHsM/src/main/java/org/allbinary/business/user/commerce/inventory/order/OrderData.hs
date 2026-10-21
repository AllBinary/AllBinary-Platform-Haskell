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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderData where

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

data OrderData = OrderData
    { header_ :: JavaHeader
    }

instance JavaNull OrderData where
    javaNull = javaNullRecord "OrderData"

instance JavaEquals OrderData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderData where
    (==) = jrecordEquals

instance JavaObjectClass OrderData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

oRDERS = "ORDERS"

oRDER = "ORDER"

iD = "ORDER_ID"

cUSTOMERCOMMENT = "ORDER_CUSTOMER_COMMENT"

cUSTOMERCANCELCOMMENT = "ORDER_CUSTOMER_CANCEL_COMMENT"

sTORECOMMENT = "ORDER_STORE_COMMENT"

sTORECANCELCOMMENT = "ORDER_STORE_CANCEL_COMMENT"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderData
newRecord_ = do
    header_ <- newJavaHeader
    let this = OrderData header_
    jregisterLevel header_ this
    pure this

initFields_ :: OrderData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OrderData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderData -> IO ()
init_ this = do
    initFields_ this


