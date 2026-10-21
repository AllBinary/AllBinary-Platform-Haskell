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
-- package org.allbinary.business.category.properties.root.store
module RootStoreCategoryProperties where

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
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryUtil -- org.allbinary.business.category.CategoryUtil
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified RootCategoryPropertiesInterface -- org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements RootCategoryPropertiesInterface
-- implements CategoryPropertiesInterface
data RootStoreCategoryProperties = RootStoreCategoryProperties
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , pathData :: IORef (AbPathData.AbPathData)
    , fileAbPath :: IORef (AbPath.AbPath)
    , abPath :: IORef (AbPath.AbPath)
    , category :: IORef (String)
    , isRealRoot :: IORef (Bool)
    , webAppAbPath :: IORef (AbPath.AbPath)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull RootStoreCategoryProperties where
    javaNull = javaNullRecord "RootStoreCategoryProperties"

instance JavaEquals RootStoreCategoryProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootStoreCategoryProperties where
    (==) = jrecordEquals

instance JavaObjectClass RootStoreCategoryProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RootStoreCategoryProperties
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    pathData <- newIORef javaNull
    fileAbPath <- newIORef javaNull
    abPath <- newIORef javaNull
    category <- newIORef ""
    isRealRoot <- newIORef False
    webAppAbPath <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    let this = RootStoreCategoryProperties header_ logUtil pathData fileAbPath abPath category isRealRoot webAppAbPath transformInfoInterface
    jregisterLevel header_ this
    RootCategoryPropertiesInterface.registerInterface_ header_
    CategoryPropertiesInterface.registerInterface_ header_
    jregisterMethod header_ "initPath" (\() -> initPath_impl this)
    jregisterMethod header_ "isRealRoot" (\() -> isRealRoot_impl this)
    jregisterMethod header_ "isRoot" (\() -> isRoot_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "setPath" (\() -> setPath_impl this)
    jregisterMethod header_ "setRootFilePath" (\() -> setRootFilePath_impl this)
    jregisterMethod header_ "getRootFilePath" (\() -> getRootFilePath_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "getWebAppPath" (\() -> getWebAppPath_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getFileName" (\() -> getFileName_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: RootStoreCategoryProperties -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pathData =<< (AbPathData.getInstance)
    jset this.fileAbPath (javaNull)
    jset this.abPath (javaNull)
    jset this.category (javaNull)
    jset this.isRealRoot (False)
    jset this.webAppAbPath (javaNull)
    jset this.transformInfoInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO RootStoreCategoryProperties
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: RootStoreCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (AbPath.createAbPath)
        jset (this).abPath (assignedValue)
        jset (this).category ((jget ((jio (CategoryData.getInstance))).rOOTCATEGORY))
        jset (this).isRealRoot (True)
        Control.Monad.void (RootStoreCategoryProperties.initPath this)
        Control.Monad.void (RootStoreCategoryProperties.log this)
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO RootStoreCategoryProperties
new_2 transformInfoInterface categoryAbPath = do
    this <- newRecord_
    init_2 this transformInfoInterface categoryAbPath
    pure this

init_2 :: RootStoreCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO ()
init_2 this transformInfoInterface categoryAbPath = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        jset (this).abPath (categoryAbPath)
        assignedValue <- (AbPathData.getNameFromPath ((jget (this).pathData)) (jio (AbPath.toString categoryAbPath)))
        jset (this).category (assignedValue)
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).category))) $ do
            jset (this).isRealRoot (True)
            jset (this).category ((jget ((jio (CategoryData.getInstance))).rOOTCATEGORY))
        Control.Monad.void (RootStoreCategoryProperties.initPath this)
        Control.Monad.void (RootStoreCategoryProperties.log this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO RootStoreCategoryProperties
new_2 transformInfoInterface node = do
    this <- newRecord_
    init_2 this transformInfoInterface node
    pure this

init_2 :: RootStoreCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO ()
init_2 this transformInfoInterface node = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        categoryPath <- (CategoryUtil.getNameFromNode node)
        assignedValue <- (AbPath.new_2 categoryPath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).abPath (assignedValue)
        assignedValue <- (AbPathData.getNameFromPath ((jget (this).pathData)) categoryPath)
        jset (this).category (assignedValue)
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).category))) $ do
            jset (this).isRealRoot (True)
            jset (this).category ((jget ((jio (CategoryData.getInstance))).rOOTCATEGORY))
        Control.Monad.void (RootStoreCategoryProperties.initPath this)
        Control.Monad.void (RootStoreCategoryProperties.log this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO RootStoreCategoryProperties
new_2 transformInfoInterface categoryPropertiesHashMap = do
    this <- newRecord_
    init_2 this transformInfoInterface categoryPropertiesHashMap
    pure this

init_2 :: RootStoreCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ()
init_2 this transformInfoInterface categoryPropertiesHashMap = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        categoryPath <- (jnewString (javaCast (jio (HashMap.get categoryPropertiesHashMap (jget ((jio (CategoryData.getInstance))).nAME))) :: String))
        assignedValue <- (AbPath.new_2 categoryPath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).abPath (assignedValue)
        assignedValue <- (AbPathData.getNameFromPath ((jget (this).pathData)) categoryPath)
        jset (this).category (assignedValue)
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).category))) $ do
            jset (this).isRealRoot (True)
            jset (this).category ((jget ((jio (CategoryData.getInstance))).rOOTCATEGORY))
        Control.Monad.void (RootStoreCategoryProperties.initPath this)
        Control.Monad.void (RootStoreCategoryProperties.log this)
        pure ()


