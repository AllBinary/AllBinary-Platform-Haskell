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
-- package org.allbinary.business.user.commerce.inventory.item
module ItemView where

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
import qualified OrderItemInterface -- same package or java.lang
import qualified ItemData -- same package or java.lang
import qualified BasicItemView -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data ItemView = ItemView
    { header_ :: JavaHeader
    , itemInterface :: IORef (OrderItemInterface.OrderItemInterface)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ItemView where
    javaNull = javaNullRecord "ItemView"

instance JavaEquals ItemView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemView where
    (==) = jrecordEquals

instance JavaObjectClass ItemView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemView
newRecord_ = do
    header_ <- newJavaHeader
    itemInterface <- newIORef javaNull
    vector <- newIORef javaNull
    let this = ItemView header_ itemInterface vector
    jregisterLevel header_ this
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ItemView -> IO ()
initFields_ this = do
    jset this.itemInterface (javaNull)
    jset this.vector (javaNull)
    pure ()

new_2 :: OrderItemInterface.OrderItemInterface -> BasicArrayList.BasicArrayList -> IO ItemView
new_2 itemInterface vector = do
    this <- newRecord_
    init_2 this itemInterface vector
    pure this

init_2 :: ItemView -> OrderItemInterface.OrderItemInterface -> BasicArrayList.BasicArrayList -> IO ()
init_2 this itemInterface vector = do
        initFields_ this
        jset (this).itemInterface (itemInterface)
        jset (this).vector (vector)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ItemView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ItemView)) a1

toXmlNode_impl :: ItemView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (OrderItemInterface.toHashMap ((jget (this).itemInterface)))
        keySet <- (HashMap.keySet hashMap)
        node <- (Document.createElement document (ItemData.iTEM))
        basicItemView <- (BasicItemView.new_2 (jget (this).itemInterface) (jget (this).vector))
        Control.Monad.void (Node.appendChild node (jio (BasicItemView.toXmlNode basicItemView document)))
        stringUtil <- (StringUtil.getInstance)
        nameArray <- (Set.toArray keySet)
        let size = (jlength nameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex nameArray (index)) :: String)
            value <- newIORef ((javaCast (jio (HashMap.get hashMap name)) :: String))
            assignedValue <- (StringUtil.getNonNull stringUtil (jget value))
            jset value (assignedValue)
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name (jget value))))
        shippingAddressNode <- (Document.createElement document (StreetAddressData.nAME))
        Control.Monad.void (Node.appendChild shippingAddressNode (jio (OrderItemInterface.toXmlNode ((jio (OrderItemInterface.getShippingAddress ((jget (this).itemInterface))))) document)))
        pure (node)


