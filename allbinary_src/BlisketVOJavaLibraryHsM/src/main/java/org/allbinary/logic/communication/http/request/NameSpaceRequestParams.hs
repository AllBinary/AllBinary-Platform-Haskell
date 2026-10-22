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
-- package org.allbinary.logic.communication.http.request
module NameSpaceRequestParams (module NameSpaceRequestParams, module RequestParams) where

import RequestParams hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createPackageNode, createPackageNode_super, createPackageNode_impl, createPackageMultiNode, createPackageMultiNode_super, createPackageMultiNode_impl, getRootNode, getRootNode_super, getRootNode_impl, addNewProperties, addNewProperties_super, addNewProperties_impl, isElementValueTextNodeEqual, isElementValueTextNodeEqual_super, isElementValueTextNodeEqual_impl, isElementValueTextNodeUnique, isElementValueTextNodeUnique_super, isElementValueTextNodeUnique_impl, addChildren, addChildren_super, addChildren_impl, addNameSpace, addNameSpace_super, addNameSpace_impl, toHashMap, toHashMap_super, toHashMap_impl, logUtil)
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
import qualified Any -- same package or java.lang
import qualified NameSpaceRequestParamData -- same package or java.lang
import qualified NameSpaceRequestParam -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified RequestParams

data NameSpaceRequestParams = NameSpaceRequestParams
    { header_ :: JavaHeader
    , base :: RequestParams.RequestParams
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NameSpaceRequestParams where
    javaNull = javaNullRecord "NameSpaceRequestParams"

instance JavaEquals NameSpaceRequestParams where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NameSpaceRequestParams where
    (==) = jrecordEquals

instance JavaObjectClass NameSpaceRequestParams where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NameSpaceRequestParams
newRecord_ = do
    base <- RequestParams.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = NameSpaceRequestParams header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createPackageNode" (\() -> createPackageNode_impl this)
    jregisterMethod header_ "createPackageMultiNode" (\() -> createPackageMultiNode_impl this)
    jregisterMethod header_ "getRootNode" (\() -> getRootNode_impl this)
    jregisterMethod header_ "addNewProperties" (\() -> addNewProperties_impl this)
    jregisterMethod header_ "isElementValueTextNodeEqual" (\() -> isElementValueTextNodeEqual_impl this)
    jregisterMethod header_ "isElementValueTextNodeUnique" (\() -> isElementValueTextNodeUnique_impl this)
    jregisterMethod header_ "addChildren" (\() -> addChildren_impl this)
    jregisterMethod header_ "addNameSpace" (\() -> addNameSpace_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: NameSpaceRequestParams -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO NameSpaceRequestParams
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NameSpaceRequestParams -> IO ()
init_ this = do
        RequestParams.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Constructing empty" this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO NameSpaceRequestParams
new_1 httpServletRequest = do
    this <- newRecord_
    init_1 this httpServletRequest
    pure this

init_1 :: NameSpaceRequestParams -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this httpServletRequest = do
        RequestParams.init_1 this.base (httpServletRequest)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Constructing from HttpServletRequest" this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: PageContext.PageContext -> IO NameSpaceRequestParams
new_1 pageContext = do
    this <- newRecord_
    init_1 this pageContext
    pure this

init_1 :: NameSpaceRequestParams -> PageContext.PageContext -> IO ()
init_1 this pageContext = do
        RequestParams.init_1 this.base (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Constructing from PageContext" this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
createPackageNode :: (JavaObjectClass this_) => this_ -> Document.Document -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageNode object_ a1 a2 a3 = jmethod object_ "createPackageNode" (\() -> (createPackageNode_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3

createPackageNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageNode_super object_ a1 a2 a3 = (createPackageNode_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3

createPackageNode_impl :: NameSpaceRequestParams -> Document.Document -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageNode_impl this document packageName packagePropertiesHashMap = do
        node <- (Document.createElement document packageName)
        propertyKeySet <- (HashMap.keySet packagePropertiesHashMap)
        propertyKeySetArray <- (Set.toArray propertyKeySet)
        let size = (jlength propertyKeySetArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let propertyName = (javaCast (jindex propertyKeySetArray (index)) :: String)
            let propertyValue = (javaCast (jio (HashMap.get packagePropertiesHashMap propertyName)) :: String)
            propertyNode <- (ModDomHelper.createTextNode document propertyName propertyValue)
            Control.Monad.void (Node.appendChild node propertyNode)
        pure (node)


-- throws Exception
createPackageMultiNode :: (JavaObjectClass this_) => this_ -> Document.Document -> NameSpaceRequestParam.NameSpaceRequestParam -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageMultiNode object_ a1 a2 a3 a4 = jmethod object_ "createPackageMultiNode" (\() -> (createPackageMultiNode_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3 a4

createPackageMultiNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> NameSpaceRequestParam.NameSpaceRequestParam -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageMultiNode_super object_ a1 a2 a3 a4 = (createPackageMultiNode_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3 a4

createPackageMultiNode_impl :: NameSpaceRequestParams -> Document.Document -> NameSpaceRequestParam.NameSpaceRequestParam -> String -> HashMap.HashMap -> IO (Node.Node)
createPackageMultiNode_impl this document nameSpaceRequestParam packageName packagePropertiesHashMap = do
        let beginIndex = (jstringIndexOf packageName '[' 0)
        let indexValue = (Prelude.take ((((Prelude.length packageName) - 1)) - ((beginIndex + 1))) (Prelude.drop ((beginIndex + 1)) packageName))
        let multiElementPackage = (Prelude.take ((beginIndex) - (0)) (Prelude.drop (0) packageName))
        selectedValue <- newIORef =<< (NameSpaceRequestParam.getValue nameSpaceRequestParam)
        let propertyValue = (javaCast (jio (HashMap.get packagePropertiesHashMap (DomData.vALUE))) :: String)
        when ((Prelude.fromEnum (Prelude.compare propertyValue (NameSpaceRequestParamData.vALUE)) - 1) /= 0) $ do
            jset selectedValue (propertyValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((("\nAppending Multinode Element: " ++ multiElementPackage) ++ "[") ++ indexValue) ++ "] ") ++ (jget selectedValue)) this "createPackageMultiNode")
        nextNode <- (ModDomHelper.createNameValueNodes_3 document multiElementPackage (jget selectedValue))
        indexNode <- (ModDomHelper.createTextNode document (DomData.iNDEX) indexValue)
        Control.Monad.void (Node.appendChild nextNode indexNode)
        pure (nextNode)


-- throws Exception
getRootNode :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> Document.Document -> IO (Node.Node)
getRootNode object_ a1 a2 a3 = jmethod object_ "getRootNode" (\() -> (getRootNode_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3

getRootNode_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> Document.Document -> IO (Node.Node)
getRootNode_super object_ a1 a2 a3 = (getRootNode_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3

getRootNode_impl :: NameSpaceRequestParams -> String -> HashMap.HashMap -> Document.Document -> IO (Node.Node)
getRootNode_impl this rootElementPackage packagePropertiesHashMap document = do
    javaCatchReturn $ do
        rootNode <- (DomSearchHelper.getNodeNoThrow rootElementPackage (jio (Document.getChildNodes document)))
        if (rootNode == javaNull) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((("\nAppending Document Root: " ++ "\nElementName: ") ++ rootElementPackage) ++ "\nProperties: ") ++ (jio (HashMap.toString packagePropertiesHashMap))) this "getRootNode")
            node <- (NameSpaceRequestParams.createPackageNode this document rootElementPackage packagePropertiesHashMap)
            Control.Monad.void (Document.appendChild document node)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nAppended Document Created: " ++ (jio (XmlDocumentHelper.toString document))) this "getRootNode")
            javaReturn (node)
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "\nUsing Existing Root Node" this "getRootNode")
            javaReturn (rootNode)


-- throws Exception
addNewProperties :: (JavaObjectClass this_) => this_ -> Document.Document -> Node.Node -> HashMap.HashMap -> IO (Node.Node)
addNewProperties object_ a1 a2 a3 = jmethod object_ "addNewProperties" (\() -> (addNewProperties_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3

addNewProperties_super :: (JavaObjectClass this_) => this_ -> Document.Document -> Node.Node -> HashMap.HashMap -> IO (Node.Node)
addNewProperties_super object_ a1 a2 a3 = (addNewProperties_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3

addNewProperties_impl :: NameSpaceRequestParams -> Document.Document -> Node.Node -> HashMap.HashMap -> IO (Node.Node)
addNewProperties_impl this document node nextPackagePropertiesHashMap = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "\nAdding Any New Properties: "))) (jio (HashMap.toString nextPackagePropertiesHashMap))))) "\nto node: "))) (jio (Node.getNodeName node))))))) this "addNewProperties")
        propertyNameSet <- (HashMap.keySet nextPackagePropertiesHashMap)
        propertyNameSetArray <- (Set.toArray propertyNameSet)
        let size = (jlength propertyNameSetArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextPropertyName = (javaCast (jindex propertyNameSetArray (index)) :: String)
            propertyValue <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (javaCast (jio (HashMap.get nextPackagePropertiesHashMap nextPropertyName)) :: String))
            valueNode <- (DomSearchHelper.getNodeNoThrow nextPropertyName (jio (Node.getChildNodes node)))
            if (valueNode /= javaNull) then do
                existingElementNodeTextNodeValue <- (DomNodeHelper.getTextNodeValue valueNode)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((((((("\nIf property: \"" ++ nextPropertyName) ++ " is the same as:\n") ++ "Node: ") ++ javaToString (jio (Node.getNodeName node))) ++ " then: ") ++ propertyValue) ++ "==") ++ existingElementNodeTextNodeValue) this "addNewProperties")
                when ((Prelude.fromEnum (Prelude.compare propertyValue existingElementNodeTextNodeValue) - 1) /= 0) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "At least one Property from NameSpaceRequest Package was different from Node" this "addNewProperties")
                    javaThrow ((JavaException "Exception" "Property Modifications Should Not Occur"))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Adding a new Property: " ++ nextPropertyName) ++ "=") ++ propertyValue) this "addNewProperties")
                newPropertyNode <- (ModDomHelper.createTextNode document nextPropertyName propertyValue)
                Control.Monad.void (Node.appendChild node newPropertyNode)
        pure (node)


