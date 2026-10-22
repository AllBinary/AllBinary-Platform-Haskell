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
-- package org.allbinary.logic.visual.transform.template.customizer.widgets.title
module TitleView where

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
import qualified TitleData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data TitleView = TitleView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , title :: IORef (String)
    }

instance JavaNull TitleView where
    javaNull = javaNullRecord "TitleView"

instance JavaEquals TitleView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TitleView where
    (==) = jrecordEquals

instance JavaObjectClass TitleView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "None"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TitleView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    title <- newIORef ""
    let this = TitleView header_ logUtil commonStrings title
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getTitle" (\() -> getTitle_impl this)
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: TitleView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.title (javaNull)
    pure ()

new_ :: IO TitleView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TitleView -> IO ()
init_ this = do
        initFields_ this
        jset (this).title (TitleView.nAME)
        pure ()

new_1 :: Node.Node -> IO TitleView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TitleView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        titleTextNode <- (DomSearchHelper.getNode (jget ((jio (TitleData.getInstance))).tEXT) (jio (Node.getChildNodes node)))
        valueNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes titleTextNode)))
        assignedValue <- (DomNodeHelper.getTextNodeValue valueNode)
        jset (this).title (assignedValue)
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).title))) $ do
            jset (this).title (TitleView.nAME)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Title: " ++ javaToString (jio (TitleView.getTitle this))) this "Consructor()")
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO TitleView
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: TitleView -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (TitleView.getFormData this hashMap)
        pure ()


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: TitleView))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: TitleView))

getTitle_impl :: TitleView -> IO (String)
getTitle_impl this = do
        pure ((jget (this).title))


getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: TitleView))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: TitleView)) a1

getFormData_impl :: TitleView -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        jset (this).title ((javaCast (jio (HashMap.get hashMap (jget ((jio (TitleData.getInstance))).tEXT))) :: String))
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).title))) $ do
            jset (this).title (TitleView.nAME)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: TitleView))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: TitleView))

toHashMap_impl :: TitleView -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (TitleData.getInstance))).tEXT) (jio (TitleView.getTitle this)))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TitleView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TitleView)) a1

toXmlNode_impl :: TitleView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (TitleView.toHashMap this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TitleView HashMap: " ++ (jio (HashMap.toString hashMap))) this "toXmlNode()")
        (ModDomHelper.createNameValueNodes_3 document (jget ((jio (TitleData.getInstance))).nAME) hashMap)


