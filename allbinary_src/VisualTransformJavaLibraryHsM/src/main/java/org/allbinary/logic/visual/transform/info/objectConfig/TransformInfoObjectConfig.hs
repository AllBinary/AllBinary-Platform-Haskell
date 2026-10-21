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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module TransformInfoObjectConfig where

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
import qualified TransformInfoObjectConfigData -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified OutputTypeData -- org.allbinary.logic.io.OutputTypeData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoDomNode -- org.allbinary.logic.visual.transform.info.TransformInfoDomNode
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified XslData -- org.allbinary.logic.visual.transform.template.XslData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Attr -- org.w3c.dom.Attr
import qualified Document -- org.w3c.dom.Document
import qualified NamedNodeMap -- org.w3c.dom.NamedNodeMap
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified TransformInfoObjectConfigInterface

-- implements TransformInfoObjectConfigInterface
data TransformInfoObjectConfig = TransformInfoObjectConfig
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , ownerTransformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , document :: IORef (Document.Document)
    , outputTypeName :: IORef (String)
    }

instance JavaNull TransformInfoObjectConfig where
    javaNull = javaNullRecord "TransformInfoObjectConfig"

instance JavaEquals TransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoObjectConfig
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    ownerTransformInfoInterface <- newIORef javaNull
    document <- newIORef javaNull
    outputTypeName <- newIORef ""
    let this = TransformInfoObjectConfig header_ logUtil commonStrings ownerTransformInfoInterface document outputTypeName
    jregisterLevel header_ this
    TransformInfoObjectConfigInterface.registerInterface_ header_
    jregisterMethod header_ "createDocument" (\() -> createDocument_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "setDocument" (\() -> setDocument_impl this)
    jregisterMethod header_ "containsView" (\() -> containsView_impl this)
    jregisterMethod header_ "getTemplateAttributes" (\() -> getTemplateAttributes_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getNodeVector" (\() -> getNodeVector_impl this)
    jregisterMethod header_ "getTransformDomNodes" (\() -> getTransformDomNodes_impl this)
    jregisterMethod header_ "getTransforms" (\() -> getTransforms_impl this)
    jregisterMethod header_ "getTransformsGroup" (\() -> getTransformsGroup_impl this)
    jregisterMethod header_ "getTransformDomNodes" (\() -> getTransformDomNodes_impl this)
    jregisterMethod header_ "getTransforms" (\() -> getTransforms_impl this)
    jregisterMethod header_ "getGroupTransforms" (\() -> getGroupTransforms_impl this)
    jregisterMethod header_ "getParentTransforms" (\() -> getParentTransforms_impl this)
    jregisterMethod header_ "getRootNode" (\() -> getRootNode_impl this)
    jregisterMethod header_ "setOutputTypeName" (\() -> setOutputTypeName_impl this)
    jregisterMethod header_ "getOutputTypeName" (\() -> getOutputTypeName_impl this)
    jregisterMethod header_ "getInputOutputTypeName" (\() -> getInputOutputTypeName_impl this)
    jregisterMethod header_ "getInputOutputTypeFile" (\() -> getInputOutputTypeFile_impl this)
    jregisterMethod header_ "getImportUriPath" (\() -> getImportUriPath_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TransformInfoObjectConfig -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.ownerTransformInfoInterface (javaNull)
    jset this.document (javaNull)
    jset this.outputTypeName ("")
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO TransformInfoObjectConfig
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: TransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).ownerTransformInfoInterface (transformInfoInterface)
        Control.Monad.void (TransformInfoObjectConfig.createDocument this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "TransformInfo: ")
            if ((jget (this).ownerTransformInfoInterface) /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jget (this).ownerTransformInfoInterface)))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer "No Owner!?#@")
            Control.Monad.void (StringMaker.append stringBuffer "\nConstructed with document: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoObjectConfig.toString this)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "Constructor(TransformInfoInterface)")
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO TransformInfoObjectConfig
new_2 transformInfoInterface document = do
    this <- newRecord_
    init_2 this transformInfoInterface document
    pure this

init_2 :: TransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_2 this transformInfoInterface document = do
        initFields_ this
        jset (this).ownerTransformInfoInterface (transformInfoInterface)
        jset (this).document (document)
        node <- (DomSearchHelper.getNodeNoThrow (jget ((jio (OutputTypeData.getInstance))).nAME) (jio (Node.getChildNodes ((jio (TransformInfoObjectConfig.getRootNode this))))))
        when (node /= javaNull) $ do
            Control.Monad.void (TransformInfoObjectConfig.setOutputTypeName this (jio (DomNodeHelper.getTextNodeValue node)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "TransformInfo: ")
            if ((jget (this).ownerTransformInfoInterface) /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jget (this).ownerTransformInfoInterface)))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer "No Owner!?#@")
            Control.Monad.void (StringMaker.append stringBuffer "\nConstructed with document: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoObjectConfig.toString this)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "Constructor(TransformInfoInterface, Document)")
        pure ()

new_3 :: TransformInfoInterface.TransformInfoInterface -> String -> String -> IO TransformInfoObjectConfig
new_3 transformInfoInterface name type_ = do
    this <- newRecord_
    init_3 this transformInfoInterface name type_
    pure this

init_3 :: TransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_3 this transformInfoInterface name type_ = do
        initFields_ this
        jset (this).ownerTransformInfoInterface (transformInfoInterface)
        Control.Monad.void (TransformInfoObjectConfig.createDocument this)
        configNameAttr <- (Document.createAttribute ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME))
        Control.Monad.void (Attr.setValue configNameAttr name)
        objectConfigNode <- (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)
        Control.Monad.void (Node.appendChild objectConfigNode configNameAttr)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "TransformInfo: ")
            if ((jget (this).ownerTransformInfoInterface) /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jget (this).ownerTransformInfoInterface)))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer "No Owner!?#@")
            Control.Monad.void (StringMaker.append stringBuffer "\nConstructed with document: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoObjectConfig.toString this)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "Constructor(TransformInfoInterface, name, type)")
        pure ()


createDocument :: (JavaObjectClass this_) => this_ -> IO (())
createDocument object_ = jmethod object_ "createDocument" (\() -> (createDocument_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

createDocument_super :: (JavaObjectClass this_) => this_ -> IO (())
createDocument_super object_ = (createDocument_impl (javaCast object_ :: TransformInfoObjectConfig))

createDocument_impl :: TransformInfoObjectConfig -> IO (())
createDocument_impl this = do
        assignedValue <- (DomDocumentHelper.create)
        jset (this).document (assignedValue)
        objectConfigNode <- (Document.createElement ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME))
        Control.Monad.void (Document.appendChild ((jget (this).document)) objectConfigNode)
        pure ()


getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoObjectConfig))