-- throws Exception
isElementValueTextNodeEqual :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> Node.Node -> IO (Bool)
isElementValueTextNodeEqual object_ a1 a2 = jmethod object_ "isElementValueTextNodeEqual" (\() -> (isElementValueTextNodeEqual_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2

isElementValueTextNodeEqual_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> Node.Node -> IO (Bool)
isElementValueTextNodeEqual_super object_ a1 a2 = (isElementValueTextNodeEqual_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2

isElementValueTextNodeEqual_impl :: NameSpaceRequestParams -> HashMap.HashMap -> Node.Node -> IO (Bool)
isElementValueTextNodeEqual_impl this nextPackagePropertiesHashMap node = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("\nComparing the value property in: " ++ (jio (HashMap.toString nextPackagePropertiesHashMap))) ++ "\nto node child leaves of node: ") ++ javaToString (jio (Node.getNodeName node))) this "isElementValueTextNodeEqual")
        let propertyValue = (javaCast (jio (HashMap.get nextPackagePropertiesHashMap (DomData.vALUE))) :: String)
        valueNode <- (DomSearchHelper.getNodeNoThrow (DomData.vALUE) (jio (Node.getChildNodes node)))
        if (valueNode /= javaNull) then do
            existingElementNodeTextNodeValue <- (DomNodeHelper.getTextNodeValue valueNode)
            when ((Prelude.fromEnum (Prelude.compare propertyValue existingElementNodeTextNodeValue) - 1) == 0) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Value Node is the same" this "isElementValueTextNodeEqual")
                javaReturn (True)
        else do
            javaReturn (True)
        pure (False)


