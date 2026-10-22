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
-- package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
module LogoValidation (module LogoValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, processLogoFile, processLogoFile_super, processLogoFile_impl, logUtil, logoFileItem, logoAbPath, logoFile, isFile)
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
import qualified LogoData -- same package or java.lang
import qualified LogoImageFileUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified HttpRequestUtil -- org.allbinary.logic.communication.http.request.HttpRequestUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified FileData -- org.allbinary.logic.io.file.FileData
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data LogoValidation = LogoValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , logoFileItem :: IORef (FileItem.FileItem)
    , logoAbPath :: IORef (AbPath.AbPath)
    , logoFile :: IORef (String)
    , isFile :: IORef (Bool)
    }

instance JavaNull LogoValidation where
    javaNull = javaNullRecord "LogoValidation"

instance JavaEquals LogoValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogoValidation where
    (==) = jrecordEquals

instance JavaObjectClass LogoValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LogoValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    logoFileItem <- newIORef javaNull
    logoAbPath <- newIORef javaNull
    logoFile <- newIORef ""
    isFile <- newIORef False
    let this = LogoValidation header_ base logUtil logoFileItem logoAbPath logoFile isFile
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "processLogoFile" (\() -> processLogoFile_impl this)
    pure this

initFields_ :: LogoValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.logoFileItem (javaNull)
    jset this.logoAbPath (javaNull)
    jset this.logoFile (javaNull)
    jset this.isFile (False)
    pure ()

new_ :: IO LogoValidation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogoValidation -> IO ()
init_ this = do
        Validation.init_ this.base
        initFields_ this
        jset (this).isFile (False)
        jset (this).logoAbPath (javaNull)
        jset (this).logoFile (javaNull)
        pure ()

new_1 :: Node.Node -> IO LogoValidation
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: LogoValidation -> Node.Node -> IO ()
init_1 this node = do
        Validation.init_ this.base
        initFields_ this
        jset (this).isFile (False)
        assignedValue <- (AbPath.new_2 (jio (Node.getNodeValue ((jio (DomSearchHelper.getNode (jget ((jio (LogoData.getInstance))).iMAGEPATH) (jio (Node.getChildNodes node))))))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).logoAbPath (assignedValue)
        assignedValue <- (Node.getNodeValue ((jio (DomSearchHelper.getNode (jget ((jio (LogoData.getInstance))).iMAGEFILENAME) (jio (Node.getChildNodes node))))))
        jset (this).logoFile (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO LogoValidation
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: LogoValidation -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        Validation.init_ this.base
        initFields_ this
        jset (this).isFile (True)
        Control.Monad.void (LogoValidation.getFormData this hashMap)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: LogoValidation))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: LogoValidation)) a1

getFormData_impl :: LogoValidation -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        jset (this).logoFileItem ((javaCast (jio (HashMap.get hashMap (jget ((jio (LogoData.getInstance))).iMAGE))) :: FileItem.FileItem))
        assignedValue <- (AbPath.new_2 (javaCast (jio (HashMap.get hashMap (jget ((jio (LogoData.getInstance))).iMAGEPATH))) :: String) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).logoAbPath (assignedValue)
        when ((jget (this).logoFileItem) /= javaNull) $ do
            assignedValue <- (HttpRequestUtil.generateFileName ((jio (HttpRequestUtil.getInstance))) (jio (FileItem.getName ((jget (this).logoFileItem)))))
            jset (this).logoFile (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "HashMap: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString hashMap)))
            Control.Monad.void (StringMaker.append stringBuffer "\nLogoFileName: ")
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).logoFile))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getFormData()")
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: LogoValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: LogoValidation))

isValid_impl :: LogoValidation -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let valid = True
            fileData <- (FileData.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "LogoValidation" this (jget ((jget (this).base.commonStrings)).iS_VALID))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jio (AbPath.toString ((jget (this).logoAbPath)))) 0 512))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("logoPath is invalid: " ++ (jio (AbPath.toString ((jget (this).logoAbPath))))) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                javaReturn (False)
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).logoFile) (jget (fileData).mINLEN) (jget (fileData).mAXLEN)))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("logoFile is invalid: " ++ (jget (this).logoFile)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                javaReturn (False)
            when (jget (this).isFile) $ do
                when ((jget (this).logoFileItem) == javaNull) $ do
                    javaReturn (False)
                when (((jio (FileItem.getSize ((jget (this).logoFileItem)))) > (jget (fileData).mAXIMAGEFILESIZE)) || ((jio (FileItem.getSize ((jget (this).logoFileItem)))) < (jget (fileData).mINIMAGEFILESIZE))) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Image File Is Not The Right Size. " ++ javaToString (jget (fileData).mINIMAGEFILESIZE)) ++ "< > ") ++ javaToString (jget (fileData).mAXIMAGEFILESIZE)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                    javaReturn (False)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Logo Validation: " ++ javaToString valid) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            pure (valid)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: LogoValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: LogoValidation))

validationInfo_impl :: LogoValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Logo is not valid.")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: LogoValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: LogoValidation))

toValidationInfoDoc_impl :: LogoValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: LogoValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: LogoValidation)) a1

toValidationInfoNode_impl :: LogoValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: LogoValidation))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: LogoValidation))

toHashMap_impl :: LogoValidation -> IO (HashMap.HashMap)
toHashMap_impl this = do
        stringUtil <- (StringUtil.getInstance)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (LogoData.getInstance))).iMAGE) (jget (stringUtil).eMPTY_STRING))
        if ((jget (this).logoFile) /= javaNull) then do
            Control.Monad.void (HashMap.put hashMap (jget ((jio (LogoData.getInstance))).iMAGEPATH) (jio (AbPath.toString ((jget (this).logoAbPath)))))
            Control.Monad.void (HashMap.put hashMap (jget ((jio (LogoData.getInstance))).iMAGEFILENAME) (jget (this).logoFile))
        else do
            Control.Monad.void (HashMap.put hashMap (jget ((jio (LogoData.getInstance))).iMAGEPATH) javaNull)
            Control.Monad.void (HashMap.put hashMap (jget ((jio (LogoData.getInstance))).iMAGEFILENAME) (jget (this).logoFile))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: LogoValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: LogoValidation)) a1

toXmlNode_impl :: LogoValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (LogoValidation.toHashMap this)
        (ModDomHelper.createNameValueNodes_3 document (jget ((jio (LogoData.getInstance))).nAME) hashMap)


-- throws Exception
processLogoFile :: (JavaObjectClass this_) => this_ -> IO (())
processLogoFile object_ = jmethod object_ "processLogoFile" (\() -> (processLogoFile_impl (javaCast object_ :: LogoValidation))) ()

processLogoFile_super :: (JavaObjectClass this_) => this_ -> IO (())
processLogoFile_super object_ = (processLogoFile_impl (javaCast object_ :: LogoValidation))

processLogoFile_impl :: LogoValidation -> IO (())
processLogoFile_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Processing logoFile: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString ((jget (this).logoAbPath)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).logoFile))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "processLogoFile()")
        Control.Monad.void (LogoImageFileUtil.saveFiles ((jio (LogoImageFileUtil.new_2 (jget (this).logoAbPath) (jget (this).logoFile)))) (jget (this).logoFileItem))
        pure ()


