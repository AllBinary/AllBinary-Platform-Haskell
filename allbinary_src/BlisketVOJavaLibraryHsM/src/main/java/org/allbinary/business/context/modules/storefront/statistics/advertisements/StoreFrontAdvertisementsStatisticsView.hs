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
-- package org.allbinary.business.context.modules.storefront.statistics.advertisements
module StoreFrontAdvertisementsStatisticsView where

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
import qualified StoreFrontAdvertisementsStatisticsInterface -- same package or java.lang
import qualified StoreFrontAdvertisementsStatisticsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreFrontAdvertisementsStatisticsView = StoreFrontAdvertisementsStatisticsView
    { header_ :: JavaHeader
    , storeFrontAdvertisementsStatisticsInterface :: IORef (StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface)
    }

instance JavaNull StoreFrontAdvertisementsStatisticsView where
    javaNull = javaNullRecord "StoreFrontAdvertisementsStatisticsView"

instance JavaEquals StoreFrontAdvertisementsStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontAdvertisementsStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontAdvertisementsStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontAdvertisementsStatisticsView
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontAdvertisementsStatisticsInterface <- newIORef javaNull
    let this = StoreFrontAdvertisementsStatisticsView header_ storeFrontAdvertisementsStatisticsInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreFrontAdvertisementsStatisticsView -> IO ()
initFields_ this = do
    jset this.storeFrontAdvertisementsStatisticsInterface (javaNull)
    pure ()

new_1 :: StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface -> IO StoreFrontAdvertisementsStatisticsView
new_1 storeFrontAdvertisementsStatisticsInterface = do
    this <- newRecord_
    init_1 this storeFrontAdvertisementsStatisticsInterface
    pure this

init_1 :: StoreFrontAdvertisementsStatisticsView -> StoreFrontAdvertisementsStatisticsInterface.StoreFrontAdvertisementsStatisticsInterface -> IO ()
init_1 this storeFrontAdvertisementsStatisticsInterface = do
        initFields_ this
        jset (this).storeFrontAdvertisementsStatisticsInterface (storeFrontAdvertisementsStatisticsInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreFrontAdvertisementsStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreFrontAdvertisementsStatisticsView)) a1

toXmlNode_impl :: StoreFrontAdvertisementsStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (StoreFrontAdvertisementsStatisticsInterface.toHashMap ((jget (this).storeFrontAdvertisementsStatisticsInterface)))
        node <- (ModDomHelper.createNameValueNodes document (jget ((jio (StoreFrontAdvertisementsStatisticsData.getInstance))).nAME) hashMap)
        pure (node)


