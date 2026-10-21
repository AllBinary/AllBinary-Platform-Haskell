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
-- package views.business.context.modules.storefront.customizer.generic.page
module PageValidationView (module PageValidationView, module PageView) where

import PageView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified TransformInfoEntity -- org.allbinary.data.tables.transform.info.TransformInfoEntity
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfo -- org.allbinary.logic.visual.transform.info.TransformInfo
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified PageValidation -- org.allbinary.logic.visual.transform.template.customizer.page.PageValidation
import qualified TitleData -- org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CustomizerUtil -- views.business.context.modules.storefront.customizer.CustomizerUtil
import qualified PageView

-- implements ValidationComponentInterface
data PageValidationView = PageValidationView
    { header_ :: JavaHeader
    , base :: PageView.PageView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PageValidationView where
    javaNull = javaNullRecord "PageValidationView"

instance JavaEquals PageValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PageValidationView where
    (==) = jrecordEquals

instance JavaObjectClass PageValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PageValidationView
newRecord_ = do
    base <- PageView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PageValidationView header_ base logUtil
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: PageValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO PageValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: PageValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        PageView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "PageViewValidation()")
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PageValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: PageValidationView))

isValid_impl :: PageValidationView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            isValid <- newIORef (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
            transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
            pageObjectConfigInterface <- (TransformInfoInterface.getObjectConfigInterface ((jio (PageView.getTransformInfoInterface this))))
            allViewsToBeModifiedVector <- (TransformInfoObjectConfigInterface.getGroupTransforms pageObjectConfigInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Views To Be Modified: " ++ javaToString (jio (BasicArrayList.size allViewsToBeModifiedVector))) this "get(transformInfoInterface)")
            size <- (BasicArrayList.size allViewsToBeModifiedVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let transformInfoInterface = (javaCast (jio (BasicArrayList.get allViewsToBeModifiedVector index)) :: TransformInfo.TransformInfo)
                viewNameOfViewToBeModified <- (TransformInfo.getName transformInfoInterface)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jio (PageView.getTransformInfoInterface this))))))
                    Control.Monad.void (StringMaker.append stringBuffer " is modifying view: ")
                    Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
                let httpTransformInfoInterface = (javaCast (jio (PageView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
                specifiedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewNameOfViewToBeModified (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jio (PageView.getTransformInfoInterface this))))))
                    Control.Monad.void (StringMaker.append stringBuffer " is adding data to view: ")
                    Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
                hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
                title <- (TransformInfoInterface.substring ((jio (TransformInfoInterface.getName specifiedTransformInfoInterface))) (jio (TransformInfoInterface.length ((jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this)))))))))
                if ((Prelude.fromEnum (Prelude.compare title "index") - 1) == 0) then do
                    Control.Monad.void (HashMap.put hashMap (jget ((jio (TitleData.getInstance))).tEXT) (javaToString (jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this))))) ++ " - Home Page"))
                else do
                    Control.Monad.void (HashMap.put hashMap (jget ((jio (TitleData.getInstance))).tEXT) ((javaToString (jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this))))) ++ " -") ++ title))
                pageValidation <- (PageValidation.new_1 hashMap)
                when ((jio (PageValidation.isValid pageValidation)) == False) $ do
                    jset isValid (False)
                when ((jget isValid) == True) $ do
                    document <- (DomDocumentHelper.create)
                    Control.Monad.void (Document.appendChild document (jio (PageValidation.toXmlNode pageValidation document)))
                    documentString <- (XmlDocumentHelper.toString document)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                        Control.Monad.void (StringMaker.append stringBuffer " is changing data in ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.toString ((jio (TransformInfoInterface.getDataFilePath specifiedTransformInfoInterface))))))
                        Control.Monad.void (StringMaker.append stringBuffer " to the following data:\n")
                        Control.Monad.void (StringMaker.append stringBuffer documentString)
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                    Control.Monad.void (CustomizerUtil.write ((jio (CustomizerUtil.getInstance))) specifiedTransformInfoInterface documentString)
            pure ((jget isValid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: PageValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: PageValidationView))

validationInfo_impl :: PageValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("An auto generated page name was invalid.")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
            objectConfig <- (TransformInfoInterface.getObjectConfigInterface ((jio (PageView.getTransformInfoInterface this))))
            let httpTransformInfoInterface = (javaCast (jio (PageView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            allViewsToBeModifiedVector <- (TransformInfoObjectConfigInterface.getGroupTransforms objectConfig)
            size <- (BasicArrayList.size allViewsToBeModifiedVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let transformInfoInterface = (javaCast (jio (BasicArrayList.get allViewsToBeModifiedVector index)) :: TransformInfo.TransformInfo)
                viewNameOfViewToBeModified <- (TransformInfo.getName transformInfoInterface)
                specifiedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewNameOfViewToBeModified (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
                hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
                title <- (TransformInfoInterface.substring ((jio (TransformInfoInterface.getName specifiedTransformInfoInterface))) (jio (TransformInfoInterface.length ((jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this)))))))))
                if ((Prelude.fromEnum (Prelude.compare title "index") - 1) == 0) then do
                    Control.Monad.void (HashMap.put hashMap (jget ((jio (TitleData.getInstance))).tEXT) (javaToString (jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this))))) ++ " - Home Page"))
                else do
                    Control.Monad.void (HashMap.put hashMap (jget ((jio (TitleData.getInstance))).tEXT) ((javaToString (jio (TransformInfoInterface.getStoreName ((jio (PageView.getTransformInfoInterface this))))) ++ " -") ++ title))
                pageValidation <- (PageValidation.new_1 hashMap)
                when ((jio (PageValidation.isValid pageValidation)) == False) $ do
                    Control.Monad.void (StringMaker.append stringBuffer ("TransformInfo Name for PageValidation:" ++ (jio (TransformInfoInterface.getName specifiedTransformInfoInterface))))
                    Control.Monad.void (StringMaker.append stringBuffer ("PageValidation:" ++ javaToString hashMap))
                    Control.Monad.void (StringMaker.append stringBuffer ("PageValidation Info:" ++ javaToString (jio (PageValidation.validationInfo pageValidation))))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: PageValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: PageValidationView))

toValidationInfoDoc_impl :: PageValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: PageValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: PageValidationView)) a1

toValidationInfoNode_impl :: PageValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


