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
-- package tags.transform.info
module TransformInfoTag (module TransformInfoTag, module ModifyTag) where

import ModifyTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setName, setName_super, setName_impl, setStoreName, setStoreName_super, setStoreName_impl, setObjectFile, setObjectFile_super, setObjectFile_impl, setObject, setObject_super, setObject_impl, setTemplateFile, setTemplateFile_super, setTemplateFile_impl, setTemplate, setTemplate_super, setTemplate_impl, setDataFile, setDataFile_super, setDataFile_impl, setData, setData_super, setData_impl, setObjectConfigFile, setObjectConfigFile_super, setObjectConfigFile_impl, setObjectConfig, setObjectConfig_super, setObjectConfig_impl, setType, setType_super, setType_impl, getName, getName_super, getName_impl, getObjectFile, getObjectFile_super, getObjectFile_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, name, storeName, objectFile, anyType, objectConfigFile, objectConfig, templateFile, template, dataFile, data_, type_)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OutputTypeData -- org.allbinary.logic.io.OutputTypeData
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoRequestHelperFactory -- taghelpers.transform.info.TransformInfoRequestHelperFactory
import qualified ModifyTag -- tags.ModifyTag

data TransformInfoTag = TransformInfoTag
    { header_ :: JavaHeader
    , base :: ModifyTag.ModifyTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , storeName :: IORef (String)
    , objectFile :: IORef (String)
    , anyType :: IORef (String)
    , objectConfigFile :: IORef (String)
    , objectConfig :: IORef (String)
    , templateFile :: IORef (String)
    , template :: IORef (String)
    , dataFile :: IORef (String)
    , data_ :: IORef (String)
    , type_ :: IORef (String)
    }

instance JavaNull TransformInfoTag where
    javaNull = javaNullRecord "TransformInfoTag"

instance JavaEquals TransformInfoTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoTag where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoTag
newRecord_ = do
    base <- ModifyTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    name <- newIORef ""
    storeName <- newIORef ""
    objectFile <- newIORef ""
    anyType <- newIORef ""
    objectConfigFile <- newIORef ""
    objectConfig <- newIORef ""
    templateFile <- newIORef ""
    template <- newIORef ""
    dataFile <- newIORef ""
    data_ <- newIORef ""
    type_ <- newIORef ""
    let this = TransformInfoTag header_ base logUtil name storeName objectFile anyType objectConfigFile objectConfig templateFile template dataFile data_ type_
    jregisterLevel header_ this
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "setObjectFile" (\() -> setObjectFile_impl this)
    jregisterMethod header_ "setObject" (\() -> setObject_impl this)
    jregisterMethod header_ "setTemplateFile" (\() -> setTemplateFile_impl this)
    jregisterMethod header_ "setTemplate" (\() -> setTemplate_impl this)
    jregisterMethod header_ "setDataFile" (\() -> setDataFile_impl this)
    jregisterMethod header_ "setData" (\() -> setData_impl this)
    jregisterMethod header_ "setObjectConfigFile" (\() -> setObjectConfigFile_impl this)
    jregisterMethod header_ "setObjectConfig" (\() -> setObjectConfig_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getObjectFile" (\() -> getObjectFile_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: TransformInfoTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name ("")
    jset this.storeName ("")
    jset this.objectFile ("")
    jset this.anyType ("")
    jset this.objectConfigFile ("")
    jset this.objectConfig ("")
    jset this.templateFile ("")
    jset this.template ("")
    jset this.dataFile ("")
    jset this.data_ ("")
    jset this.type_ ("")
    pure ()

new_ :: IO TransformInfoTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoTag -> IO ()
init_ this = do
        ModifyTag.init_1 this.base (jio (TransformInfoRequestHelperFactory.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: TagHelperFactoryInterface.TagHelperFactoryInterface -> IO TransformInfoTag
new_1 tagHelperFactoryInterface = do
    this <- newRecord_
    init_1 this tagHelperFactoryInterface
    pure this

init_1 :: TransformInfoTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO ()
init_1 this tagHelperFactoryInterface = do
        ModifyTag.init_1 this.base (tagHelperFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfoTag))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfoTag)) a1

setName_impl :: TransformInfoTag -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).nAME) (jget (this).name))
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: TransformInfoTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: TransformInfoTag)) a1

setStoreName_impl :: TransformInfoTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        pure ()


setObjectFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile object_ a1 = jmethod object_ "setObjectFile" (\() -> (setObjectFile_impl (javaCast object_ :: TransformInfoTag))) () a1

setObjectFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile_super object_ a1 = (setObjectFile_impl (javaCast object_ :: TransformInfoTag)) a1

