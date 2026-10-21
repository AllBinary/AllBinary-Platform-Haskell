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
-- package org.allbinary.data.tables.user.commerce.inventory.item.groups
module BasicGroupItemsEntityFactory where

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
import qualified BasicGroupItemsEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicGroupItemsEntityFactory = BasicGroupItemsEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicGroupItemsEntityFactory where
    javaNull = javaNullRecord "BasicGroupItemsEntityFactory"

instance JavaEquals BasicGroupItemsEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGroupItemsEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGroupItemsEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGroupItemsEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BasicGroupItemsEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getBasicGroupItemsEntityInstance" (\() -> getBasicGroupItemsEntityInstance_impl this)
    pure this

initFields_ :: BasicGroupItemsEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (BasicGroupItemsEntityFactory)
getInstance = do
        pure (BasicGroupItemsEntityFactory.instance_)

new_ :: IO BasicGroupItemsEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGroupItemsEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getBasicGroupItemsEntityInstance :: (JavaObjectClass this_) => this_ -> IO (BasicGroupItemsEntity.BasicGroupItemsEntity)
getBasicGroupItemsEntityInstance object_ = jmethod object_ "getBasicGroupItemsEntityInstance" (\() -> (getBasicGroupItemsEntityInstance_impl (javaCast object_ :: BasicGroupItemsEntityFactory))) ()

getBasicGroupItemsEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (BasicGroupItemsEntity.BasicGroupItemsEntity)
getBasicGroupItemsEntityInstance_super object_ = (getBasicGroupItemsEntityInstance_impl (javaCast object_ :: BasicGroupItemsEntityFactory))

getBasicGroupItemsEntityInstance_impl :: BasicGroupItemsEntityFactory -> IO (BasicGroupItemsEntity.BasicGroupItemsEntity)
getBasicGroupItemsEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (BasicGroupItemsEntity.new_)


