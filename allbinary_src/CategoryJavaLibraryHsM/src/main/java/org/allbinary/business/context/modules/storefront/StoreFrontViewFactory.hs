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
module StoreFrontViewFactory where

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
import qualified StoreFrontView -- same package or java.lang
import qualified StoreFrontsEntity -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity
import qualified StoreFrontsEntityFactory -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StoreFrontViewFactory = StoreFrontViewFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreFrontViewFactory where
    javaNull = javaNullRecord "StoreFrontViewFactory"

instance JavaEquals StoreFrontViewFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontViewFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontViewFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontViewFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StoreFrontViewFactory header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontViewFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO StoreFrontViewFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontViewFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: String -> IO (DomNodeInterface.DomNodeInterface)
getInstance storeName = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "StoreFrontFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            storeFronts <- (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance))))
            pure ((javaCast (jio (StoreFrontView.new_1 (jio (StoreFrontsEntity.getStoreFrontInterface storeFronts storeName)))) :: DomNodeInterface.DomNodeInterface))


