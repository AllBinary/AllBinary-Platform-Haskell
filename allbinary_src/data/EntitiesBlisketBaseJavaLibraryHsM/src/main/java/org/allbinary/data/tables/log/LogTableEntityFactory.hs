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
-- package org.allbinary.data.tables.log
module LogTableEntityFactory where

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
import qualified LogTableEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LogTableEntityFactory = LogTableEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull LogTableEntityFactory where
    javaNull = javaNullRecord "LogTableEntityFactory"

instance JavaEquals LogTableEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogTableEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass LogTableEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogTableEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = LogTableEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getLogTableEntityInstance" (\() -> getLogTableEntityInstance_impl this)
    pure this

initFields_ :: LogTableEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (LogTableEntityFactory)
getInstance = do
        pure (LogTableEntityFactory.instance_)

new_ :: IO LogTableEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogTableEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getLogTableEntityInstance :: (JavaObjectClass this_) => this_ -> IO (LogTableEntity.LogTableEntity)
getLogTableEntityInstance object_ = jmethod object_ "getLogTableEntityInstance" (\() -> (getLogTableEntityInstance_impl (javaCast object_ :: LogTableEntityFactory))) ()

getLogTableEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (LogTableEntity.LogTableEntity)
getLogTableEntityInstance_super object_ = (getLogTableEntityInstance_impl (javaCast object_ :: LogTableEntityFactory))

getLogTableEntityInstance_impl :: LogTableEntityFactory -> IO (LogTableEntity.LogTableEntity)
getLogTableEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (LogTableEntity.new_)


