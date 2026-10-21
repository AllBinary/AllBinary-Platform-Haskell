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
-- package org.allbinary.logic.visual.theme
module ThemeValidation where

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
import qualified ThemeData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified StoreThemeCategoryFactory -- org.allbinary.business.category.store.theme.StoreThemeCategoryFactory
import qualified StoreThemeCategoryInterface -- org.allbinary.business.category.store.theme.StoreThemeCategoryInterface
import qualified CategoryLoaderFactory -- org.allbinary.data.tree.category.CategoryLoaderFactory
import qualified CategoryLoaderInterface -- org.allbinary.data.tree.category.CategoryLoaderInterface
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified PathUtil -- org.allbinary.logic.io.path.PathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CompositeTransformInfoInterface -- org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CssStyleValidation -- org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ThemeInterface

-- implements ThemeInterface
-- implements ValidationInterface
-- implements DomNodeInterface
-- implements CompositeTransformInfoInterface
data ThemeValidation = ThemeValidation
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , styleValidationInterface :: IORef (ValidationInterface.ValidationInterface)
    , themeName :: IORef (String)
    , themePreviewImageName :: IORef (String)
    , webAppAbPath :: IORef (AbPath.AbPath)
    , categoryAbPath :: IORef (AbPath.AbPath)
    , fileAbPath :: IORef (AbPath.AbPath)
    }

instance JavaNull ThemeValidation where
    javaNull = javaNullRecord "ThemeValidation"

instance JavaEquals ThemeValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemeValidation where
    (==) = jrecordEquals

instance JavaObjectClass ThemeValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThemeValidation
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    styleValidationInterface <- newIORef javaNull
    themeName <- newIORef ""
    themePreviewImageName <- newIORef ""
    webAppAbPath <- newIORef javaNull
    categoryAbPath <- newIORef javaNull
    fileAbPath <- newIORef javaNull
    let this = ThemeValidation header_ logUtil commonStrings transformInfoInterface styleValidationInterface themeName themePreviewImageName webAppAbPath categoryAbPath fileAbPath
    jregisterLevel header_ this
    ThemeInterface.registerInterface_ header_
    ValidationInterface.registerInterface_ header_
    DomNodeInterface.registerInterface_ header_
    CompositeTransformInfoInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getPreviewImageName" (\() -> getPreviewImageName_impl this)
    jregisterMethod header_ "getPreviewImagePath" (\() -> getPreviewImagePath_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getCssStyleValidation" (\() -> getCssStyleValidation_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ThemeValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.transformInfoInterface (javaNull)
    jset this.styleValidationInterface (javaNull)
    jset this.themeName (javaNull)
    jset this.themePreviewImageName (javaNull)
    jset this.webAppAbPath (javaNull)
    jset this.categoryAbPath (javaNull)
    jset this.fileAbPath (javaNull)
    pure ()

new_3 :: TransformInfoInterface.TransformInfoInterface -> CssStyleValidation.CssStyleValidation -> String -> IO ThemeValidation
new_3 transformInfoInterface cssStyleValidation categoryThemePath = do
    this <- newRecord_
    init_3 this transformInfoInterface cssStyleValidation categoryThemePath
    pure this

init_3 :: ThemeValidation -> TransformInfoInterface.TransformInfoInterface -> CssStyleValidation.CssStyleValidation -> String -> IO ()
init_3 this transformInfoInterface cssStyleValidation categoryThemePath = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        pathData <- (AbPathData.getInstance)
        pathUtil <- (PathUtil.getInstance)
        assignedValue <- (PathUtil.removeNameFromPath pathUtil categoryThemePath)
        jset (this).categoryAbPath (assignedValue)
        assignedValue <- (AbPathData.getNameFromPath pathData categoryThemePath)
        jset (this).themeName (assignedValue)
        jset (this).styleValidationInterface (cssStyleValidation)
        Control.Monad.void (ThemeValidation.init this)
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ThemeValidation
new_2 transformInfoInterface hashMap = do
    this <- newRecord_
    init_2 this transformInfoInterface hashMap
    pure this

init_2 :: ThemeValidation -> TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ()
init_2 this transformInfoInterface hashMap = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        categoryThemeAbPath <- (AbPath.new_2 (javaCast (jio (HashMap.get hashMap (jget ((jio (ThemeData.getInstance))).pATH))) :: String) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pathData <- (AbPathData.getInstance)
        pathUtil <- (PathUtil.getInstance)
        assignedValue <- (PathUtil.removeNameFromPath pathUtil (jio (AbPath.toString categoryThemeAbPath)))
        jset (this).categoryAbPath (assignedValue)
        assignedValue <- (AbPathData.getNameFromPath pathData (jio (AbPath.toString categoryThemeAbPath)))
        jset (this).themeName (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "CategoryThemePath: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString categoryThemeAbPath)))
            Control.Monad.void (StringMaker.append stringBuffer " & CategoryPath: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString ((jget (this).categoryAbPath)))))
            Control.Monad.void (StringMaker.append stringBuffer " & ThemeName: ")
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).themeName))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Http Request Constructor" this (jio (StringMaker.toString stringBuffer)))
        Control.Monad.void (ThemeValidation.init this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: StoreThemeCategoryInterface.StoreThemeCategoryInterface -> Node.Node -> IO ThemeValidation
new_2 storeThemeCategoryInterface node = do
    this <- newRecord_
    init_2 this storeThemeCategoryInterface node
    pure this

init_2 :: ThemeValidation -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> Node.Node -> IO ()
init_2 this storeThemeCategoryInterface node = do
        initFields_ this
        assignedValue <- (StoreThemeCategoryInterface.getTransformInfoInterface storeThemeCategoryInterface)
        jset (this).transformInfoInterface (assignedValue)
        assignedValue <- (StoreThemeCategoryInterface.getPath storeThemeCategoryInterface)
        jset (this).categoryAbPath (assignedValue)
        themeNameNode <- (DomSearchHelper.getNode (jget ((jio (ThemeData.getInstance))).nAME) (jio (Node.getChildNodes node)))
        valueNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes themeNameNode)))
        assignedValue <- (DomNodeHelper.getTextNodeValue valueNode)
        jset (this).themeName (assignedValue)
        previewImageNameNode <- (DomSearchHelper.getNode (jget ((jio (ThemeData.getInstance))).pREVIEW_IMAGE_NAME) (jio (Node.getChildNodes node)))
        previewImageNameValueNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes previewImageNameNode)))
        assignedValue <- (DomNodeHelper.getTextNodeValue previewImageNameValueNode)
        jset (this).themePreviewImageName (assignedValue)
        assignedValue <- (StoreThemeCategoryInterface.getWebAppPath storeThemeCategoryInterface)
        jset (this).webAppAbPath (assignedValue)
        Control.Monad.void (ThemeValidation.init this storeThemeCategoryInterface)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ThemeValidation))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ThemeValidation))

