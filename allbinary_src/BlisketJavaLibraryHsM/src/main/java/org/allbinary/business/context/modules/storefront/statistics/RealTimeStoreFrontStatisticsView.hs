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
-- package org.allbinary.business.context.modules.storefront.statistics
module RealTimeStoreFrontStatisticsView where

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
import qualified StoreFrontStatisticsInterface -- same package or java.lang
import qualified StoreFrontStatisticsData -- same package or java.lang
import qualified StoreFrontAdvertisementsStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface
import qualified StoreFrontAdvertisementsStatisticsView -- org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView
import qualified StoreFrontInventoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface
import qualified StoreFrontInventoryStatisticsView -- org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView
import qualified StoreFrontOrdersHistoryStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface
import qualified StoreFrontOrdersHistoryStatisticsView -- org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView
import qualified StoreFrontUsersStatisticsInterface -- org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface
import qualified StoreFrontUsersStatisticsView -- org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleFactory -- org.allbinary.business.user.role.UserRoleFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data RealTimeStoreFrontStatisticsView = RealTimeStoreFrontStatisticsView
    { header_ :: JavaHeader
    , storeFrontStatisticsInterface :: IORef (StoreFrontStatisticsInterface.StoreFrontStatisticsInterface)
    , userRole :: IORef (UserRole.UserRole)
    }

instance JavaNull RealTimeStoreFrontStatisticsView where
    javaNull = javaNullRecord "RealTimeStoreFrontStatisticsView"

instance JavaEquals RealTimeStoreFrontStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RealTimeStoreFrontStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass RealTimeStoreFrontStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RealTimeStoreFrontStatisticsView
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontStatisticsInterface <- newIORef javaNull
    userRole <- newIORef javaNull
    let this = RealTimeStoreFrontStatisticsView header_ storeFrontStatisticsInterface userRole
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: RealTimeStoreFrontStatisticsView -> IO ()
initFields_ this = do
    jset this.storeFrontStatisticsInterface (javaNull)
    jset this.userRole (javaNull)
    pure ()

new_2 :: StoreFrontStatisticsInterface.StoreFrontStatisticsInterface -> UserRole.UserRole -> IO RealTimeStoreFrontStatisticsView
new_2 storeFrontStatisticsInterface userRole = do
    this <- newRecord_
    init_2 this storeFrontStatisticsInterface userRole
    pure this

init_2 :: RealTimeStoreFrontStatisticsView -> StoreFrontStatisticsInterface.StoreFrontStatisticsInterface -> UserRole.UserRole -> IO ()
init_2 this storeFrontStatisticsInterface userRole = do
        initFields_ this
        jset (this).storeFrontStatisticsInterface (storeFrontStatisticsInterface)
        jset (this).userRole (userRole)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: RealTimeStoreFrontStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: RealTimeStoreFrontStatisticsView)) a1

toXmlNode_impl :: RealTimeStoreFrontStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (StoreFrontStatisticsData.getInstance))).nAME))
        storeFrontAdvertisementsStatisticsInterface <- (StoreFrontStatisticsInterface.getAdvertisements ((jget (this).storeFrontStatisticsInterface)))
        storeFrontAdvertisementsStatisticsDomNodeInterface <- (fmap (\value_ -> javaCast value_ :: DomNodeInterface.DomNodeInterface) (StoreFrontAdvertisementsStatisticsView.new_1 storeFrontAdvertisementsStatisticsInterface))
        Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode storeFrontAdvertisementsStatisticsDomNodeInterface document)))
        storeFrontInventoryStatisticsInterface <- (StoreFrontStatisticsInterface.getInventory ((jget (this).storeFrontStatisticsInterface)))
        storeFrontInventoryStatisticsDomNodeInterface <- (fmap (\value_ -> javaCast value_ :: DomNodeInterface.DomNodeInterface) (StoreFrontInventoryStatisticsView.new_1 storeFrontInventoryStatisticsInterface))
        Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode storeFrontInventoryStatisticsDomNodeInterface document)))
        storeFrontOrdersHistoryStatisticsInterface <- (StoreFrontStatisticsInterface.getOrders ((jget (this).storeFrontStatisticsInterface)))
        storeFrontOrdersHistoryStatisticsDomNodeInterface <- (fmap (\value_ -> javaCast value_ :: DomNodeInterface.DomNodeInterface) (StoreFrontOrdersHistoryStatisticsView.new_1 storeFrontOrdersHistoryStatisticsInterface))
        Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode storeFrontOrdersHistoryStatisticsDomNodeInterface document)))
        when ((jget (this).userRole) == (jget ((jio (UserRoleFactory.getInstance))).aDMINISTRATOR)) $ do
            storeFrontUsersStatisticsInterface <- (StoreFrontStatisticsInterface.getUsers ((jget (this).storeFrontStatisticsInterface)))
            storeFrontUsersStatisticsDomNodeInterface <- (fmap (\value_ -> javaCast value_ :: DomNodeInterface.DomNodeInterface) (StoreFrontUsersStatisticsView.new_1 storeFrontUsersStatisticsInterface))
            Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode storeFrontUsersStatisticsDomNodeInterface document)))
        pure (node)


