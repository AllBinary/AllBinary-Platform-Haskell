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
-- package org.allbinary.business.user.commerce.money.tax.modules
module SimpleStateTaxModule where

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
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified TaxData -- org.allbinary.business.user.commerce.money.tax.components.TaxData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified TaxModuleInterface

-- implements TaxModuleInterface
data SimpleStateTaxModule = SimpleStateTaxModule
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , streetAddress :: IORef (StreetAddress.StreetAddress)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , aLL :: IORef (String)
    , sTATETAXPATH :: IORef (String)
    , sTATETAXFILE :: IORef (String)
    , document :: IORef (Document.Document)
    }

instance JavaNull SimpleStateTaxModule where
    javaNull = javaNullRecord "SimpleStateTaxModule"

instance JavaEquals SimpleStateTaxModule where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleStateTaxModule where
    (==) = jrecordEquals

instance JavaObjectClass SimpleStateTaxModule where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleStateTaxModule
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    streetAddress <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    aLL <- newIORef ""
    sTATETAXPATH <- newIORef ""
    sTATETAXFILE <- newIORef ""
    document <- newIORef javaNull
    let this = SimpleStateTaxModule header_ logUtil commonStrings streetAddress storeFrontInterface aLL sTATETAXPATH sTATETAXFILE document
    jregisterLevel header_ this
    TaxModuleInterface.registerInterface_ header_
    jregisterMethod header_ "getTaxRate" (\() -> getTaxRate_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: SimpleStateTaxModule -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.streetAddress (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.aLL ((jget ((jio (CommonPhoneStrings.getInstance))).sTAR))
    jset this.sTATETAXPATH ("/generic/taxes/")
    jset this.sTATETAXFILE ("stateTaxation.xml")
    jset this.document (javaNull)
    pure ()

new_ :: IO SimpleStateTaxModule
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SimpleStateTaxModule -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getTaxRate :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate object_ a1 a2 = jmethod object_ "getTaxRate" (\() -> (getTaxRate_impl (javaCast object_ :: SimpleStateTaxModule))) () a1 a2

getTaxRate_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate_super object_ a1 a2 = (getTaxRate_impl (javaCast object_ :: SimpleStateTaxModule)) a1 a2

getTaxRate_impl :: SimpleStateTaxModule -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate_impl this streetAddress storeFrontInterface = do
    javaCatchReturn $ do
        jset (this).streetAddress (streetAddress)
        jset (this).storeFrontInterface (storeFrontInterface)
        fileAbPath <- (AbPath.new_2 ((javaToString ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) ++ (jio (StoreFrontInterface.getName ((jget (this).storeFrontInterface))))) ++ (jget (this).sTATETAXPATH)) (jget (this).sTATETAXFILE))
        data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectConfigData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance))).eNCRYPTED_EXTENSION)))) fileAbPath)
        assignedValue <- (DomDocumentHelper.create data_)
        jset (this).document (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAX))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Tax Doc: " ++ (jio (XmlDocumentHelper.toString (jget (this).document)))) this "getTaxRate")
        state <- newIORef =<< (StreetAddress.getState ((jget (this).streetAddress)))
        country <- (StreetAddress.getCountry ((jget (this).streetAddress)))
        jset state ((Prelude.map Data.Char.toUpper (jget state)))
        nodeList <- (Document.getElementsByTagName ((jget (this).document)) (TaxData.nAME))
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            taxNodeChildren <- (Node.getChildNodes node)
            streetAddressNode <- (DomSearchHelper.getNode (StreetAddressData.nAME) taxNodeChildren)
            taxableStreetAddress <- (StreetAddress.new_1 streetAddressNode)
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when (((Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil country))) && (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (StreetAddress.getCountry taxableStreetAddress)))))) && ((Prelude.fromEnum (Prelude.compare country (jio (StreetAddress.getCountry taxableStreetAddress))) - 1) == 0)) $ do
                when ((((jget state) /= javaNull) && ((jio (StreetAddress.getState taxableStreetAddress)) /= javaNull)) && ((Prelude.fromEnum (Prelude.compare (jget state) (jio (StreetAddress.getState taxableStreetAddress))) - 1) == 0)) $ do
                    rateNode <- (DomSearchHelper.getNode (TaxData.rATE) taxNodeChildren)
                    taxRate <- (DomNodeHelper.getTextNodeValue rateNode)
                    let taxRateFloat = ((Prelude.realToFrac taxRate) * 0.01)
                    javaReturn (taxRateFloat)
        pure (0)


isValid :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: SimpleStateTaxModule))) () a1 a2

isValid_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: SimpleStateTaxModule)) a1 a2

isValid_impl :: SimpleStateTaxModule -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid_impl this streetAddress storeFrontInterface = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            jset (this).streetAddress (streetAddress)
            jset (this).storeFrontInterface (storeFrontInterface)
            fileAbPath <- (AbPath.new_2 ((javaToString ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) ++ (jio (StoreFrontInterface.getName ((jget (this).storeFrontInterface))))) ++ (jget (this).sTATETAXPATH)) (jget (this).sTATETAXFILE))
            data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectConfigData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance))).eNCRYPTED_EXTENSION)))) fileAbPath)
            assignedValue <- (DomDocumentHelper.create data_)
            jset (this).document (assignedValue)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAX))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Tax Doc: " ++ (jio (XmlDocumentHelper.toString (jget (this).document)))) this (jget ((jget (this).commonStrings)).iS_VALID))
            country <- (StreetAddress.getCountry ((jget (this).streetAddress)))
            rootNode <- (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)
            nodeList <- (Document.getElementsByTagName ((jget (this).document)) (TaxData.nAME))
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                node <- (NodeList.item nodeList index)
                taxNodeChildren <- (Node.getChildNodes node)
                streetAddressNode <- (DomSearchHelper.getNode (StreetAddressData.nAME) taxNodeChildren)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAX))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "StreetAddress Node: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (Node.getNodeName streetAddressNode)))
                    Control.Monad.void (StringMaker.append stringBuffer " Value: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (Node.getNodeValue streetAddressNode)))
                    Control.Monad.void (StringMaker.append stringBuffer " Number Of Children: ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Node.getLength ((jio (Node.getChildNodes streetAddressNode))))))))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).iS_VALID))
                taxableStreetAddress <- (StreetAddress.new_1 streetAddressNode)
                stringValidationUtil <- (StringValidationUtil.getInstance)
                when (((Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil country))) && (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (StreetAddress.getCountry taxableStreetAddress)))))) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCountry taxableStreetAddress)) (jget (this).aLL)) - 1) == 0)) $ do
                    javaReturn (True)
                when (((Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil country))) && (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (StreetAddress.getCountry taxableStreetAddress)))))) && ((Prelude.fromEnum (Prelude.compare country (jio (StreetAddress.getCountry taxableStreetAddress))) - 1) == 0)) $ do
                    state <- (StreetAddress.getState ((jget (this).streetAddress)))
                    when (state /= javaNull) $ do
                        javaReturn (True)
            pure (False)


