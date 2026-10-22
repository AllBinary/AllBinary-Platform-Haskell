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
-- package org.allbinary.business.context.modules.storefront.statistics.users
module StoreFrontUsersStatisticsView where

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
import qualified StoreFrontUsersStatisticsInterface -- same package or java.lang
import qualified StoreFrontUsersStatisticsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreFrontUsersStatisticsView = StoreFrontUsersStatisticsView
    { header_ :: JavaHeader
    , storeFrontUsersStatisticsInterface :: IORef (StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface)
    }

instance JavaNull StoreFrontUsersStatisticsView where
    javaNull = javaNullRecord "StoreFrontUsersStatisticsView"

instance JavaEquals StoreFrontUsersStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontUsersStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontUsersStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontUsersStatisticsView
newRecord_ = do
    header_ <- newJavaHeader
    storeFrontUsersStatisticsInterface <- newIORef javaNull
    let this = StoreFrontUsersStatisticsView header_ storeFrontUsersStatisticsInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreFrontUsersStatisticsView -> IO ()
initFields_ this = do
    jset this.storeFrontUsersStatisticsInterface (javaNull)
    pure ()

new_1 :: StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface -> IO StoreFrontUsersStatisticsView
new_1 storeFrontUsersStatisticsInterface = do
    this <- newRecord_
    init_1 this storeFrontUsersStatisticsInterface
    pure this

init_1 :: StoreFrontUsersStatisticsView -> StoreFrontUsersStatisticsInterface.StoreFrontUsersStatisticsInterface -> IO ()
init_1 this storeFrontUsersStatisticsInterface = do
        initFields_ this
        jset (this).storeFrontUsersStatisticsInterface (storeFrontUsersStatisticsInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreFrontUsersStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreFrontUsersStatisticsView)) a1

toXmlNode_impl :: StoreFrontUsersStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (StoreFrontUsersStatisticsInterface.toHashMap ((jget (this).storeFrontUsersStatisticsInterface)))
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (StoreFrontUsersStatisticsData.getInstance))).nAME) hashMap)
        pure (node)