-- throws Exception
initPath :: (JavaObjectClass this_) => this_ -> IO (())
initPath object_ = jmethod object_ "initPath" (\() -> (initPath_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

initPath_super :: (JavaObjectClass this_) => this_ -> IO (())
initPath_super object_ = (initPath_impl (javaCast object_ :: RootStoreCategoryProperties))

initPath_impl :: RootStoreCategoryProperties -> IO (())
initPath_impl this = do
        let transformInfoHttpStoreInterface = (javaCast (jget (this).transformInfoInterface) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (TransformInfoHttpInterface.getStoreName transformInfoHttpStoreInterface))))
        let postPath = ((jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface)) + (jio (StoreFrontInterface.getCategoryPath storeFrontInterface)))
        let httpServletRequest = (javaCast (jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext transformInfoHttpStoreInterface))))) :: HttpServletRequest.HttpServletRequest)
        assignedValue <- (AbPath.new_2 (javaToString (jio (HttpServletRequest.getContextPath httpServletRequest)) ++ postPath) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).webAppAbPath (assignedValue)
        Control.Monad.void (RootStoreCategoryProperties.setRootFilePath this (jio (AbPath.new_2 (javaToString (jio (URLGLOBALS.getMainPath)) ++ postPath) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
        pure ()


isRealRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot object_ = jmethod object_ "isRealRoot" (\() -> (isRealRoot_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

isRealRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot_super object_ = (isRealRoot_impl (javaCast object_ :: RootStoreCategoryProperties))

isRealRoot_impl :: RootStoreCategoryProperties -> IO (Bool)
isRealRoot_impl this = do
        pure ((jget (this).isRealRoot))


isRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot object_ = jmethod object_ "isRoot" (\() -> (isRoot_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

isRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot_super object_ = (isRoot_impl (javaCast object_ :: RootStoreCategoryProperties))

isRoot_impl :: RootStoreCategoryProperties -> IO (Bool)
isRoot_impl this = do
        pure (True)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: RootStoreCategoryProperties))

getKey_impl :: RootStoreCategoryProperties -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (RootStoreCategoryProperties.getValue this)) :: Any.Any)))


setPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: RootStoreCategoryProperties))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: RootStoreCategoryProperties)) a1