getTransformInfoInterface_impl :: TransformInfoObjectConfig -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).ownerTransformInfoInterface))


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: TransformInfoObjectConfig))

toXmlDoc_impl :: TransformInfoObjectConfig -> IO (Document.Document)
toXmlDoc_impl this = do
        pure ((jget (this).document))


setDocument :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (())
setDocument object_ a1 = jmethod object_ "setDocument" (\() -> (setDocument_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

setDocument_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (())
setDocument_super object_ a1 = (setDocument_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

setDocument_impl :: TransformInfoObjectConfig -> Document.Document -> IO (())
setDocument_impl this document = do
        jset (this).document (document)
        pure ()


containsView :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView object_ a1 = jmethod object_ "containsView" (\() -> (containsView_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

containsView_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView_super object_ a1 = (containsView_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

containsView_impl :: TransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView_impl this transformInfoInterface = do
    javaCatchReturn $ do
        objectConfigNode <- (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)
        viewNodeList <- (Node.getChildNodes objectConfigNode)
        numberOfViews <- (NodeList.getLength viewNodeList)
        forM_ [0 .. numberOfViews - 1] $ \index -> javaIteration (pure ()) $ do
            viewNode <- (NodeList.item viewNodeList index)
            viewAttributes <- (Node.getAttributes viewNode)
            let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem viewAttributes (jget ((jio (TransformInfoData.getInstance))).nAME))) :: Attr.Attr)
            when ((jio (TransformInfoInterface.compareTo ((jio (TransformInfoInterface.getName transformInfoInterface))) (jio (Attr.getValue attrNode)))) == 0) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
getTemplateAttributes :: (JavaObjectClass this_) => this_ -> IO (NamedNodeMap.NamedNodeMap)
getTemplateAttributes object_ = jmethod object_ "getTemplateAttributes" (\() -> (getTemplateAttributes_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getTemplateAttributes_super :: (JavaObjectClass this_) => this_ -> IO (NamedNodeMap.NamedNodeMap)
getTemplateAttributes_super object_ = (getTemplateAttributes_impl (javaCast object_ :: TransformInfoObjectConfig))

getTemplateAttributes_impl :: TransformInfoObjectConfig -> IO (NamedNodeMap.NamedNodeMap)
getTemplateAttributes_impl this = do
        componentNode <- (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)
        (Node.getAttributes componentNode)


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoObjectConfig))

getName_impl :: TransformInfoObjectConfig -> IO (String)
getName_impl this = do
        let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem ((jio (TransformInfoObjectConfig.getTemplateAttributes this))) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME))) :: Attr.Attr)
        (Attr.getValue attrNode)


