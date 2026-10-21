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
-- package org.allbinary.business.context.modules.storefront
module StoreFrontFactory where

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
import qualified StoreFront -- same package or java.lang
import qualified StoreFrontsEntity -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity
import qualified StoreFrontsEntityFactory -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StoreFrontFactory = StoreFrontFactory
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontFactory where
    javaNull = javaNullRecord "StoreFrontFactory"

instance JavaEquals StoreFrontFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = StoreFrontFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StoreFrontFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: String -> IO (StoreFront.StoreFront)
getInstance storeName = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "StoreFrontFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            storeFronts <- (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance))))
            (StoreFrontsEntity.getStoreFrontInterface storeFronts storeName)