init_impl :: ThemeValidation -> IO (())
init_impl this = do
        categoryFactoryInterface <- (fmap (\value_ -> javaCast value_ :: CategoryFactoryInterface.CategoryFactoryInterface) (StoreThemeCategoryFactory.new_1 (jio (ThemeValidation.getTransformInfoInterface this))))
        categoryLoaderInterface <- (CategoryLoaderFactory.getInstance categoryFactoryInterface)
        let rootStoreThemeCategoryInterface = (javaCast (jio (CategoryFactoryInterface.getRootInstance categoryFactoryInterface)) :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        Control.Monad.void (ThemeValidation.init this rootStoreThemeCategoryInterface)
        pure ()


-- throws Exception
-- Java overload of init with a different parameter count: give it a different name
init :: (JavaObjectClass this_) => this_ -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ThemeValidation))) () a1

init_super :: (JavaObjectClass this_) => this_ -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ThemeValidation)) a1

init_impl :: ThemeValidation -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO (())
init_impl this storeThemeCategoryInterface = do
        assignedValue <- (AbPath.new_2 ((jio (StoreThemeCategoryInterface.toString ((jio (StoreThemeCategoryInterface.getRootFilePath storeThemeCategoryInterface))))) ++ (jio (AbPath.toString ((jget (this).categoryAbPath))))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).fileAbPath (assignedValue)
        assignedValue <- (StoreThemeCategoryInterface.getWebAppPath storeThemeCategoryInterface)
        jset (this).webAppAbPath (assignedValue)
        pure ()


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: ThemeValidation))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: ThemeValidation))

getTransformInfoInterface_impl :: ThemeValidation -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).transformInfoInterface))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ThemeValidation))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ThemeValidation))

getName_impl :: ThemeValidation -> IO (String)
getName_impl this = do
        pure ((jget (this).themeName))


getPreviewImageName :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImageName object_ = jmethod object_ "getPreviewImageName" (\() -> (getPreviewImageName_impl (javaCast object_ :: ThemeValidation))) ()

getPreviewImageName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImageName_super object_ = (getPreviewImageName_impl (javaCast object_ :: ThemeValidation))

getPreviewImageName_impl :: ThemeValidation -> IO (String)
getPreviewImageName_impl this = do
        pure ((jget (this).themePreviewImageName))


getPreviewImagePath :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImagePath object_ = jmethod object_ "getPreviewImagePath" (\() -> (getPreviewImagePath_impl (javaCast object_ :: ThemeValidation))) ()

getPreviewImagePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImagePath_super object_ = (getPreviewImagePath_impl (javaCast object_ :: ThemeValidation))