setPath_impl :: RootStoreCategoryProperties -> AbPath.AbPath -> IO (())
setPath_impl this path = do
        jset (this).abPath (path)
        pure ()


setRootFilePath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath object_ a1 = jmethod object_ "setRootFilePath" (\() -> (setRootFilePath_impl (javaCast object_ :: RootStoreCategoryProperties))) () a1

setRootFilePath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath_super object_ a1 = (setRootFilePath_impl (javaCast object_ :: RootStoreCategoryProperties)) a1

setRootFilePath_impl :: RootStoreCategoryProperties -> AbPath.AbPath -> IO (())
setRootFilePath_impl this value = do
        jset (this).fileAbPath (value)
        pure ()


getRootFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath object_ = jmethod object_ "getRootFilePath" (\() -> (getRootFilePath_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

getRootFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath_super object_ = (getRootFilePath_impl (javaCast object_ :: RootStoreCategoryProperties))

getRootFilePath_impl :: RootStoreCategoryProperties -> IO (AbPath.AbPath)
getRootFilePath_impl this = do
        pure ((jget (this).fileAbPath))


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: RootStoreCategoryProperties))

getValue_impl :: RootStoreCategoryProperties -> IO (String)
getValue_impl this = do
        pure ((jget (this).category))


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: RootStoreCategoryProperties))

getWebAppPath_impl :: RootStoreCategoryProperties -> IO (AbPath.AbPath)
getWebAppPath_impl this = do
        pure ((jget (this).webAppAbPath))


getPath :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath object_ a1 = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: RootStoreCategoryProperties))) () a1

getPath_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_super object_ a1 = (getPath_impl (javaCast object_ :: RootStoreCategoryProperties)) a1

getPath_impl :: RootStoreCategoryProperties -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_impl this categoryHierarchyInterface = do
        pure ((jget (this).abPath))


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: RootStoreCategoryProperties))

getFileName_impl :: RootStoreCategoryProperties -> IO (String)
getFileName_impl this = do
        pure ((((jio (RootStoreCategoryProperties.getValue this)) + (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) + (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION)))


setValue :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: RootStoreCategoryProperties))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: RootStoreCategoryProperties)) a1

setValue_impl :: RootStoreCategoryProperties -> String -> IO (())
setValue_impl this value = do
        jset (this).category (value)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: RootStoreCategoryProperties))

isValid_impl :: RootStoreCategoryProperties -> IO (Bool)
isValid_impl this = do
        pure (True)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: RootStoreCategoryProperties))

toHashMap_impl :: RootStoreCategoryProperties -> IO (HashMap.HashMap)
toHashMap_impl this = do
        categoryHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put categoryHashMap (jget ((jio (CategoryData.getInstance))).nAME) (jio (RootStoreCategoryProperties.getValue this)))
        pure (categoryHashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: RootStoreCategoryProperties))

toVector_impl :: RootStoreCategoryProperties -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        categoryVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add categoryVector (jio (RootStoreCategoryProperties.getValue this)))
        pure (categoryVector)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: RootStoreCategoryProperties))

toValidationInfoDoc_impl :: RootStoreCategoryProperties -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: RootStoreCategoryProperties))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: RootStoreCategoryProperties)) a1

toValidationInfoNode_impl :: RootStoreCategoryProperties -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: RootStoreCategoryProperties))

validationInfo_impl :: RootStoreCategoryProperties -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: RootStoreCategoryProperties))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: RootStoreCategoryProperties))

log_impl :: RootStoreCategoryProperties -> IO (())
log_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "filePath = "))) (jio (AbPath.toString ((jget (this).fileAbPath))))))) "\npath = "))) (jio (AbPath.toString ((jget (this).abPath))))))) "\ncategory = "))) (jget (this).category)))))) this "log()")
        pure ()


