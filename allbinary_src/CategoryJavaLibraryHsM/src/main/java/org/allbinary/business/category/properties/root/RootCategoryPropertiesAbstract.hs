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
-- package org.allbinary.business.category.properties.root
module RootCategoryPropertiesAbstract where

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
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified RootCategoryPropertiesInterface

-- implements RootCategoryPropertiesInterface
data RootCategoryPropertiesAbstract = RootCategoryPropertiesAbstract
    { header_ :: JavaHeader
    , category :: IORef (String)
    , fileName :: IORef (String)
    }

instance JavaNull RootCategoryPropertiesAbstract where
    javaNull = javaNullRecord "RootCategoryPropertiesAbstract"

instance JavaEquals RootCategoryPropertiesAbstract where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootCategoryPropertiesAbstract where
    (==) = jrecordEquals

instance JavaObjectClass RootCategoryPropertiesAbstract where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RootCategoryPropertiesAbstract
newRecord_ = do
    header_ <- newJavaHeader
    category <- newIORef ""
    fileName <- newIORef ""
    let this = RootCategoryPropertiesAbstract header_ category fileName
    jregisterLevel header_ this
    RootCategoryPropertiesInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "setRootFilePath_overload1" (\() -> setRootFilePath_overload1_impl this)
    jregisterMethod header_ "setRootFilePath_overload2" (\() -> setRootFilePath_overload2_impl this)
    jregisterMethod header_ "getRootFilePath" (\() -> getRootFilePath_impl this)
    jregisterMethod header_ "isRealRoot" (\() -> isRealRoot_impl this)
    jregisterMethod header_ "isRoot" (\() -> isRoot_impl this)
    jregisterMethod header_ "getWebAppPath" (\() -> getWebAppPath_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getFileName" (\() -> getFileName_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: RootCategoryPropertiesAbstract -> IO ()
initFields_ this = do
    jset this.category ((jget ((jio (CategoryData.getInstance))).rOOTCATEGORY))
    jset this.fileName ((((jget (this).category) ++ javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) ++ javaToString (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION)))
    pure ()

new_ :: IO RootCategoryPropertiesAbstract
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RootCategoryPropertiesAbstract -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

getKey_impl :: RootCategoryPropertiesAbstract -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (RootCategoryPropertiesAbstract.getValue this)) :: Any.Any)))


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

getValue_impl :: RootCategoryPropertiesAbstract -> IO (String)
getValue_impl this = do
        pure ((jget (this).category))


-- throws Exception
setValue :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

setValue_impl :: RootCategoryPropertiesAbstract -> String -> IO (())
setValue_impl this value = do
        javaThrow ((JavaException "Exception" "No Value Allowed"))
        pure ()


-- Java overloads of setRootFilePath: calls the overload for the types of the arguments
setRootFilePath :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setRootFilePath this a1
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) = setRootFilePath_overload1 this (javaCast a1 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) = setRootFilePath_overload2 this (javaCast a1 :: String)
    | otherwise = setRootFilePath_overload2 this (javaCast a1 :: String)

-- throws Exception
setRootFilePath_overload1 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath_overload1 object_ a1 = jmethod object_ "setRootFilePath_overload1" (\() -> (setRootFilePath_overload1_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

setRootFilePath_overload1_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath_overload1_super object_ a1 = (setRootFilePath_overload1_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

setRootFilePath_overload1_impl :: RootCategoryPropertiesAbstract -> AbPath.AbPath -> IO (())
setRootFilePath_overload1_impl this value = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
setRootFilePath_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRootFilePath_overload2 object_ a1 = jmethod object_ "setRootFilePath_overload2" (\() -> (setRootFilePath_overload2_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

setRootFilePath_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRootFilePath_overload2_super object_ a1 = (setRootFilePath_overload2_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

setRootFilePath_overload2_impl :: RootCategoryPropertiesAbstract -> String -> IO (())
setRootFilePath_overload2_impl this value = do
        javaThrow ((JavaException "Exception" "No Value Allowed"))
        pure ()


-- throws Exception
getRootFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath object_ = jmethod object_ "getRootFilePath" (\() -> (getRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

getRootFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath_super object_ = (getRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

getRootFilePath_impl :: RootCategoryPropertiesAbstract -> IO (AbPath.AbPath)
getRootFilePath_impl this = do
        javaThrow ((JavaException "Exception" "No Value Allowed"))


-- throws Exception
isRealRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot object_ = jmethod object_ "isRealRoot" (\() -> (isRealRoot_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

isRealRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot_super object_ = (isRealRoot_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

isRealRoot_impl :: RootCategoryPropertiesAbstract -> IO (Bool)
isRealRoot_impl this = do
        javaThrow ((JavaException "Exception" "No A Real Root"))


-- throws Exception
isRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot object_ = jmethod object_ "isRoot" (\() -> (isRoot_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

isRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot_super object_ = (isRoot_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

isRoot_impl :: RootCategoryPropertiesAbstract -> IO (Bool)
isRoot_impl this = do
        javaThrow ((JavaException "Exception" "Root but not implemented"))


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (String)
getWebAppPath object_ a1 = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (String)
getWebAppPath_super object_ a1 = (getWebAppPath_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

getWebAppPath_impl :: RootCategoryPropertiesAbstract -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (String)
getWebAppPath_impl this categoryHierarchyInterface = do
        javaThrow ((JavaException "Exception" "Not Root"))


getPath :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath object_ a1 = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

getPath_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_super object_ a1 = (getPath_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

getPath_impl :: RootCategoryPropertiesAbstract -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_impl this categoryHierarchyInterface = do
        (AbPath.createAbPath)


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

getFileName_impl :: RootCategoryPropertiesAbstract -> IO (String)
getFileName_impl this = do
        pure ((jget (this).fileName))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

isValid_impl :: RootCategoryPropertiesAbstract -> IO (Bool)
isValid_impl this = do
        pure (True)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

toHashMap_impl :: RootCategoryPropertiesAbstract -> IO (HashMap.HashMap)
toHashMap_impl this = do
        categoryHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put categoryHashMap (jget ((jio (CategoryData.getInstance))).nAME) (jget (this).category))
        pure (categoryHashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

toVector_impl :: RootCategoryPropertiesAbstract -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        categoryVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add categoryVector (jget (this).category))
        pure (categoryVector)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

toValidationInfoDoc_impl :: RootCategoryPropertiesAbstract -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: RootCategoryPropertiesAbstract)) a1

toValidationInfoNode_impl :: RootCategoryPropertiesAbstract -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: RootCategoryPropertiesAbstract))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: RootCategoryPropertiesAbstract))

validationInfo_impl :: RootCategoryPropertiesAbstract -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


