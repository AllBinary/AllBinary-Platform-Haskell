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
-- package org.allbinary.data.tables.user.commerce.inventory.item
module InventoryEntityFactory where

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
import qualified InventoryEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InventoryEntityFactory = InventoryEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InventoryEntityFactory where
    javaNull = javaNullRecord "InventoryEntityFactory"

instance JavaEquals InventoryEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass InventoryEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventoryEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = InventoryEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInventoryEntityInstance" (\() -> getInventoryEntityInstance_impl this)
    pure this

initFields_ :: InventoryEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (InventoryEntityFactory)
getInstance = do
        pure (InventoryEntityFactory.instance_)

new_ :: IO InventoryEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInventoryEntityInstance :: (JavaObjectClass this_) => this_ -> IO (InventoryEntity.InventoryEntity)
getInventoryEntityInstance object_ = jmethod object_ "getInventoryEntityInstance" (\() -> (getInventoryEntityInstance_impl (javaCast object_ :: InventoryEntityFactory))) ()

getInventoryEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (InventoryEntity.InventoryEntity)
getInventoryEntityInstance_super object_ = (getInventoryEntityInstance_impl (javaCast object_ :: InventoryEntityFactory))

getInventoryEntityInstance_impl :: InventoryEntityFactory -> IO (InventoryEntity.InventoryEntity)
getInventoryEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getInventoryEntityInstance()" e)
            pure (javaNull)
            ) $ do
            (InventoryEntity.new_)


