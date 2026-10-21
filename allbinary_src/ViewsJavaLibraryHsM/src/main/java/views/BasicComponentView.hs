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
module BasicComponentView where

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
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified BasicTransformer -- org.allbinary.logic.visual.transform.BasicTransformer
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformDocumentFactory
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements TransformInterface
data BasicComponentView = BasicComponentView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , transformDocumentInterface :: IORef (TransformDocumentInterface.TransformDocumentInterface)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , nO_TYPE :: IORef (Int)
    }

instance JavaNull BasicComponentView where
    javaNull = javaNullRecord "BasicComponentView"

instance JavaEquals BasicComponentView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicComponentView where
    (==) = jrecordEquals

instance JavaObjectClass BasicComponentView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicComponentView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    transformDocumentInterface <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    nO_TYPE <- newIORef 0
    let this = BasicComponentView header_ logUtil commonStrings abeClientInformation transformDocumentInterface transformInfoInterface nO_TYPE
    jregisterLevel header_ this
    TransformInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getTransformDocumentInterface" (\() -> getTransformDocumentInterface_impl this)
    jregisterMethod header_ "setTransformDocumentInterface" (\() -> setTransformDocumentInterface_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "setTransformInfoInterface" (\() -> setTransformInfoInterface_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "getDoc" (\() -> getDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: BasicComponentView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.transformDocumentInterface (javaNull)
    jset this.transformInfoInterface (javaNull)
    jset this.nO_TYPE (0)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO BasicComponentView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: BasicComponentView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (BasicComponentView.setTransformInfoInterface this transformInfoInterface)
        Control.Monad.void (BasicComponentView.setTransformDocumentInterface this (jio (TransformDocumentFactory.getInstance)))
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: BasicComponentView))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: BasicComponentView))

getTypeId_impl :: BasicComponentView -> IO (Int)
getTypeId_impl this = do
        pure ((jget (this).nO_TYPE))


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: BasicComponentView))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: BasicComponentView))

getTransformDocumentInterface_impl :: BasicComponentView -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = do
        pure ((jget (this).transformDocumentInterface))


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: BasicComponentView))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: BasicComponentView)) a1

setTransformDocumentInterface_impl :: BasicComponentView -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this transformDocumentInterface = do
        jset (this).transformDocumentInterface (transformDocumentInterface)
        pure ()


getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: BasicComponentView))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: BasicComponentView))

getTransformInfoInterface_impl :: BasicComponentView -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).transformInfoInterface))


setTransformInfoInterface :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (())
setTransformInfoInterface object_ a1 = jmethod object_ "setTransformInfoInterface" (\() -> (setTransformInfoInterface_impl (javaCast object_ :: BasicComponentView))) () a1

setTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (())
setTransformInfoInterface_super object_ a1 = (setTransformInfoInterface_impl (javaCast object_ :: BasicComponentView)) a1

setTransformInfoInterface_impl :: BasicComponentView -> TransformInfoInterface.TransformInfoInterface -> IO (())
setTransformInfoInterface_impl this transformInfoInterface = do
        jset (this).transformInfoInterface (transformInfoInterface)
        pure ()


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: BasicComponentView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: BasicComponentView))

toXmlDoc_impl :: BasicComponentView -> IO (Document.Document)
toXmlDoc_impl this = do
        (TransformDocumentInterface.getDoc ((jget (this).transformDocumentInterface)))


-- throws Exception
getDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc object_ = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: BasicComponentView))) ()

getDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc_super object_ = (getDoc_impl (javaCast object_ :: BasicComponentView))

getDoc_impl :: BasicComponentView -> IO (Document.Document)
getDoc_impl this = do
        document <- (TransformInfoInterface.getDataDocument ((jio (BasicComponentView.getTransformInfoInterface this))))
        dataNode <- (TransformDocumentInterface.importNode ((jio (TransformDocumentInterface.getDoc ((jio (BasicComponentView.getTransformDocumentInterface this)))))) (jio (Document.getFirstChild document)) True)
        when (dataNode /= javaNull) $ do
            Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jio (BasicComponentView.getTransformDocumentInterface this)))))) dataNode)
        (TransformDocumentInterface.getDoc ((jio (BasicComponentView.getTransformDocumentInterface this))))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: BasicComponentView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: BasicComponentView))

view_impl :: BasicComponentView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            success <- (XmlDocumentHelper.toString (jio (BasicComponentView.getDoc this)))
            result <- (BasicTransformer.translate ((jio (BasicTransformer.new_2 (jget (this).abeClientInformation) (jio (BasicComponentView.getTransformInfoInterface this))))) success)
            pure (result)


