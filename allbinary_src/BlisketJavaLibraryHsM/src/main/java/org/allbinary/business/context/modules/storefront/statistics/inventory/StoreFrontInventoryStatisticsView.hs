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
-- package org.allbinary.business.context.modules.storefront.statistics.inventory
module StoreFrontInventoryStatisticsView where

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
import qualified StoreFrontInventoryStatisticsInterface -- same package or java.lang
import qualified StoreFrontInventoryStatisticsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreFrontInventoryStatisticsView = StoreFrontInventoryStatisticsView
    { header_ :: JavaHeader
    , storeFrontInventoryStatisticsInterface :: IORef (StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface)
    }

instance JavaNull StoreFrontInventoryStatisticsView where
    javaNull = javaNullRecord "StoreFrontInventoryStatisticsView"

instance JavaEquals StoreFrontInventoryStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontInventoryStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontInventoryStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontInventoryStatisticsView
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontInventoryStatisticsInterface <- newIORef javaNull
    let this = StoreFrontInventoryStatisticsView header_ storeFrontInventoryStatisticsInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreFrontInventoryStatisticsView -> IO ()
initFields_ this = do
    jset this.storeFrontInventoryStatisticsInterface (javaNull)
    pure ()

new_1 :: StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface -> IO StoreFrontInventoryStatisticsView
new_1 storeFrontInventoryStatisticsInterface = do
    this <- newRecord_
    init_1 this storeFrontInventoryStatisticsInterface
    pure this

init_1 :: StoreFrontInventoryStatisticsView -> StoreFrontInventoryStatisticsInterface.StoreFrontInventoryStatisticsInterface -> IO ()
init_1 this storeFrontInventoryStatisticsInterface = do
        initFields_ this
        jset (this).storeFrontInventoryStatisticsInterface (storeFrontInventoryStatisticsInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreFrontInventoryStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreFrontInventoryStatisticsView)) a1

toXmlNode_impl :: StoreFrontInventoryStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (StoreFrontInventoryStatisticsInterface.toHashMap ((jget (this).storeFrontInventoryStatisticsInterface)))
        node <- (ModDomHelper.createNameValueNodes document (jget ((jio (StoreFrontInventoryStatisticsData.getInstance))).nAME) hashMap)
        pure (node)