-- throws Exception
setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

setName_impl :: TransformInfoObjectConfig -> String -> IO (())
setName_impl this name = do
        let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem ((jio (TransformInfoObjectConfig.getTemplateAttributes this))) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME))) :: Attr.Attr)
        Control.Monad.void (Attr.setValue attrNode name)
        pure ()


-- throws Exception
getNodeVector :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNodeVector object_ a1 = jmethod object_ "getNodeVector" (\() -> (getNodeVector_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

getNodeVector_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNodeVector_super object_ a1 = (getNodeVector_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

getNodeVector_impl :: TransformInfoObjectConfig -> String -> IO (BasicArrayList.BasicArrayList)
getNodeVector_impl this nodeName = do
    javaCatchReturn $ do
        componentsNodeList <- (Document.getElementsByTagName ((jget (this).document)) nodeName)
        when ((componentsNodeList /= javaNull) && ((jio (NodeList.getLength componentsNodeList)) > 0)) $ do
            viewNodeVector <- (DomSearchHelper.getAllNodes (jget ((jio (TransformInfoData.getInstance))).nAME) (jio (NodeList.getChildNodes ((jio (NodeList.item componentsNodeList 0))))))
            numberOfViews <- (BasicArrayList.size viewNodeVector)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Number Of ")
                Control.Monad.void (StringMaker.append stringBuffer nodeName)
                Control.Monad.void (StringMaker.append stringBuffer " Nodes: ")
                Control.Monad.void (StringMaker.appendint stringBuffer numberOfViews)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getNodeVector(nodename)")
            javaReturn (viewNodeVector)
        (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))


-- throws Exception
getTransformDomNodes :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes object_ a1 = jmethod object_ "getTransformDomNodes" (\() -> (getTransformDomNodes_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

getTransformDomNodes_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes_super object_ a1 = (getTransformDomNodes_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

getTransformDomNodes_impl :: TransformInfoObjectConfig -> String -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes_impl this nodeName = do
        viewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        viewNodeVector <- (TransformInfoObjectConfig.getNodeVector this nodeName)
        size <- (BasicArrayList.size viewNodeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let viewNode = (javaCast (jio (BasicArrayList.get viewNodeVector index)) :: Node.Node)
            Control.Monad.void (BasicArrayList.add viewVector (jio (TransformInfoDomNode.new_1 viewNode)))
        pure (viewVector)


-- throws Exception
getTransforms :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransforms object_ a1 = jmethod object_ "getTransforms" (\() -> (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

getTransforms_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransforms_super object_ a1 = (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

getTransforms_impl :: TransformInfoObjectConfig -> String -> IO (BasicArrayList.BasicArrayList)
getTransforms_impl this nodeName = do
        viewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        viewNodeVector <- (TransformInfoObjectConfig.getNodeVector this nodeName)
        size <- (BasicArrayList.size viewNodeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let viewNode = (javaCast (jio (BasicArrayList.get viewNodeVector index)) :: Node.Node)
            Control.Monad.void (BasicArrayList.add viewVector (jio (TransformInfoDomNode.getTransformInfoInterface ((jio (TransformInfoDomNode.new_1 viewNode))))))
        pure (viewVector)


-- throws Exception
getTransformsGroup :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup object_ a1 = jmethod object_ "getTransformsGroup" (\() -> (getTransformsGroup_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

getTransformsGroup_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup_super object_ a1 = (getTransformsGroup_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

getTransformsGroup_impl :: TransformInfoObjectConfig -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup_impl this group = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Started: " ++ group) this "getTransformsGroup()")
        viewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        let gROUP = (jget ((jio (TransformInfosData.getInstance))).gROUP)
        componentsNodeList <- (Document.getElementsByTagName ((jget (this).document)) gROUP)
        if ((componentsNodeList /= javaNull) && ((jio (NodeList.getLength componentsNodeList)) > 0)) then do
            componentsNode <- newIORef =<< (NodeList.item componentsNodeList 0)
            length <- (NodeList.getLength componentsNodeList)
            forM_ [0 .. length - 1] $ \index -> javaIteration (pure ()) $ do
                node <- (NodeList.item componentsNodeList index)
                attributes <- (Node.getAttributes node)
                let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem attributes gROUP)) :: Attr.Attr)
                value <- (Attr.getValue attrNode)
                when ((Prelude.fromEnum (Prelude.compare value group) - 1) == 0) $ do
                    jset componentsNode (node)
                    throwIO JavaBreak
            viewNodeVector <- (DomSearchHelper.getAllNodes (jget ((jio (TransformInfoData.getInstance))).nAME) (jio (Node.getChildNodes ((jget componentsNode)))))
            numberOfViews <- (BasicArrayList.size viewNodeVector)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Nodes: " ++ javaToString numberOfViews) this "getTransformsGroup()")
            size <- (BasicArrayList.size viewNodeVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let viewNode = (javaCast (jio (BasicArrayList.get viewNodeVector index)) :: Node.Node)
                Control.Monad.void (BasicArrayList.add viewVector (jio (TransformInfoDomNode.new_1 viewNode)))
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                if (componentsNodeList == javaNull) then do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Number Of Nodes: NULL" this "getTransformsGroup()")
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Number Of Nodes: 0" this "getTransformsGroup()")
        pure (viewVector)


-- throws Exception
-- Java overload of getTransformDomNodes with a different parameter count: give it a different name
getTransformDomNodes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes object_ = jmethod object_ "getTransformDomNodes" (\() -> (getTransformDomNodes_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getTransformDomNodes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes_super object_ = (getTransformDomNodes_impl (javaCast object_ :: TransformInfoObjectConfig))

getTransformDomNodes_impl :: TransformInfoObjectConfig -> IO (BasicArrayList.BasicArrayList)
getTransformDomNodes_impl this = do
        (TransformInfoObjectConfig.getTransformDomNodes this (jget ((jio (TransformInfosData.getInstance))).gROUP))


-- throws Exception
-- Java overload of getTransforms with a different parameter count: give it a different name
getTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransforms object_ = jmethod object_ "getTransforms" (\() -> (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransforms_super object_ = (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))

getTransforms_impl :: TransformInfoObjectConfig -> IO (BasicArrayList.BasicArrayList)
getTransforms_impl this = do
        (TransformInfoObjectConfig.getTransforms this (jget ((jio (TransformInfosData.getInstance))).nAME))


-- throws Exception
getGroupTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms object_ = jmethod object_ "getGroupTransforms" (\() -> (getGroupTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getGroupTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms_super object_ = (getGroupTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))

getGroupTransforms_impl :: TransformInfoObjectConfig -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms_impl this = do
        (TransformInfoObjectConfig.getTransforms this (jget ((jio (TransformInfosData.getInstance))).gROUP))


-- throws Exception
getParentTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getParentTransforms object_ = jmethod object_ "getParentTransforms" (\() -> (getParentTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getParentTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getParentTransforms_super object_ = (getParentTransforms_impl (javaCast object_ :: TransformInfoObjectConfig))

getParentTransforms_impl :: TransformInfoObjectConfig -> IO (BasicArrayList.BasicArrayList)
getParentTransforms_impl this = do
        (TransformInfoObjectConfig.getTransforms this (jget ((jio (TransformInfoData.getInstance))).pARENT))


getRootNode :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getRootNode object_ = jmethod object_ "getRootNode" (\() -> (getRootNode_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getRootNode_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getRootNode_super object_ = (getRootNode_impl (javaCast object_ :: TransformInfoObjectConfig))

getRootNode_impl :: TransformInfoObjectConfig -> IO (Node.Node)
getRootNode_impl this = do
        (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)


setOutputTypeName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutputTypeName object_ a1 = jmethod object_ "setOutputTypeName" (\() -> (setOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig))) () a1

setOutputTypeName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutputTypeName_super object_ a1 = (setOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig)) a1

setOutputTypeName_impl :: TransformInfoObjectConfig -> String -> IO (())
setOutputTypeName_impl this outputTypeName = do
        jset (this).outputTypeName (outputTypeName)
        pure ()


-- throws Exception
getOutputTypeName :: (JavaObjectClass this_) => this_ -> IO (String)
getOutputTypeName object_ = jmethod object_ "getOutputTypeName" (\() -> (getOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getOutputTypeName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOutputTypeName_super object_ = (getOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig))

getOutputTypeName_impl :: TransformInfoObjectConfig -> IO (String)
getOutputTypeName_impl this = do
        pure ((jget (this).outputTypeName))


-- throws Exception
getInputOutputTypeName :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeName object_ = jmethod object_ "getInputOutputTypeName" (\() -> (getInputOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getInputOutputTypeName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeName_super object_ = (getInputOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfig))

getInputOutputTypeName_impl :: TransformInfoObjectConfig -> IO (String)
getInputOutputTypeName_impl this = do
        node <- (DomSearchHelper.getNode (jget ((jio (InputOutputTypeData.getInstance))).nAME) (jio (Node.getChildNodes ((jio (TransformInfoObjectConfig.getRootNode this))))))
        (DomNodeHelper.getTextNodeValue node)


-- throws Exception
getInputOutputTypeFile :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeFile object_ = jmethod object_ "getInputOutputTypeFile" (\() -> (getInputOutputTypeFile_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getInputOutputTypeFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeFile_super object_ = (getInputOutputTypeFile_impl (javaCast object_ :: TransformInfoObjectConfig))

getInputOutputTypeFile_impl :: TransformInfoObjectConfig -> IO (String)
getInputOutputTypeFile_impl this = do
        node <- (DomSearchHelper.getNode (jget ((jio (InputOutputTypeData.getInstance))).fILE) (jio (Node.getChildNodes ((jio (TransformInfoObjectConfig.getRootNode this))))))
        (DomNodeHelper.getTextNodeValue node)


-- throws Exception
getImportUriPath :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath object_ = jmethod object_ "getImportUriPath" (\() -> (getImportUriPath_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

getImportUriPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath_super object_ = (getImportUriPath_impl (javaCast object_ :: TransformInfoObjectConfig))

getImportUriPath_impl :: TransformInfoObjectConfig -> IO (String)
getImportUriPath_impl this = do
        node <- (DomSearchHelper.getNode (jget ((jio (XslData.getInstance))).rOOT_IMPORT_URI) (jio (Node.getChildNodes ((jio (TransformInfoObjectConfig.getRootNode this))))))
        (DomNodeHelper.getTextNodeValue node)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TransformInfoObjectConfig))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TransformInfoObjectConfig))

toString_impl :: TransformInfoObjectConfig -> IO (String)
toString_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "DOM Document error" this (jget ((jget (this).commonStrings)).tOSTRING))
            pure (javaNull)
            ) $ do
            if ((jget (this).document) /= javaNull) then do
                javaReturn =<< (XmlDocumentHelper.toString (jget (this).document))
            else do
                javaReturn (javaNull)