-- throws Exception
isElementValueTextNodeUnique :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> IO (Int)
isElementValueTextNodeUnique object_ a1 a2 = jmethod object_ "isElementValueTextNodeUnique" (\() -> (isElementValueTextNodeUnique_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2

isElementValueTextNodeUnique_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> IO (Int)
isElementValueTextNodeUnique_super object_ a1 a2 = (isElementValueTextNodeUnique_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2

isElementValueTextNodeUnique_impl :: NameSpaceRequestParams -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> IO (Int)
isElementValueTextNodeUnique_impl this nextPackagePropertiesHashMap elementNodeVector = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("\nComparing Properties of: " ++ javaToString (jio (BasicArrayList.size elementNodeVector))) ++ " Nodes") this "isElementValueTextNodeUnique")
        size <- (BasicArrayList.size elementNodeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let existingElementNode = (javaCast (jio (BasicArrayList.get elementNodeVector index)) :: Node.Node)
            when (jio (NameSpaceRequestParams.isElementValueTextNodeEqual this nextPackagePropertiesHashMap existingElementNode)) $ do
                javaReturn (index)
        pure ((Prelude.negate 1))


-- throws Exception
addChildren :: (JavaObjectClass this_) => this_ -> Document.Document -> Node.Node -> NameSpaceRequestParam.NameSpaceRequestParam -> IO (Document.Document)
addChildren object_ a1 a2 a3 = jmethod object_ "addChildren" (\() -> (addChildren_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3

addChildren_super :: (JavaObjectClass this_) => this_ -> Document.Document -> Node.Node -> NameSpaceRequestParam.NameSpaceRequestParam -> IO (Document.Document)
addChildren_super object_ a1 a2 a3 = (addChildren_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3

addChildren_impl :: NameSpaceRequestParams -> Document.Document -> Node.Node -> NameSpaceRequestParam.NameSpaceRequestParam -> IO (Document.Document)
addChildren_impl this document rootNode nameSpaceRequestParam = do
        node <- newIORef (rootNode)
        packageVector <- (NameSpaceRequestParam.getPackages nameSpaceRequestParam)
        size <- (BasicArrayList.size packageVector)
        forM_ [1 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextPackageName = (javaCast (jio (BasicArrayList.get packageVector index)) :: String)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "\nTrying to Add Child to Node: "))) (jio (Node.getNodeName ((jget node))))))) "\nwith new PackageName: "))) nextPackageName))))) this "addChildren")
            nextPackagePropertiesHashMap <- (NameSpaceRequestParam.getPackageProperties nameSpaceRequestParam index)
            elementNodeVector <- (DomSearchHelper.getAllNodesNoThrow nextPackageName (jio (Node.getChildNodes ((jget node)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("\nDocument Contains " ++ javaToString (jio (BasicArrayList.size elementNodeVector))) ++ " Node(s) With Same Name") this "addChildren")
            isElementValueTextNodeUniqueIndex <- (NameSpaceRequestParams.isElementValueTextNodeUnique this nextPackagePropertiesHashMap elementNodeVector)
            if (((((jio (BasicArrayList.size elementNodeVector)) == 0) || (isElementValueTextNodeUniqueIndex == (Prelude.negate 1)))) && (Prelude.not (Data.List.isSuffixOf (jget ((jio (CommonSeps.getInstance))).bRACKET_CLOSE) nextPackageName))) then do
                nextNode <- (NameSpaceRequestParams.createPackageNode this document nextPackageName nextPackagePropertiesHashMap)
                Control.Monad.void (Node.appendChild ((jget node)) nextNode)
                jset node (nextNode)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nAppended Package: " ++ javaToString (jio (Node.getNodeName ((jget node))))) this "addChildren")
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nAppended Document Created: " ++ (jio (XmlDocumentHelper.toString document))) this "addChildren")
            else if (Data.List.isSuffixOf (jget ((jio (CommonSeps.getInstance))).bRACKET_CLOSE) nextPackageName) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Package is MultiNode: just append" this "addChildren")
                nextNode <- (NameSpaceRequestParams.createPackageMultiNode this document nameSpaceRequestParam nextPackageName nextPackagePropertiesHashMap)
                Control.Monad.void (Node.appendChild ((jget node)) nextNode)
                jset node (nextNode)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nAppended Multinode Element: " ++ (jio (XmlDocumentHelper.toString document))) this "addChildren")
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Value Node already exists: Now compare (properties to leaf nodes)" this "addChildren")
                let nodeNameDuplicateNode = (javaCast (jio (BasicArrayList.get elementNodeVector isElementValueTextNodeUniqueIndex)) :: Node.Node)
                assignedValue <- (NameSpaceRequestParams.addNewProperties this document nodeNameDuplicateNode nextPackagePropertiesHashMap)
                jset node (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "\nDuplicate Node Found: Moving to next child ^" this "addChildre")
        pure (document)


-- throws Exception
addNameSpace :: (JavaObjectClass this_) => this_ -> String -> String -> Document.Document -> IO (Document.Document)
addNameSpace object_ a1 a2 a3 = jmethod object_ "addNameSpace" (\() -> (addNameSpace_impl (javaCast object_ :: NameSpaceRequestParams))) () a1 a2 a3

addNameSpace_super :: (JavaObjectClass this_) => this_ -> String -> String -> Document.Document -> IO (Document.Document)
addNameSpace_super object_ a1 a2 a3 = (addNameSpace_impl (javaCast object_ :: NameSpaceRequestParams)) a1 a2 a3

addNameSpace_impl :: NameSpaceRequestParams -> String -> String -> Document.Document -> IO (Document.Document)
addNameSpace_impl this key value document = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "NameSpace key: "))) key))) " Value: "))) value))))) this "addNameSpace")
        nameSpaceRequestParam <- (NameSpaceRequestParam.new_2 key value)
        packageVector <- (NameSpaceRequestParam.getPackages nameSpaceRequestParam)
        size <- (BasicArrayList.size packageVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let packageName = (javaCast (jio (BasicArrayList.get packageVector index)) :: String)
            packagePropertiesHashMap <- (NameSpaceRequestParam.getPackageProperties nameSpaceRequestParam (jio (BasicArrayList.indexOf packageVector packageName)))
            rootNode <- (NameSpaceRequestParams.getRootNode this packageName packagePropertiesHashMap document)
            when (index < (size - 1)) $ do
                javaReturn =<< (NameSpaceRequestParams.addChildren this document (javaCast rootNode :: Node.Node) nameSpaceRequestParam)
        pure (document)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: NameSpaceRequestParams))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: NameSpaceRequestParams))

