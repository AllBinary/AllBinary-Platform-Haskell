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
-- package org.allbinary.business.category.properties
module CategoryProperties where

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
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified CategoryUtil -- org.allbinary.business.category.CategoryUtil
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CategoryPropertiesInterface

-- implements CategoryPropertiesInterface
data CategoryProperties = CategoryProperties
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , category :: IORef (String)
    }

instance JavaNull CategoryProperties where
    javaNull = javaNullRecord "CategoryProperties"

instance JavaEquals CategoryProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryProperties where
    (==) = jrecordEquals

instance JavaObjectClass CategoryProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXDEPTH = 100

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryProperties
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    category <- newIORef ""
    let this = CategoryProperties header_ logUtil category
    jregisterLevel header_ this
    CategoryPropertiesInterface.registerInterface_ header_
    jregisterMethod header_ "isRealRoot" (\() -> isRealRoot_impl this)
    jregisterMethod header_ "isRoot" (\() -> isRoot_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "getFileName" (\() -> getFileName_impl this)
    jregisterMethod header_ "getWebAppPath" (\() -> getWebAppPath_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: CategoryProperties -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.category (javaNull)
    pure ()

new_1 :: String -> IO CategoryProperties
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: CategoryProperties -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).category (name)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO CategoryProperties
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CategoryProperties -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        assignedValue <- (CategoryUtil.getNameFromNode node)
        jset (this).category (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO CategoryProperties
new_1 categoryPropertiesHashMap = do
    this <- newRecord_
    init_1 this categoryPropertiesHashMap
    pure this

init_1 :: CategoryProperties -> HashMap.HashMap -> IO ()
init_1 this categoryPropertiesHashMap = do
        initFields_ this
        assignedValue <- (jnewString (javaCast (jio (HashMap.get categoryPropertiesHashMap (jget ((jio (CategoryData.getInstance))).nAME))) :: String))
        jset (this).category (assignedValue)
        pure ()


isRealRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot object_ = jmethod object_ "isRealRoot" (\() -> (isRealRoot_impl (javaCast object_ :: CategoryProperties))) ()

isRealRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot_super object_ = (isRealRoot_impl (javaCast object_ :: CategoryProperties))

isRealRoot_impl :: CategoryProperties -> IO (Bool)
isRealRoot_impl this = do
        pure (False)


isRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot object_ = jmethod object_ "isRoot" (\() -> (isRoot_impl (javaCast object_ :: CategoryProperties))) ()

isRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot_super object_ = (isRoot_impl (javaCast object_ :: CategoryProperties))

isRoot_impl :: CategoryProperties -> IO (Bool)
isRoot_impl this = do
        pure (False)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: CategoryProperties))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: CategoryProperties))

getKey_impl :: CategoryProperties -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (CategoryProperties.getValue this)) :: Any.Any)))


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: CategoryProperties))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: CategoryProperties))

getValue_impl :: CategoryProperties -> IO (String)
getValue_impl this = do
        pure ((jget (this).category))


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath object_ a1 = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: CategoryProperties))) () a1

getPath_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_super object_ a1 = (getPath_impl (javaCast object_ :: CategoryProperties)) a1

getPath_impl :: CategoryProperties -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_impl this categoryHierarchyInterface = do
        abPathData <- (AbPathData.getInstance)
        pathStringBuffer <- (StringMaker.new_)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        nextParentCategoryInterface <- newIORef =<< (CategoryHierarchyInterface.getParent categoryHierarchyInterface)
        when (this /= (jio (CategoryInterface.getProperties ((jget nextParentCategoryInterface))))) $ do
            depthIndex <- newIORef (0)
            fix $ \loop -> when ((jget nextParentCategoryInterface) /= javaNull) $ javaIteration (loop) $ do
                when (jio (CategoryInterface.isRealRoot ((jio (CategoryInterface.getProperties ((jget nextParentCategoryInterface))))))) $ do
                    throwIO JavaBreak
                if (jio (CategoryInterface.isRoot ((jio (CategoryInterface.getProperties ((jget nextParentCategoryInterface))))))) then do
                    Control.Monad.void (BasicArrayList.addAt list 0 (jio (CategoryInterface.toString ((jio (CategoryInterface.getPath ((jget nextParentCategoryInterface))))))))
                else do
                    Control.Monad.void (StringMaker.delete pathStringBuffer 0 (jio (StringMaker.length pathStringBuffer)))
                    Control.Monad.void (BasicArrayList.addAt list 0 (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append pathStringBuffer (jget (abPathData).sEPARATOR)))) (jio (CategoryInterface.getValue ((jio (CategoryInterface.getProperties ((jget nextParentCategoryInterface)))))))))))))
                when ((jget nextParentCategoryInterface) == (jio (CategoryInterface.getParent ((jio (CategoryInterface.getHierarchy ((jget nextParentCategoryInterface)))))))) $ do
                    throwIO JavaBreak
                assignedValue <- (CategoryInterface.getParent ((jio (CategoryInterface.getHierarchy ((jget nextParentCategoryInterface))))))
                jset nextParentCategoryInterface (assignedValue)
                jset depthIndex ((jget depthIndex) + 1)
                when ((jget depthIndex) > CategoryProperties.mAXDEPTH) $ do
                    javaThrow ((JavaException "Exception" "Probably Major Error"))
        Control.Monad.void (StringMaker.delete pathStringBuffer 0 (jio (StringMaker.length pathStringBuffer)))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append pathStringBuffer (jget (abPathData).sEPARATOR)))) (jio (CategoryProperties.getValue this)))
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append pathStringBuffer (javaCast (jio (BasicArrayList.get list index)) :: String))
        Control.Monad.void (StringMaker.append pathStringBuffer (jget (abPathData).sEPARATOR))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("path = " ++ (jio (StringMaker.toString pathStringBuffer))) this "getPath")
        (AbPath.new_2 (jio (StringMaker.toString pathStringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: CategoryProperties))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: CategoryProperties))

getFileName_impl :: CategoryProperties -> IO (String)
getFileName_impl this = do
        pure ((((jio (CategoryProperties.getValue this)) + (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) + (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION)))


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: CategoryProperties))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: CategoryProperties))

getWebAppPath_impl :: CategoryProperties -> IO (AbPath.AbPath)
getWebAppPath_impl this = do
        javaThrow ((JavaException "Exception" "Not Root"))


setValue :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: CategoryProperties))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: CategoryProperties)) a1

setValue_impl :: CategoryProperties -> String -> IO (())
setValue_impl this value = do
        jset (this).category (value)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: CategoryProperties))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: CategoryProperties))

isValid_impl :: CategoryProperties -> IO (Bool)
isValid_impl this = do
        returnBoolean <- newIORef (False)
        when (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).category) 1 (AbSqlData.mAXSTRING))) $ do
            jset returnBoolean (True)
        pure ((jget returnBoolean))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: CategoryProperties))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: CategoryProperties))

toHashMap_impl :: CategoryProperties -> IO (HashMap.HashMap)
toHashMap_impl this = do
        categoryHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put categoryHashMap (jget ((jio (CategoryData.getInstance))).nAME) (jget (this).category))
        pure (categoryHashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: CategoryProperties))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: CategoryProperties))

toVector_impl :: CategoryProperties -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        categoryVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add categoryVector (jget (this).category))
        pure (categoryVector)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: CategoryProperties))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: CategoryProperties))

toValidationInfoDoc_impl :: CategoryProperties -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: CategoryProperties))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: CategoryProperties)) a1

toValidationInfoNode_impl :: CategoryProperties -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: CategoryProperties))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: CategoryProperties))

validationInfo_impl :: CategoryProperties -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


