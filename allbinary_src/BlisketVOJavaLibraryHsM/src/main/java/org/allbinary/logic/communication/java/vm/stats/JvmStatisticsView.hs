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
-- package org.allbinary.logic.communication.java.vm.stats
module JvmStatisticsView (module JvmStatisticsView, module JvmStatisticsMapping) where

import JvmStatisticsMapping hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified JvmStatisticsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified JvmStatisticsMapping

-- implements DomNodeInterface
data JvmStatisticsView = JvmStatisticsView
    { header_ :: JavaHeader
    , base :: JvmStatisticsMapping.JvmStatisticsMapping
    }

instance JavaNull JvmStatisticsView where
    javaNull = javaNullRecord "JvmStatisticsView"

instance JavaEquals JvmStatisticsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JvmStatisticsView where
    (==) = jrecordEquals

instance JavaObjectClass JvmStatisticsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO JvmStatisticsView
newRecord_ = do
    base <- JvmStatisticsMapping.newRecord_
    let header_ = base.header_
    let this = JvmStatisticsView header_ base
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: JvmStatisticsView -> IO ()
initFields_ this = do
    pure ()

new_ :: IO JvmStatisticsView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JvmStatisticsView -> IO ()
init_ this = do
        JvmStatisticsMapping.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: JvmStatisticsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: JvmStatisticsView)) a1

toXmlNode_impl :: JvmStatisticsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (JvmStatisticsMapping.toHashMap this)
        node <- (ModDomHelper.createNameValueNodes document (JvmStatisticsData.nAME) hashMap)
        pure (node)


