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
-- package org.allbinary.business.user.commerce.shipping
module ShippingMethodsFactory where

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
import qualified ShippingMethodsData -- same package or java.lang
import qualified ShippingMethodData -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicWeightShippingModuleView -- org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView
import qualified NoShippingModuleView -- org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView
import qualified ShippingInterface -- org.allbinary.business.user.commerce.shipping.modules.ShippingInterface
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data ShippingMethodsFactory = ShippingMethodsFactory
    { header_ :: JavaHeader
    , defaultShippingMethodInterface :: IORef (ShippingInterface.ShippingInterface)
    , document :: IORef (Document.Document)
    , shippingVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ShippingMethodsFactory where
    javaNull = javaNullRecord "ShippingMethodsFactory"

instance JavaEquals ShippingMethodsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethodsFactory where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethodsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sHIPPINGMETHODSFILEPATHSTRING = ""

sHIPPINGMETHODSFILENAME = "shippingMethods.xml"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShippingMethodsFactory
newRecord_ = do
    header_ <- newJavaHeader
    defaultShippingMethodInterface <- newIORef javaNull
    document <- newIORef javaNull
    shippingVector <- newIORef javaNull
    let this = ShippingMethodsFactory header_ defaultShippingMethodInterface document shippingVector
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getDefaultInstance" (\() -> getDefaultInstance_impl this)
    pure this

initFields_ :: ShippingMethodsFactory -> IO ()
initFields_ this = do
    jset this.defaultShippingMethodInterface (javaNull)
    jset this.document (javaNull)
    jset this.shippingVector (javaNull)
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        stringBuffer <- (StringMaker.new_)
        let sep = (jget ((jio (AbPathData.getInstance))).sEPARATOR)
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "generic")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "shipping")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        assignedValue <- (StringMaker.toString stringBuffer)
        sHIPPINGMETHODSFILEPATHSTRING <- pure (assignedValue)
        pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO ShippingMethodsFactory
new_2 abeClientInformation storeFrontInterface = do
    this <- newRecord_
    init_2 this abeClientInformation storeFrontInterface
    pure this

init_2 :: ShippingMethodsFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_2 this abeClientInformation storeFrontInterface = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        let sep = (jget ((jio (AbPathData.getInstance))).sEPARATOR)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFrontInterface)))
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer (ShippingMethodsFactory.sHIPPINGMETHODSFILEPATHSTRING))
        let abPath = (javaCast (jio (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) sHIPPINGMETHODSFILENAME)) :: AbPath.AbPath)
        data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectConfigData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance))).eNCRYPTED_EXTENSION)))) abPath)
        assignedValue <- (DomDocumentHelper.create_1 data_)
        jset (this).document (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).shippingVector (assignedValue)
        nodeList <- (Document.getElementsByTagName ((jget (this).document)) (ShippingMethodsData.nAME))
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            shippingMethodNodeChildren <- (Node.getChildNodes node)
            shippingMethodNameNode <- (DomSearchHelper.getNode (ShippingMethodData.nAME) shippingMethodNodeChildren)
            classNameNode <- (DomSearchHelper.getNode (DynamicObjectData.nAME) (jio (Node.getChildNodes shippingMethodNameNode)))
            shippingMethodClassName <- (DomNodeHelper.getTextNodeValue classNameNode)
            let shippingMethodInterface = (javaCast (jio (AbeFactory.getInstance_2 ((jio (AbeFactory.getInstance))) abeClientInformation shippingMethodClassName)) :: ShippingInterface.ShippingInterface)
            Control.Monad.void (BasicArrayList.add ((jget (this).shippingVector)) shippingMethodInterface)
            defaultShippingMethodNameNode <- (DomSearchHelper.getNode (ShippingMethodData.dEFAULT) (jio (Node.getChildNodes shippingMethodNameNode)))
            defaultShippingMethodNameNodeValue <- (DomNodeHelper.getTextNodeValue defaultShippingMethodNameNode)
            when ((defaultShippingMethodNameNodeValue /= javaNull) && ((Prelude.fromEnum (Prelude.compare defaultShippingMethodNameNodeValue (ShippingMethodData.dEFAULT)) - 1) == 0)) $ do
                jset (this).defaultShippingMethodInterface (shippingMethodInterface)
        when ((jio (BasicArrayList.size ((jget (this).shippingVector)))) < 1) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ShippingInterface.ShippingInterface) (BasicWeightShippingModuleView.new_))
            jset (this).defaultShippingMethodInterface (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget (this).shippingVector)) (jget (this).defaultShippingMethodInterface))
            Control.Monad.void (BasicArrayList.add ((jget (this).shippingVector)) (jio (NoShippingModuleView.new_)))
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ShippingMethodsFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: ShippingMethodsFactory))

getInstance_impl :: ShippingMethodsFactory -> IO (BasicArrayList.BasicArrayList)
getInstance_impl this = do
        pure ((jget (this).shippingVector))


getDefaultInstance :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefaultInstance object_ = jmethod object_ "getDefaultInstance" (\() -> (getDefaultInstance_impl (javaCast object_ :: ShippingMethodsFactory))) ()

getDefaultInstance_super :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefaultInstance_super object_ = (getDefaultInstance_impl (javaCast object_ :: ShippingMethodsFactory))

getDefaultInstance_impl :: ShippingMethodsFactory -> IO (ShippingInterface.ShippingInterface)
getDefaultInstance_impl this = do
        pure ((jget (this).defaultShippingMethodInterface))


