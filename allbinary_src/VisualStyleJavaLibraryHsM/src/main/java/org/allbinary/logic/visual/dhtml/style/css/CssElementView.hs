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
-- package org.allbinary.logic.visual.dhtml.style.css
module CssElementView where

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
import qualified CssElementData -- same package or java.lang
import qualified CssElementsValidationFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CssPropertiesValidationFactory -- org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
data CssElementView = CssElementView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tITLE :: IORef (String)
    , dESCRIPTION :: IORef (String)
    , value :: IORef (String)
    , title :: IORef (String)
    , description :: IORef (String)
    , cssElementVector :: IORef (BasicArrayList.BasicArrayList)
    , cssPropertyVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CssElementView where
    javaNull = javaNullRecord "CssElementView"

instance JavaEquals CssElementView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssElementView where
    (==) = jrecordEquals

instance JavaObjectClass CssElementView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssElementView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    tITLE <- newIORef ""
    dESCRIPTION <- newIORef ""
    value <- newIORef ""
    title <- newIORef ""
    description <- newIORef ""
    cssElementVector <- newIORef javaNull
    cssPropertyVector <- newIORef javaNull
    let this = CssElementView header_ logUtil commonStrings tITLE dESCRIPTION value title description cssElementVector cssPropertyVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CssElementView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tITLE ("title")
    jset this.dESCRIPTION ("description")
    jset this.value (javaNull)
    jset this.title (javaNull)
    jset this.description (javaNull)
    jset this.cssElementVector (javaNull)
    jset this.cssPropertyVector (javaNull)
    pure ()

new_ :: IO CssElementView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssElementView -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).cssPropertyVector (assignedValue)
        stringUtil <- (StringUtil.getInstance)
        jset (this).title ((jget (stringUtil).eMPTY_STRING))
        jset (this).description ((jget (stringUtil).eMPTY_STRING))
        jset (this).value ((jget (stringUtil).eMPTY_STRING))
        pure ()

new_1 :: Node.Node -> IO CssElementView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CssElementView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Value: "))) (jget (this).value)))) "\nTitle: "))) (jget (this).title)))) "\nDescription: "))) (jget (this).description)))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow ((JavaException "Exception" "CssElementView"))
            ) $ do
            valueNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes node)))
            assignedValue <- (DomNodeHelper.getTextNodeValue valueNode)
            jset (this).value (assignedValue)
            titleValueNode <- (DomSearchHelper.getNodeNoThrow (jget (this).tITLE) (jio (Node.getChildNodes node)))
            if (titleValueNode /= javaNull) then do
                assignedValue <- (DomNodeHelper.getTextNodeValue titleValueNode)
                jset (this).title (assignedValue)
            else do
                stringUtil <- (StringUtil.getInstance)
                jset (this).title ((jget (stringUtil).eMPTY_STRING))
            descriptionValueNode <- (DomSearchHelper.getNodeNoThrow (jget (this).dESCRIPTION) (jio (Node.getChildNodes node)))
            if (descriptionValueNode /= javaNull) then do
                assignedValue <- (DomNodeHelper.getTextNodeValue descriptionValueNode)
                jset (this).description (assignedValue)
            else do
                jset (this).description ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Value: "))) (jget (this).value)))) "\nTitle: "))) (jget (this).title)))) "\nDescription: "))) (jget (this).description)))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            cssElementStyleNodeVector <- (DomSearchHelper.getAllNodes (jget ((jio (CssElementData.getInstance))).nAME) (jio (Node.getChildNodes node)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Child Css Elements: " ++ javaToString (jio (BasicArrayList.size cssElementStyleNodeVector))) this "CssElementView()")
            assignedValue <- (CssElementsValidationFactory.getInstance cssElementStyleNodeVector)
            jset (this).cssElementVector (assignedValue)
            nodeList <- (Node.getChildNodes node)
            assignedValue <- (CssPropertiesValidationFactory.getInstance nodeList)
            jset (this).cssPropertyVector (assignedValue)
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: CssElementView))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: CssElementView))

getValue_impl :: CssElementView -> IO (String)
getValue_impl this = do
        pure ((jget (this).value))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: CssElementView))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: CssElementView))

toHashMap_impl :: CssElementView -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (DomData.vALUE) (jget (this).value))
        Control.Monad.void (HashMap.put hashMap (jget (this).tITLE) (jget (this).title))
        Control.Monad.void (HashMap.put hashMap (jget (this).dESCRIPTION) (jget (this).description))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CssElementView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CssElementView)) a1

toXmlNode_impl :: CssElementView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (CssElementView.toHashMap this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("CssView HashMap: " ++ (jio (HashMap.toString hashMap))) this "toXmlNode")
        node <- (ModDomHelper.createNodeWithValueNodes document (jget ((jio (CssElementData.getInstance))).nAME) hashMap)
        size <- (BasicArrayList.size ((jget (this).cssPropertyVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let cssPropertyDomNodeInterface = (javaCast (jio (BasicArrayList.get ((jget (this).cssPropertyVector)) index)) :: DomNodeInterface.DomNodeInterface)
            Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode cssPropertyDomNodeInterface document)))
        size2 <- (BasicArrayList.size ((jget (this).cssElementVector)))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            let cssElementDomNodeInterface = (javaCast (jio (BasicArrayList.get ((jget (this).cssElementVector)) index)) :: DomNodeInterface.DomNodeInterface)
            Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode cssElementDomNodeInterface document)))
        pure (node)


