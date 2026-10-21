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
-- package org.allbinary.business.user.commerce.inventory.basket
module BasketData where

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

data BasketData = BasketData
    { header_ :: JavaHeader
    }

instance JavaNull BasketData where
    javaNull = javaNullRecord "BasketData"

instance JavaEquals BasketData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketData where
    (==) = jrecordEquals

instance JavaObjectClass BasketData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

bASKET = "BASKET"

nAME = "NAME"

bASKETREVIEW = "BASKET_REVIEW"

tOTALWEIGHT = "BASKET_TOTALWEIGTH"

iTEMTOTAL = "BASKET_ITEMTOTAL"

iTEMTOTALINBASKET = "BASKET_ITEMTOTALINBASKET"

sUBTOTAL = "BASKET_SUBTOTAL"

iSEMPTY = "BASKET_ISEMPTY"

iNSERT = "BASKET_INSERT"

dELETE = "BASKET_DELETE"

aDJUST = "BASKET_ADJUST"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasketData
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasketData header_
    jregisterLevel header_ this
    pure this

initFields_ :: BasketData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasketData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasketData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


