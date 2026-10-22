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
-- package views
module HttpComponentView (module HttpComponentView, module TransformInfoHttpComposite) where

import TransformInfoHttpComposite hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, getTransformDocumentInterface, getTransformDocumentInterface_super, getTransformDocumentInterface_impl, setTransformDocumentInterface, setTransformDocumentInterface_super, setTransformDocumentInterface_impl, addDomNodeInterface, addDomNodeInterface_super, addDomNodeInterface_impl, toXmlDoc, toXmlDoc_super, toXmlDoc_impl, getDoc, getDoc_super, getDoc_impl, view, view_super, view_impl, logUtil, abeClientInformation, domNodeInterfaceVector, transformDocumentInterface, nO_TYPE)
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
import qualified CommonStrings -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified BasicTransformer -- org.allbinary.logic.visual.transform.BasicTransformer
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformHttpRequestDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory
import qualified TransformInfoHttpComposite -- org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements TransformInterface
data HttpComponentView = HttpComponentView
    { header_ :: JavaHeader
    , base :: TransformInfoHttpComposite.TransformInfoHttpComposite
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , domNodeInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , transformDocumentInterface :: IORef (TransformDocumentInterface.TransformDocumentInterface)
    , nO_TYPE :: IORef (Int)
    }

instance JavaNull HttpComponentView where
    javaNull = javaNullRecord "HttpComponentView"

instance JavaEquals HttpComponentView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpComponentView where
    (==) = jrecordEquals

instance JavaObjectClass HttpComponentView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HttpComponentView
newRecord_ = do
    base <- TransformInfoHttpComposite.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    domNodeInterfaceVector <- newIORef javaNull
    transformDocumentInterface <- newIORef javaNull
    nO_TYPE <- newIORef 0
    let this = HttpComponentView header_ base logUtil abeClientInformation domNodeInterfaceVector transformDocumentInterface nO_TYPE
    jregisterLevel header_ this
    TransformInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getTransformDocumentInterface" (\() -> getTransformDocumentInterface_impl this)
    jregisterMethod header_ "setTransformDocumentInterface" (\() -> setTransformDocumentInterface_impl this)
    jregisterMethod header_ "addDomNodeInterface" (\() -> addDomNodeInterface_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "getDoc" (\() -> getDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: HttpComponentView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.domNodeInterfaceVector (javaNull)
    jset this.transformDocumentInterface (javaNull)
    jset this.nO_TYPE (0)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO HttpComponentView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: HttpComponentView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TransformInfoHttpComposite.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).domNodeInterfaceVector (assignedValue)
        Control.Monad.void (HttpComponentView.setTransformDocumentInterface this (jio (TransformHttpRequestDocumentFactory.getInstance (jio (TransformInfoHttpComposite.getPageContext this)) (jio (TransformInfoHttpComposite.getWeblisketSession this)))))
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: HttpComponentView))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: HttpComponentView))

getTypeId_impl :: HttpComponentView -> IO (Int)
getTypeId_impl this = do
        pure ((jget (this).nO_TYPE))


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: HttpComponentView))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: HttpComponentView))

getTransformDocumentInterface_impl :: HttpComponentView -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = do
        pure ((jget (this).transformDocumentInterface))


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: HttpComponentView))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: HttpComponentView)) a1

setTransformDocumentInterface_impl :: HttpComponentView -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this transformDocumentInterface = do
        jset (this).transformDocumentInterface (transformDocumentInterface)
        pure ()


addDomNodeInterface :: (JavaObjectClass this_) => this_ -> DomNodeInterface.DomNodeInterface -> IO (())
addDomNodeInterface object_ a1 = jmethod object_ "addDomNodeInterface" (\() -> (addDomNodeInterface_impl (javaCast object_ :: HttpComponentView))) () a1

addDomNodeInterface_super :: (JavaObjectClass this_) => this_ -> DomNodeInterface.DomNodeInterface -> IO (())
addDomNodeInterface_super object_ a1 = (addDomNodeInterface_impl (javaCast object_ :: HttpComponentView)) a1

addDomNodeInterface_impl :: HttpComponentView -> DomNodeInterface.DomNodeInterface -> IO (())
addDomNodeInterface_impl this domNodeInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).domNodeInterfaceVector)) domNodeInterface)
        pure ()


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: HttpComponentView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: HttpComponentView))

toXmlDoc_impl :: HttpComponentView -> IO (Document.Document)
toXmlDoc_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "toXmlDoc()" e)
            javaThrow (e)
            ) $ do
            size <- (BasicArrayList.size ((jget (this).domNodeInterfaceVector)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let domNodeInterface = (javaCast (jio (BasicArrayList.get ((jget (this).domNodeInterfaceVector)) index)) :: DomNodeInterface.DomNodeInterface)
                Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jget (this).transformDocumentInterface))))) (jio (DomNodeInterface.toXmlNode domNodeInterface (jio (TransformDocumentInterface.getDoc ((jget (this).transformDocumentInterface)))))))
            (TransformDocumentInterface.getDoc ((jio (HttpComponentView.getTransformDocumentInterface this))))


-- throws Exception
getDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc object_ = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: HttpComponentView))) ()

getDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc_super object_ = (getDoc_impl (javaCast object_ :: HttpComponentView))

getDoc_impl :: HttpComponentView -> IO (Document.Document)
getDoc_impl this = do
        document <- (TransformInfoInterface.getDataDocument ((jio (TransformInfoHttpComposite.getTransformInfoInterface this))))
        node <- (DomNodeHelper.getFirstChildElement (javaCast document))
        when (node /= javaNull) $ do
            dataNode <- (TransformDocumentInterface.importNode ((jio (TransformDocumentInterface.getDoc ((jio (HttpComponentView.getTransformDocumentInterface this)))))) node True)
            when (dataNode /= javaNull) $ do
                Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jio (HttpComponentView.getTransformDocumentInterface this)))))) dataNode)
        (TransformDocumentInterface.getDoc ((jio (HttpComponentView.getTransformDocumentInterface this))))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: HttpComponentView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: HttpComponentView))

view_impl :: HttpComponentView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (HttpComponentView.toXmlDoc this)
            success <- (XmlDocumentHelper.toString (jio (HttpComponentView.getDoc this)))
            result <- (BasicTransformer.translate ((jio (BasicTransformer.new_2 (jget (this).abeClientInformation) (jio (TransformInfoHttpComposite.getTransformInfoInterface this))))) success)
            pure (result)