getPreviewImagePath_impl :: ThemeValidation -> IO (String)
getPreviewImagePath_impl this = do
        pure (((jio (AbPath.toString ((jget (this).webAppAbPath)))) ++ (jio (AbPath.toString ((jget (this).categoryAbPath))))))


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: ThemeValidation))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: ThemeValidation))

getPath_impl :: ThemeValidation -> IO (String)
getPath_impl this = do
        (AbPath.toString ((jget (this).categoryAbPath)))


-- throws Exception
getCssStyleValidation :: (JavaObjectClass this_) => this_ -> IO (CssStyleValidation.CssStyleValidation)
getCssStyleValidation object_ = jmethod object_ "getCssStyleValidation" (\() -> (getCssStyleValidation_impl (javaCast object_ :: ThemeValidation))) ()

getCssStyleValidation_super :: (JavaObjectClass this_) => this_ -> IO (CssStyleValidation.CssStyleValidation)
getCssStyleValidation_super object_ = (getCssStyleValidation_impl (javaCast object_ :: ThemeValidation))

getCssStyleValidation_impl :: ThemeValidation -> IO (CssStyleValidation.CssStyleValidation)
getCssStyleValidation_impl this = do
        when ((jget (this).styleValidationInterface) == javaNull) $ do
            cssStyleFileAbPath <- (AbPath.new_2 (jio (AbPath.toString ((jget (this).fileAbPath)))) (((jget (this).themeName) ++ javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) ++ javaToString (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION)))
            cryptFileReader <- (CryptFileReader.new_2 (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (CategoryData.getInstance))).eNCRYPTED_EXTENSION))
            document <- (DomDocumentHelper.create (jio (CryptFileReader.get cryptFileReader cssStyleFileAbPath)))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ValidationInterface.ValidationInterface) (CssStyleValidation.new_1 document))
            jset (this).styleValidationInterface (assignedValue)
        pure ((javaCast (jget (this).styleValidationInterface) :: CssStyleValidation.CssStyleValidation))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ThemeValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: ThemeValidation))

isValid_impl :: ThemeValidation -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            isValid <- newIORef (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).iS_VALID))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jio (AbPath.toString ((jget (this).categoryAbPath)))) (AbSqlData.mINSTRING) (AbSqlData.mAXSTRING)))) $ do
                jset isValid (False)
            when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).themeName) (AbSqlData.mINSTRING) (AbSqlData.mAXSTRING)))) $ do
                jset isValid (False)
            when (Prelude.not (jio (CssStyleValidation.isValid ((jio (ThemeValidation.getCssStyleValidation this)))))) $ do
                jset isValid (False)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("End: " ++ javaToString (jget isValid)) this (jget ((jget (this).commonStrings)).iS_VALID))
            pure ((jget isValid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: ThemeValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: ThemeValidation))

validationInfo_impl :: ThemeValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Theme Validation Error")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: ThemeValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: ThemeValidation))

toValidationInfoDoc_impl :: ThemeValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: ThemeValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: ThemeValidation)) a1

toValidationInfoNode_impl :: ThemeValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ThemeValidation))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ThemeValidation))

getKey_impl :: ThemeValidation -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (ThemeValidation.getName this)) :: Any.Any)))


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: ThemeValidation))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: ThemeValidation))

toVector_impl :: ThemeValidation -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jio (ThemeValidation.getName this)))
        Control.Monad.void (BasicArrayList.add vector (jio (ThemeValidation.getPath this)))
        Control.Monad.void (BasicArrayList.add vector (jio (ThemeValidation.getPreviewImageName this)))
        Control.Monad.void (BasicArrayList.add vector (jio (ThemeValidation.getPreviewImagePath this)))
        pure (vector)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: ThemeValidation))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: ThemeValidation))

toHashMap_impl :: ThemeValidation -> IO (HashMap.HashMap)
toHashMap_impl this = do
        themeData <- (ThemeData.getInstance)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget (themeData).nAME) (jio (ThemeValidation.getName this)))
        Control.Monad.void (HashMap.put hashMap (jget (themeData).pATH) (jio (ThemeValidation.getPath this)))
        Control.Monad.void (HashMap.put hashMap (jget (themeData).pREVIEW_IMAGE_NAME) (jio (ThemeValidation.getPreviewImageName this)))
        Control.Monad.void (HashMap.put hashMap (jget (themeData).pREVIEW_IMAGE_PATH) (jio (ThemeValidation.getPreviewImagePath this)))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ThemeValidation))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ThemeValidation)) a1

toXmlNode_impl :: ThemeValidation -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes document (jget ((jio (ThemeData.getInstance))).nAME) (jio (ThemeValidation.toHashMap this)))
        let domNodeInterface = (javaCast (jio (ThemeValidation.getCssStyleValidation this)) :: DomNodeInterface.DomNodeInterface)
        Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode domNodeInterface document)))
        pure (node)