toHashMap_impl :: NameSpaceRequestParams -> IO (HashMap.HashMap)
toHashMap_impl this = do
        document <- newIORef =<< (DomDocumentHelper.create)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        keys <- (Map.keySet ((jio (RequestParams.getMap this))))
        keyArray <- (Set.toArray keys)
        let keySize = (jlength keyArray)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("NameSpace Request Size: " ++ javaToString (jio (Set.size keys))) this "toHashMap")
        forM_ [0 .. keySize - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex keyArray (i)) :: String)
            anyType <- (Map.get ((jio (RequestParams.getMap this))) key)
            let className = (javaCast (jio (Class.getName ((jio (jobjectGetClass anyType))))) :: String)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Request Param Class: " ++ className) this "toHashMap")
            if (javaInstanceOf (jio (Map.get ((jio (RequestParams.getMap this))) key)) "String") then do
                let value = (javaCast (jio (Map.get ((jio (RequestParams.getMap this))) key)) :: String)
                if ((jstringIndexOf key (NameSpaceRequestParamData.nAME) 0) < 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Not NameSpace key: " ++ key) ++ " Value: ") ++ value) this "toHashMap()")
                    Control.Monad.void (HashMap.put hashMap (jio (jnewString key)) (jio (jnewString value)))
                else do
                    assignedValue <- (NameSpaceRequestParams.addNameSpace this (jio (jnewString key)) (jio (jnewString value)) (jget document))
                    jset document (assignedValue)
            else when (javaInstanceOf (jio (Map.get ((jio (RequestParams.getMap this))) key)) "") $ do
                let values = (javaCast (jio (Map.get ((jio (RequestParams.getMap this))) key)) :: JavaArray (String))
                if ((jstringIndexOf key (NameSpaceRequestParamData.nAME) 0) < 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Not NameSpace key: " ++ key) ++ " Value: ") ++ javaToString (jindex values (0))) this "toHashMap()")
                    Control.Monad.void (HashMap.put hashMap (jio (jnewString key)) (jio (jnewString (jindex values (0)))))
                else do
                    assignedValue <- (NameSpaceRequestParams.addNameSpace this (jio (jnewString key)) (jio (jnewString (jindex values (0)))) (jget document))
                    jset document (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((("NameSpaceRequestParams: " ++ (jio (Map.toString ((jio (RequestParams.getMap this)))))) ++ "\ntoHashMap(): ") ++ (jio (HashMap.toString hashMap))) ++ "\nDocument Created: ") ++ (jio (XmlDocumentHelper.toString (jget document)))) this "toHashMap()")
        Control.Monad.void (HashMap.put hashMap (NameSpaceRequestParamData.dOCUMENT) (jget document))
        pure (hashMap)


