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
-- package views.business.context.modules.storefront.customizer.template
module InsertCustomizerValidationView (module InsertCustomizerValidationView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, view, view_super, view_impl, logUtil, viewName)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified GeneratorTransformInfoData -- org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData
import qualified TransformInfo -- org.allbinary.logic.visual.transform.info.TransformInfo
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView
import qualified InsertTemplateCustomizerTransformInfoObjectConfig -- views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig
import qualified NoTemplateTransformInfoObjectConfig -- views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig

-- implements ValidationComponentInterface
data InsertCustomizerValidationView = InsertCustomizerValidationView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , viewName :: IORef (String)
    }

instance JavaNull InsertCustomizerValidationView where
    javaNull = javaNullRecord "InsertCustomizerValidationView"

instance JavaEquals InsertCustomizerValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InsertCustomizerValidationView where
    (==) = jrecordEquals

instance JavaObjectClass InsertCustomizerValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InsertCustomizerValidationView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    viewName <- newIORef ""
    let this = InsertCustomizerValidationView header_ base logUtil viewName
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: InsertCustomizerValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.viewName (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO InsertCustomizerValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: InsertCustomizerValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        requestHashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 (jio (HttpStoreComponentView.getPageContext this))))))
        jset (this).viewName ((javaCast (jio (HashMap.get requestHashMap (jget ((jio (TransformInfoData.getInstance))).nAME))) :: String))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: InsertCustomizerValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: InsertCustomizerValidationView))

isValid_impl :: InsertCustomizerValidationView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Started Validation" this (jget ((jget (this).base.commonStrings)).iS_VALID))
            isValid <- newIORef (True)
            if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).viewName))) then do
                jset isValid (False)
            else do
                objectConfig <- (NoTemplateTransformInfoObjectConfig.new_2 (jio (HttpStoreComponentView.getTransformInfoInterface this)) (jio (TransformInfoInterface.toXmlDoc ((jio (TransformInfoInterface.getObjectConfigInterface ((jio (HttpStoreComponentView.getTransformInfoInterface this)))))))))
                componentVector <- (NoTemplateTransformInfoObjectConfig.getGroupTransforms objectConfig)
                size <- (BasicArrayList.size componentVector)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "Pointing ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size componentVector)))
                    Control.Monad.void (StringMaker.append stringBuffer " Components")
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let transformInfo = (javaCast (jio (BasicArrayList.get componentVector index)) :: TransformInfo.TransformInfo)
                    transformInfoName <- (TransformInfo.getName transformInfo)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Setting Template Component with ViewName: " ++ transformInfoName) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                    componentInterface <- (fmap (\value_ -> javaCast value_ :: TransformInterface.TransformInterface) (TransformFactory.getInstance ((jio (TransformFactory.getInstance))) (jget (this).base.base.abeClientInformation) transformInfoName (jio (HttpStoreComponentView.getTransformInfoInterface this))))
                    templateViewObjectConfig <- (InsertTemplateCustomizerTransformInfoObjectConfig.new_2 (jio (TransformInterface.getTransformInfoInterface componentInterface)) (jio (TransformInterface.toXmlDoc ((jio (TransformInterface.getObjectConfigInterface ((jio (TransformInterface.getTransformInfoInterface componentInterface)))))))))
                    storeName <- (TransformInfoInterface.getStoreName ((jio (HttpStoreComponentView.getTransformInfoInterface this))))
                    let endIndex = ((jstringIndexOf (jget (this).viewName) storeName 0) + (Prelude.length storeName))
                    let storePrepend = (Prelude.take ((endIndex) - (0)) (Prelude.drop (0) (jget (this).viewName)))
                    let viewNamePostfix = (Prelude.take (((Prelude.length (jget (this).viewName))) - (endIndex)) (Prelude.drop (endIndex) (jget (this).viewName)))
                    newViewNameStringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append newViewNameStringBuffer storePrepend)
                    commonSeps <- (CommonSeps.getInstance)
                    transformInfosData <- (TransformInfosData.getInstance)
                    if ((jstringIndexOf transformInfoName (jget (transformInfosData).sMALL_PREVIEW) 0) >= 0) then do
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (commonSeps).sPACE))
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (transformInfosData).sMALL_PREVIEW))
                    else when ((jstringIndexOf transformInfoName (jget (transformInfosData).pREVIEW) 0) >= 0) $ do
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (commonSeps).sPACE))
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (transformInfosData).pREVIEW))
                    Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (commonSeps).sPACE))
                    Control.Monad.void (StringMaker.append newViewNameStringBuffer viewNamePostfix)
                    when ((jstringIndexOf transformInfoName (GeneratorTransformInfoData.nAME) 0) >= 0) $ do
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (jget (commonSeps).sPACE))
                        Control.Monad.void (StringMaker.append newViewNameStringBuffer (GeneratorTransformInfoData.nAME))
                    newViewName <- (StringMaker.toString newViewNameStringBuffer)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Template Component: ")
                        Control.Monad.void (StringMaker.append stringBuffer transformInfoName)
                        Control.Monad.void (StringMaker.append stringBuffer "\n Now Pointing To View Name: ")
                        Control.Monad.void (StringMaker.append stringBuffer newViewName)
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                    Control.Monad.void (InsertTemplateCustomizerTransformInfoObjectConfig.set templateViewObjectConfig newViewName)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Template Component: ")
                        Control.Monad.void (StringMaker.append stringBuffer transformInfoName)
                        Control.Monad.void (StringMaker.append stringBuffer "\n with ObjectConfig: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (InsertTemplateCustomizerTransformInfoObjectConfig.toString templateViewObjectConfig)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
                    Control.Monad.void (TransformInterface.setObjectConfigInterface ((jio (TransformInterface.getTransformInfoInterface componentInterface))) templateViewObjectConfig)
                    updatedTransformInfoHashMap <- (TransformInterface.toHashMap ((jio (TransformInterface.getTransformInfoInterface componentInterface))))
                    Control.Monad.void (TransformInfoEntity.update ((jio (TransformInfoEntityBuilder.getInstance))) updatedTransformInfoHashMap)
            pure ((jget isValid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: InsertCustomizerValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: InsertCustomizerValidationView))

validationInfo_impl :: InsertCustomizerValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Error: Template Name Is Empty.")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: InsertCustomizerValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: InsertCustomizerValidationView))

toValidationInfoDoc_impl :: InsertCustomizerValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: InsertCustomizerValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: InsertCustomizerValidationView)) a1

toValidationInfoNode_impl :: InsertCustomizerValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: InsertCustomizerValidationView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: InsertCustomizerValidationView))

view_impl :: InsertCustomizerValidationView -> IO (String)
view_impl this = do
        (view ((jio (getInstance ((jget ((jget this.base.views)).validationOnlyTempUtil))))) this)


