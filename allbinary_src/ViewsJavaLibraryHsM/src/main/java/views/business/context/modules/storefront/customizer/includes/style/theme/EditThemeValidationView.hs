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
-- package views.business.context.modules.storefront.customizer.includes.style.theme
module EditThemeValidationView (module EditThemeValidationView, module ThemeCustomizerView) where

import ThemeCustomizerView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil)
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
import qualified ValidationInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified StoreThemeCategoryFactory -- org.allbinary.business.category.store.theme.StoreThemeCategoryFactory
import qualified StoreThemeCategoryInterface -- org.allbinary.business.category.store.theme.StoreThemeCategoryInterface
import qualified StoreThemeCategoryPathValidationView -- org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView
import qualified CategoryLoaderFactory -- org.allbinary.data.tree.category.CategoryLoaderFactory
import qualified CategoryLoaderInterface -- org.allbinary.data.tree.category.CategoryLoaderInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ThemeCustomizerView

-- implements ValidationComponentInterface
data EditThemeValidationView = EditThemeValidationView
    { header_ :: JavaHeader
    , base :: ThemeCustomizerView.ThemeCustomizerView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull EditThemeValidationView where
    javaNull = javaNullRecord "EditThemeValidationView"

instance JavaEquals EditThemeValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EditThemeValidationView where
    (==) = jrecordEquals

instance JavaObjectClass EditThemeValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EditThemeValidationView
newRecord_ = do
    base <- ThemeCustomizerView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = EditThemeValidationView header_ base logUtil
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: EditThemeValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO EditThemeValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: EditThemeValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        ThemeCustomizerView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: EditThemeValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: EditThemeValidationView))

isValid_impl :: EditThemeValidationView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            isValid <- newIORef (True)
            categoryFactoryInterface <- (fmap (\value_ -> javaCast value_ :: CategoryFactoryInterface.CategoryFactoryInterface) (StoreThemeCategoryFactory.new_1 (jio (ThemeCustomizerView.getTransformInfoInterface this))))
            categoryLoaderInterface <- (CategoryLoaderFactory.getInstance categoryFactoryInterface)
            let rootStoreThemeCategoryInterface = (javaCast (jio (CategoryFactoryInterface.getRootInstance categoryFactoryInterface)) :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
            let storeThemeCategoryInterface = (javaCast (jio (CategoryLoaderInterface.getAll categoryLoaderInterface (javaCast rootStoreThemeCategoryInterface :: CategoryInterface.CategoryInterface))) :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ValidationInterface.ValidationInterface) (StoreThemeCategoryPathValidationView.new_1 (javaCast storeThemeCategoryInterface :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)))
            jset (this).base.validationInterface (assignedValue)
            assignedValue <- (ValidationInterface.isValid ((jget (this).base.validationInterface)))
            jset isValid (assignedValue)
            let domNodeInterface = (javaCast (jget (this).base.validationInterface) :: DomNodeInterface.DomNodeInterface)
            document <- (DomDocumentHelper.create)
            Control.Monad.void (Document.appendChild document (jio (DomNodeInterface.toXmlNode domNodeInterface document)))
            documentString <- (XmlDocumentHelper.toString document)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Setting Data: " ++ documentString) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
            Control.Monad.void (TransformInfoInterface.setData ((jio (ThemeCustomizerView.getTransformInfoInterface this))) documentString)
            pure ((jget isValid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: EditThemeValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: EditThemeValidationView))

validationInfo_impl :: EditThemeValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (ValidationInterface.validationInfo ((jget (this).base.validationInterface)))))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: EditThemeValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: EditThemeValidationView))

toValidationInfoDoc_impl :: EditThemeValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: EditThemeValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: EditThemeValidationView)) a1

toValidationInfoNode_impl :: EditThemeValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


