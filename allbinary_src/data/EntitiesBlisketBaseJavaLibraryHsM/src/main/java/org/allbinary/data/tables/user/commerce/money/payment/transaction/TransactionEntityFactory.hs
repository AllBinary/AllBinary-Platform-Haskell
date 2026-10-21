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
-- package org.allbinary.data.tables.user.commerce.money.payment.transaction
module TransactionEntityFactory where

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
import qualified TransactionEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransactionEntityFactory = TransactionEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransactionEntityFactory where
    javaNull = javaNullRecord "TransactionEntityFactory"

instance JavaEquals TransactionEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransactionEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransactionEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransactionEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getTransactionEntityInstance" (\() -> getTransactionEntityInstance_impl this)
    pure this

initFields_ :: TransactionEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransactionEntityFactory)
getInstance = do
        pure (TransactionEntityFactory.instance_)

new_ :: IO TransactionEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransactionEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getTransactionEntityInstance :: (JavaObjectClass this_) => this_ -> IO (TransactionEntity.TransactionEntity)
getTransactionEntityInstance object_ = jmethod object_ "getTransactionEntityInstance" (\() -> (getTransactionEntityInstance_impl (javaCast object_ :: TransactionEntityFactory))) ()

getTransactionEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (TransactionEntity.TransactionEntity)
getTransactionEntityInstance_super object_ = (getTransactionEntityInstance_impl (javaCast object_ :: TransactionEntityFactory))

getTransactionEntityInstance_impl :: TransactionEntityFactory -> IO (TransactionEntity.TransactionEntity)
getTransactionEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (TransactionEntity.new_)


