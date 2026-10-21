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
module TransactionTypeFactory where

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
import qualified TransactionType -- same package or java.lang

data TransactionTypeFactory = TransactionTypeFactory
    { header_ :: JavaHeader
    , sALE :: IORef (TransactionType.TransactionType)
    , cREDIT :: IORef (TransactionType.TransactionType)
    , aUTHORIZATION :: IORef (TransactionType.TransactionType)
    , dELAYEDCAPTURE :: IORef (TransactionType.TransactionType)
    , vOID :: IORef (TransactionType.TransactionType)
    , iNQUIRY :: IORef (TransactionType.TransactionType)
    }

instance JavaNull TransactionTypeFactory where
    javaNull = javaNullRecord "TransactionTypeFactory"

instance JavaEquals TransactionTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransactionTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransactionTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    sALE <- newIORef javaNull
    cREDIT <- newIORef javaNull
    aUTHORIZATION <- newIORef javaNull
    dELAYEDCAPTURE <- newIORef javaNull
    vOID <- newIORef javaNull
    iNQUIRY <- newIORef javaNull
    let this = TransactionTypeFactory header_ sALE cREDIT aUTHORIZATION dELAYEDCAPTURE vOID iNQUIRY
    jregisterLevel header_ this
    pure this

initFields_ :: TransactionTypeFactory -> IO ()
initFields_ this = do
    jset this.sALE =<< (TransactionType.new_1 "Sale")
    jset this.cREDIT =<< (TransactionType.new_1 "Credit")
    jset this.aUTHORIZATION =<< (TransactionType.new_1 "Authorization")
    jset this.dELAYEDCAPTURE =<< (TransactionType.new_1 "Delayed Capture")
    jset this.vOID =<< (TransactionType.new_1 "Void")
    jset this.iNQUIRY =<< (TransactionType.new_1 "Inquiry")
    pure ()

new_ :: IO TransactionTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransactionTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TransactionTypeFactory)
getInstance = do
        pure (TransactionTypeFactory.instance_)


