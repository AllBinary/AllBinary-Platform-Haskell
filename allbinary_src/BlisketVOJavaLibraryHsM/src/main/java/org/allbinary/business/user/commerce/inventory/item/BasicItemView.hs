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
module BasicItemView where

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
import qualified BasicItemData -- same package or java.lang
import qualified ItemInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data BasicItemView = BasicItemView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicItemView where
    javaNull = javaNullRecord "BasicItemView"

instance JavaEquals BasicItemView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicItemView where
    (==) = jrecordEquals

instance JavaObjectClass BasicItemView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicItemView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    basicItemData <- newIORef javaNull
    itemInterface <- newIORef javaNull
    vector <- newIORef javaNull
    let this = BasicItemView header_ logUtil commonStrings basicItemData itemInterface vector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: BasicItemView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.itemInterface (javaNull)
    jset this.vector (javaNull)
    pure ()

new_2 :: ItemInterface.ItemInterface -> BasicArrayList.BasicArrayList -> IO BasicItemView
new_2 itemInterface vector = do
    this <- newRecord_
    init_2 this itemInterface vector
    pure this

init_2 :: BasicItemView -> ItemInterface.ItemInterface -> BasicArrayList.BasicArrayList -> IO ()
init_2 this itemInterface vector = do
        initFields_ this
        jset (this).itemInterface (itemInterface)
        jset (this).vector (vector)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicItemView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicItemView)) a1

toXmlNode_impl :: BasicItemView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "toXmlNode")
        hashMap <- (ItemInterface.toHashMap ((jget (this).itemInterface)))
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        Control.Monad.void (HashMap.put hashMap (jget ((jget (this).basicItemData)).iMAGE) eMPTY_STRING)
        stringUtil <- (StringUtil.getInstance)
        keySet <- (HashMap.keySet hashMap)
        node <- (Document.createElement document (jget ((jget (this).basicItemData)).iTEM))
        nameArray <- (Set.toArray keySet)
        let size2 = (jlength nameArray)
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex nameArray (index)) :: String)
            value <- newIORef ((javaCast (jio (HashMap.get hashMap name)) :: String))
            assignedValue <- (StringUtil.getNonNull stringUtil (jget value))
            jset value (assignedValue)
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name (jget value))))
        totalNode <- (ModDomHelper.createNameValueNodes document (jget ((jget (this).basicItemData)).tOTAL) (jio (ItemInterface.toString ((jio (ItemInterface.getTotal ((jget (this).itemInterface))))))))
        Control.Monad.void (Node.appendChild node totalNode)
        size <- (BasicArrayList.size ((jget (this).vector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let domNodeInterface = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: DomNodeInterface.DomNodeInterface)
            customNode <- (DomNodeInterface.toXmlNode domNodeInterface document)
            Control.Monad.void (Node.appendChild node customNode)
        pure (node)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: BasicItemView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: BasicItemView))

toXmlDoc_impl :: BasicItemView -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: BasicItemView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: BasicItemView))

view_impl :: BasicItemView -> IO (String)
view_impl this = do
        pure (javaNull)


