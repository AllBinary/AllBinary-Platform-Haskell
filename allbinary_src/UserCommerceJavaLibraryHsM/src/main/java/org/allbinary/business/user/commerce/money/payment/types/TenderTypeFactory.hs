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
module TenderTypeFactory where

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
import qualified TenderType -- same package or java.lang

data TenderTypeFactory = TenderTypeFactory
    { header_ :: JavaHeader
    , cREDITCARD :: IORef (TenderType.TenderType)
    , cHECK :: IORef (TenderType.TenderType)
    , aCH :: IORef (TenderType.TenderType)
    }

instance JavaNull TenderTypeFactory where
    javaNull = javaNullRecord "TenderTypeFactory"

instance JavaEquals TenderTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TenderTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass TenderTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TenderTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    cREDITCARD <- newIORef javaNull
    cHECK <- newIORef javaNull
    aCH <- newIORef javaNull
    let this = TenderTypeFactory header_ cREDITCARD cHECK aCH
    jregisterLevel header_ this
    pure this

initFields_ :: TenderTypeFactory -> IO ()
initFields_ this = do
    jset this.cREDITCARD =<< (TenderType.new_1 "Credit Card")
    jset this.cHECK =<< (TenderType.new_1 "Check")
    jset this.aCH =<< (TenderType.new_1 "Ach")
    pure ()

new_ :: IO TenderTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TenderTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TenderTypeFactory)
getInstance = do
        pure (TenderTypeFactory.instance_)


