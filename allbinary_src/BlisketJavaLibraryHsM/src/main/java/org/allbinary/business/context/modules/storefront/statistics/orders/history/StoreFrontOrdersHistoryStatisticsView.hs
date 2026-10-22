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
-- package org.allbinary.business.context.modules.storefront.statistics.orders.history
module StoreFrontOrdersHistoryStatisticsView where

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
import qualified StoreFrontOrdersHistoryStatisticsInterface -- same package or java.lang
import qualified StoreFrontOrdersHistoryStatisticsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreFrontOrdersHistoryStatisticsView = StoreFrontOrdersHistoryStatisticsView
    { header_ :: JavaHeader
    , storeFrontOrdersHistoryStatisticsInterface :: IORef (StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface)
    }

instance JavaNull StoreFrontOrdersHistoryStatisticsView where
    javaNull = javaNullRecord "StoreFrontOrdersHistoryStatisticsView"

instance JavaEquals StoreFrontOrdersHistoryStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontOrdersHistoryStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontOrdersHistoryStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontOrdersHistoryStatisticsView
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontOrdersHistoryStatisticsInterface <- newIORef javaNull
    let this = StoreFrontOrdersHistoryStatisticsView header_ storeFrontOrdersHistoryStatisticsInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreFrontOrdersHistoryStatisticsView -> IO ()
initFields_ this = do
    jset this.storeFrontOrdersHistoryStatisticsInterface (javaNull)
    pure ()

new_1 :: StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface -> IO StoreFrontOrdersHistoryStatisticsView
new_1 storeFrontOrdersHistoryStatisticsInterface = do
    this <- newRecord_
    init_1 this storeFrontOrdersHistoryStatisticsInterface
    pure this

init_1 :: StoreFrontOrdersHistoryStatisticsView -> StoreFrontOrdersHistoryStatisticsInterface.StoreFrontOrdersHistoryStatisticsInterface -> IO ()
init_1 this storeFrontOrdersHistoryStatisticsInterface = do
        initFields_ this
        jset (this).storeFrontOrdersHistoryStatisticsInterface (storeFrontOrdersHistoryStatisticsInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreFrontOrdersHistoryStatisticsView)) a1

toXmlNode_impl :: StoreFrontOrdersHistoryStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (StoreFrontOrdersHistoryStatisticsInterface.toHashMap ((jget (this).storeFrontOrdersHistoryStatisticsInterface)))
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (StoreFrontOrdersHistoryStatisticsData.getInstance))).nAME) hashMap)
        pure (node)


