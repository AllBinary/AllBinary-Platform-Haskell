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
module CreditCardTypeFactory where

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
import qualified CreditCardType -- same package or java.lang

data CreditCardTypeFactory = CreditCardTypeFactory
    { header_ :: JavaHeader
    , vISA :: IORef (CreditCardType.CreditCardType)
    , mASTERCARD :: IORef (CreditCardType.CreditCardType)
    , dISCOVER :: IORef (CreditCardType.CreditCardType)
    , aMERICANEXPRESS :: IORef (CreditCardType.CreditCardType)
    }

instance JavaNull CreditCardTypeFactory where
    javaNull = javaNullRecord "CreditCardTypeFactory"

instance JavaEquals CreditCardTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CreditCardTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass CreditCardTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CreditCardTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    vISA <- newIORef javaNull
    mASTERCARD <- newIORef javaNull
    dISCOVER <- newIORef javaNull
    aMERICANEXPRESS <- newIORef javaNull
    let this = CreditCardTypeFactory header_ vISA mASTERCARD dISCOVER aMERICANEXPRESS
    jregisterLevel header_ this
    pure this

initFields_ :: CreditCardTypeFactory -> IO ()
initFields_ this = do
    jset this.vISA =<< (CreditCardType.new_1 "Visa")
    jset this.mASTERCARD =<< (CreditCardType.new_1 "MasterCard")
    jset this.dISCOVER =<< (CreditCardType.new_1 "Discover")
    jset this.aMERICANEXPRESS =<< (CreditCardType.new_1 "AMX")
    pure ()

new_ :: IO CreditCardTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CreditCardTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CreditCardTypeFactory)
getInstance = do
        pure (CreditCardTypeFactory.instance_)