setObjectFile_impl :: TransformInfoTag -> String -> IO (())
setObjectFile_impl this value = do
        jset (this).objectFile (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).oBJECTFILENAME) (jget (this).objectFile))
        pure ()


setObject :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObject object_ a1 = jmethod object_ "setObject" (\() -> (setObject_impl (javaCast object_ :: TransformInfoTag))) () a1

setObject_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObject_super object_ a1 = (setObject_impl (javaCast object_ :: TransformInfoTag)) a1

setObject_impl :: TransformInfoTag -> String -> IO (())
setObject_impl this value = do
        jset (this).anyType (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).oBJECT) (jget (this).anyType))
        pure ()


setTemplateFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile object_ a1 = jmethod object_ "setTemplateFile" (\() -> (setTemplateFile_impl (javaCast object_ :: TransformInfoTag))) () a1

setTemplateFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile_super object_ a1 = (setTemplateFile_impl (javaCast object_ :: TransformInfoTag)) a1

setTemplateFile_impl :: TransformInfoTag -> String -> IO (())
setTemplateFile_impl this value = do
        jset (this).templateFile (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).tEMPLATEFILENAME) (jget (this).templateFile))
        pure ()


setTemplate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate object_ a1 = jmethod object_ "setTemplate" (\() -> (setTemplate_impl (javaCast object_ :: TransformInfoTag))) () a1

setTemplate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate_super object_ a1 = (setTemplate_impl (javaCast object_ :: TransformInfoTag)) a1

setTemplate_impl :: TransformInfoTag -> String -> IO (())
setTemplate_impl this value = do
        jset (this).template (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).tEMPLATE) (jget (this).template))
        pure ()


setDataFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile object_ a1 = jmethod object_ "setDataFile" (\() -> (setDataFile_impl (javaCast object_ :: TransformInfoTag))) () a1

setDataFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile_super object_ a1 = (setDataFile_impl (javaCast object_ :: TransformInfoTag)) a1

setDataFile_impl :: TransformInfoTag -> String -> IO (())
setDataFile_impl this value = do
        jset (this).dataFile (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).dATAFILENAME) (jget (this).dataFile))
        pure ()


setData :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData object_ a1 = jmethod object_ "setData" (\() -> (setData_impl (javaCast object_ :: TransformInfoTag))) () a1

setData_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData_super object_ a1 = (setData_impl (javaCast object_ :: TransformInfoTag)) a1

setData_impl :: TransformInfoTag -> String -> IO (())
setData_impl this value = do
        jset (this).data_ (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).dATA) (jget (this).data_))
        pure ()


setObjectConfigFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile object_ a1 = jmethod object_ "setObjectConfigFile" (\() -> (setObjectConfigFile_impl (javaCast object_ :: TransformInfoTag))) () a1

setObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile_super object_ a1 = (setObjectConfigFile_impl (javaCast object_ :: TransformInfoTag)) a1

setObjectConfigFile_impl :: TransformInfoTag -> String -> IO (())
setObjectConfigFile_impl this value = do
        jset (this).objectConfigFile (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).oBJECTCONFIGFILENAME) (jget (this).objectConfigFile))
        pure ()


setObjectConfig :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig object_ a1 = jmethod object_ "setObjectConfig" (\() -> (setObjectConfig_impl (javaCast object_ :: TransformInfoTag))) () a1

setObjectConfig_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig_super object_ a1 = (setObjectConfig_impl (javaCast object_ :: TransformInfoTag)) a1

setObjectConfig_impl :: TransformInfoTag -> String -> IO (())
setObjectConfig_impl this value = do
        jset (this).objectConfig (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).oBJECTCONFIG) (jget (this).objectConfig))
        pure ()


setType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: TransformInfoTag))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: TransformInfoTag)) a1

setType_impl :: TransformInfoTag -> String -> IO (())
setType_impl this value = do
        jset (this).type_ (value)
        Control.Monad.void (HashMap.put ((jio (ModifyTag.getPropertiesHashMap this))) (jget ((jio (OutputTypeData.getInstance))).nAME) (jget (this).type_))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfoTag type set: " ++ (jget (this).type_)) this "setType")
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoTag))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoTag))

getName_impl :: TransformInfoTag -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getObjectFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile object_ = jmethod object_ "getObjectFile" (\() -> (getObjectFile_impl (javaCast object_ :: TransformInfoTag))) ()

getObjectFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile_super object_ = (getObjectFile_impl (javaCast object_ :: TransformInfoTag))

getObjectFile_impl :: TransformInfoTag -> IO (String)
getObjectFile_impl this = do
        pure ((jget (this).objectFile))


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: TransformInfoTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: TransformInfoTag))

doStartTag_impl :: TransformInfoTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            (ModifyTag.doStartTag_super this.base)


