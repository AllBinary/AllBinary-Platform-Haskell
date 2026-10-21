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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderHistoryFactory where

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
import qualified OrderHistory -- same package or java.lang
import qualified OrderHistoryEntity -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OrderHistoryFactory = OrderHistoryFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull OrderHistoryFactory where
    javaNull = javaNullRecord "OrderHistoryFactory"

instance JavaEquals OrderHistoryFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryFactory where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderHistoryFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = OrderHistoryFactory header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: OrderHistoryFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO OrderHistoryFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderHistoryFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: String -> IO (OrderHistory.OrderHistory)
getInstance id = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "OrderHistoryFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            orderHistoryEntityInterface <- (OrderHistoryEntity.new_)
            pure ((javaCast (jio (OrderHistoryEntity.getOrder orderHistoryEntityInterface id)) :: OrderHistory.OrderHistory))


