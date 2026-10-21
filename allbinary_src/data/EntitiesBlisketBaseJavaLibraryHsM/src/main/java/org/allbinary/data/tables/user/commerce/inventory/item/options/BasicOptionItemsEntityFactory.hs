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
-- package org.allbinary.data.tables.user.commerce.inventory.item.options
module BasicOptionItemsEntityFactory where

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
import qualified BasicOptionItemsEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicOptionItemsEntityFactory = BasicOptionItemsEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicOptionItemsEntityFactory where
    javaNull = javaNullRecord "BasicOptionItemsEntityFactory"

instance JavaEquals BasicOptionItemsEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicOptionItemsEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicOptionItemsEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicOptionItemsEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BasicOptionItemsEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getBasicOptionItemsEntityInstance" (\() -> getBasicOptionItemsEntityInstance_impl this)
    pure this

initFields_ :: BasicOptionItemsEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (BasicOptionItemsEntityFactory)
getInstance = do
        pure (BasicOptionItemsEntityFactory.instance_)

new_ :: IO BasicOptionItemsEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicOptionItemsEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getBasicOptionItemsEntityInstance :: (JavaObjectClass this_) => this_ -> IO (BasicOptionItemsEntity.BasicOptionItemsEntity)
getBasicOptionItemsEntityInstance object_ = jmethod object_ "getBasicOptionItemsEntityInstance" (\() -> (getBasicOptionItemsEntityInstance_impl (javaCast object_ :: BasicOptionItemsEntityFactory))) ()

getBasicOptionItemsEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (BasicOptionItemsEntity.BasicOptionItemsEntity)
getBasicOptionItemsEntityInstance_super object_ = (getBasicOptionItemsEntityInstance_impl (javaCast object_ :: BasicOptionItemsEntityFactory))

getBasicOptionItemsEntityInstance_impl :: BasicOptionItemsEntityFactory -> IO (BasicOptionItemsEntity.BasicOptionItemsEntity)
getBasicOptionItemsEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (BasicOptionItemsEntity.new_)


