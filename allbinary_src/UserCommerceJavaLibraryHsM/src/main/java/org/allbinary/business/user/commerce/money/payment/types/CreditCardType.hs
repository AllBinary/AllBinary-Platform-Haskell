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
-- package org.allbinary.business.user.commerce.money.payment.types
module CreditCardType where

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

data CreditCardType = CreditCardType
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull CreditCardType where
    javaNull = javaNullRecord "CreditCardType"

instance JavaEquals CreditCardType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CreditCardType where
    (==) = jrecordEquals

instance JavaObjectClass CreditCardType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXLEN = 19

newRecord_ :: IO CreditCardType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = CreditCardType header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CreditCardType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO CreditCardType
new_1 cardType = do
    this <- newRecord_
    init_1 this cardType
    pure this

init_1 :: CreditCardType -> String -> IO ()
init_1 this cardType = do
        initFields_ this
        jset (this).name (cardType)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CreditCardType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CreditCardType))

toString_impl :: CreditCardType -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


