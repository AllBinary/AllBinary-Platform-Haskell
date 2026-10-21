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
-- package org.allbinary.business.category
module Category where

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
import qualified CategoryHierarchy -- org.allbinary.business.category.hierarchy.CategoryHierarchy
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified RootCategoryPropertiesInterface -- org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CategoryInterface

-- implements CategoryInterface
data Category = Category
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , categoryHierarchyInterface :: IORef (CategoryHierarchyInterface.CategoryHierarchyInterface)
    , categoryPropertiesInterface :: IORef (CategoryPropertiesInterface.CategoryPropertiesInterface)
    , childCategoryVector :: IORef (BasicArrayList.BasicArrayList)
    , typeVector :: IORef (BasicArrayList.BasicArrayList)
    , pROPERTIES :: IORef (Int)
    , cATEGORY :: IORef (Int)
    }

instance JavaNull Category where
    javaNull = javaNullRecord "Category"

instance JavaEquals Category where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Category where
    (==) = jrecordEquals

instance JavaObjectClass Category where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nOT_ROOT = "This is not the root so it has no file path."

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Category
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    categoryHierarchyInterface <- newIORef javaNull
    categoryPropertiesInterface <- newIORef javaNull
    childCategoryVector <- newIORef javaNull
    typeVector <- newIORef javaNull
    pROPERTIES <- newIORef javaNull
    cATEGORY <- newIORef javaNull
    let this = Category header_ logUtil commonStrings categoryHierarchyInterface categoryPropertiesInterface childCategoryVector typeVector pROPERTIES cATEGORY
    jregisterLevel header_ this
    CategoryInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getRootFilePath" (\() -> getRootFilePath_impl this)
    jregisterMethod header_ "getFilePath" (\() -> getFilePath_impl this)
    jregisterMethod header_ "getWebAppPath" (\() -> getWebAppPath_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "addChildProperty" (\() -> addChildProperty_impl this)
    jregisterMethod header_ "addChild" (\() -> addChild_impl this)
    jregisterMethod header_ "getChildNodes" (\() -> getChildNodes_impl this)
    jregisterMethod header_ "removeChild" (\() -> removeChild_impl this)
    jregisterMethod header_ "removal" (\() -> removal_impl this)
    jregisterMethod header_ "removeDuplicateChild" (\() -> removeDuplicateChild_impl this)
    jregisterMethod header_ "isLeaf" (\() -> isLeaf_impl this)
    jregisterMethod header_ "getProperties" (\() -> getProperties_impl this)
    jregisterMethod header_ "setProperties" (\() -> setProperties_impl this)
    jregisterMethod header_ "getHierarchy" (\() -> getHierarchy_impl this)
    jregisterMethod header_ "setHierarchy" (\() -> setHierarchy_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: Category -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.categoryHierarchyInterface (javaNull)
    jset this.categoryPropertiesInterface (javaNull)
    jset this.childCategoryVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.typeVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.pROPERTIES ((Prelude.fromIntegral (1) :: Int))
    jset this.cATEGORY ((Prelude.fromIntegral (0) :: Int))
    pure ()

new_1 :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO Category
new_1 categoryPropertiesFactoryInterface = do
    this <- newRecord_
    init_1 this categoryPropertiesFactoryInterface
    pure this

init_1 :: Category -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO ()
init_1 this categoryPropertiesFactoryInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this "Category(CategoryPropertiesFactoryInterface)")
        assignedValue <- (CategoryPropertiesFactoryInterface.getInstance categoryPropertiesFactoryInterface)
        jset (this).categoryPropertiesInterface (assignedValue)
        jset (this).categoryHierarchyInterface ((javaCast (jio (CategoryHierarchy.new_2 this this)) :: CategoryHierarchyInterface.CategoryHierarchyInterface))
        Control.Monad.void (Category.log this)
        pure ()

new_2 :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO Category
new_2 categoryPropertiesFactoryInterface level = do
    this <- newRecord_
    init_2 this categoryPropertiesFactoryInterface level
    pure this

init_2 :: Category -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO ()
init_2 this categoryPropertiesFactoryInterface level = do
        initFields_ this
        assignedValue <- (CategoryPropertiesFactoryInterface.getInstance categoryPropertiesFactoryInterface)
        jset (this).categoryPropertiesInterface (assignedValue)
        jset (this).categoryHierarchyInterface ((javaCast (jio (CategoryHierarchy.new_3 this this level)) :: CategoryHierarchyInterface.CategoryHierarchyInterface))
        Control.Monad.void (Category.log this)
        pure ()

new_3 :: CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO Category
new_3 rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
    this <- newRecord_
    init_3 this rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface
    pure this

init_3 :: Category -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO ()
init_3 this rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (CategoryPropertiesFactoryInterface.getInstance categoryPropertiesFactoryInterface)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        jset (this).categoryHierarchyInterface ((javaCast (jio (CategoryHierarchy.new_2 rootCategoryInterface parentCategoryInterface)) :: CategoryHierarchyInterface.CategoryHierarchyInterface))
        Control.Monad.void (Category.log this)
        pure ()


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: Category))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: Category))

getKey_impl :: Category -> IO (Any.Any)
getKey_impl this = do
        (fmap jtoObject (CategoryPropertiesInterface.getKey ((jget (this).categoryPropertiesInterface))))


-- throws Exception
getRootFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath object_ = jmethod object_ "getRootFilePath" (\() -> (getRootFilePath_impl (javaCast object_ :: Category))) ()

getRootFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath_super object_ = (getRootFilePath_impl (javaCast object_ :: Category))

getRootFilePath_impl :: Category -> IO (AbPath.AbPath)
getRootFilePath_impl this = do
        rootAbPath <- newIORef =<< (AbPath.new_2 nOT_ROOT (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        categoryInterface <- (CategoryHierarchyInterface.getRoot ((jget (this).categoryHierarchyInterface)))
        when (jio (CategoryInterface.isRoot ((jio (CategoryInterface.getProperties categoryInterface))))) $ do
            let rootCategoryPropertiesInterface = (javaCast (jio (CategoryInterface.getProperties categoryInterface)) :: RootCategoryPropertiesInterface.RootCategoryPropertiesInterface)
            assignedValue <- (RootCategoryPropertiesInterface.getRootFilePath rootCategoryPropertiesInterface)
            jset rootAbPath (assignedValue)
        pure ((jget rootAbPath))


-- throws Exception
getFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getFilePath object_ = jmethod object_ "getFilePath" (\() -> (getFilePath_impl (javaCast object_ :: Category))) ()

getFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getFilePath_super object_ = (getFilePath_impl (javaCast object_ :: Category))

getFilePath_impl :: Category -> IO (AbPath.AbPath)
getFilePath_impl this = do
        (AbPath.new_2 ((jio (AbPath.toString ((jio (Category.getRootFilePath this))))) ++ (jio (CategoryPropertiesInterface.toString ((jio (CategoryPropertiesInterface.getPath ((jio (Category.getProperties this))) (jio (Category.getHierarchy this)))))))) (jio (CategoryPropertiesInterface.getFileName ((jio (Category.getProperties this))))))


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: Category))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: Category))

getWebAppPath_impl :: Category -> IO (AbPath.AbPath)
getWebAppPath_impl this = do
        categoryInterface <- (CategoryHierarchyInterface.getRoot ((jget (this).categoryHierarchyInterface)))
        (CategoryInterface.getWebAppPath ((jio (CategoryInterface.getProperties categoryInterface))))


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: Category))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getPath_super object_ = (getPath_impl (javaCast object_ :: Category))

getPath_impl :: Category -> IO (AbPath.AbPath)
getPath_impl this = do
        (CategoryPropertiesInterface.getPath ((jget (this).categoryPropertiesInterface)) (jget (this).categoryHierarchyInterface))


addChildProperty :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty object_ a1 = jmethod object_ "addChildProperty" (\() -> (addChildProperty_impl (javaCast object_ :: Category))) () a1

addChildProperty_super :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty_super object_ a1 = (addChildProperty_impl (javaCast object_ :: Category)) a1

addChildProperty_impl :: Category -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty_impl this categoryPropertiesInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).typeVector)) (jget (this).pROPERTIES))
        (BasicArrayList.add ((jget (this).childCategoryVector)) categoryPropertiesInterface)


addChild :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
addChild object_ a1 = jmethod object_ "addChild" (\() -> (addChild_impl (javaCast object_ :: Category))) () a1

addChild_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
addChild_super object_ a1 = (addChild_impl (javaCast object_ :: Category)) a1

addChild_impl :: Category -> CategoryInterface.CategoryInterface -> IO (Bool)
addChild_impl this categoryInterface = do
        Control.Monad.void (Category.removeDuplicateChild this categoryInterface)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "adding" this "addChild")
        childCategoryHierarchyInterface <- (CategoryInterface.getHierarchy categoryInterface)
        Control.Monad.void (CategoryHierarchyInterface.setParent childCategoryHierarchyInterface this)
        Control.Monad.void (CategoryHierarchyInterface.setRoot childCategoryHierarchyInterface (jio (CategoryHierarchyInterface.getRoot ((jio (Category.getHierarchy this))))))
        Control.Monad.void (CategoryInterface.setHierarchy categoryInterface childCategoryHierarchyInterface)
        Control.Monad.void (BasicArrayList.add ((jget (this).typeVector)) (jget (this).cATEGORY))
        (BasicArrayList.add ((jget (this).childCategoryVector)) categoryInterface)


getChildNodes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getChildNodes object_ = jmethod object_ "getChildNodes" (\() -> (getChildNodes_impl (javaCast object_ :: Category))) ()

getChildNodes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getChildNodes_super object_ = (getChildNodes_impl (javaCast object_ :: Category))

getChildNodes_impl :: Category -> IO (BasicArrayList.BasicArrayList)
getChildNodes_impl this = do
        pure ((jget (this).childCategoryVector))


removeChild :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
removeChild object_ a1 = jmethod object_ "removeChild" (\() -> (removeChild_impl (javaCast object_ :: Category))) () a1

removeChild_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
removeChild_super object_ a1 = (removeChild_impl (javaCast object_ :: Category)) a1

removeChild_impl :: Category -> CategoryInterface.CategoryInterface -> IO (Bool)
removeChild_impl this categoryInterface = do
        removalVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        bool_return <- newIORef (False)
        size <- (BasicArrayList.size ((jget (this).childCategoryVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jget (this).cATEGORY) == (jio (BasicArrayList.get ((jget (this).typeVector)) index))) $ do
                anyType <- (BasicArrayList.get ((jget (this).childCategoryVector)) index)
                let currentCategoryInterface = (javaCast anyType :: CategoryInterface.CategoryInterface)
                when ((jio (CategoryInterface.compareTo ((jio (CategoryInterface.getValue ((jio (CategoryInterface.getProperties currentCategoryInterface)))))) (jio (CategoryInterface.getValue ((jio (CategoryInterface.getProperties categoryInterface))))))) == 0) $ do
                    Control.Monad.void (BasicArrayList.add removalVector currentCategoryInterface)
                    jset bool_return (True)
        Control.Monad.void (Category.removal this removalVector)
        pure ((jget bool_return))


removal :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removal object_ a1 = jmethod object_ "removal" (\() -> (removal_impl (javaCast object_ :: Category))) () a1

removal_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removal_super object_ a1 = (removal_impl (javaCast object_ :: Category)) a1

removal_impl :: Category -> BasicArrayList.BasicArrayList -> IO (())
removal_impl this removalVector = do
        removalSize <- (BasicArrayList.size removalVector)
        forM_ [0 .. removalSize - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get removalVector index)
            objectIndex <- (BasicArrayList.indexOf ((jget (this).childCategoryVector)) anyType)
            Control.Monad.void (BasicArrayList.remove ((jget (this).typeVector)) objectIndex)
            Control.Monad.void (BasicArrayList.remove ((jget (this).childCategoryVector)) objectIndex)
        pure ()


removeDuplicateChild :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
removeDuplicateChild object_ a1 = jmethod object_ "removeDuplicateChild" (\() -> (removeDuplicateChild_impl (javaCast object_ :: Category))) () a1

removeDuplicateChild_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Bool)
removeDuplicateChild_super object_ a1 = (removeDuplicateChild_impl (javaCast object_ :: Category)) a1

removeDuplicateChild_impl :: Category -> CategoryInterface.CategoryInterface -> IO (Bool)
removeDuplicateChild_impl this categoryInterface = do
        removalVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        bool_return <- newIORef (False)
        size <- (BasicArrayList.size ((jget (this).childCategoryVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get ((jget (this).childCategoryVector)) index)
            if ((jget (this).pROPERTIES) == (jio (BasicArrayList.get ((jget (this).typeVector)) index))) then do
                let categoryPropertiesInterface = (javaCast anyType :: CategoryPropertiesInterface.CategoryPropertiesInterface)
                when ((jio (CategoryInterface.compareTo ((jio (CategoryInterface.getValue ((jio (CategoryInterface.getProperties categoryInterface)))))) (jio (CategoryPropertiesInterface.getValue categoryPropertiesInterface)))) == 0) $ do
                    Control.Monad.void (BasicArrayList.add removalVector categoryPropertiesInterface)
                    jset bool_return (True)
                    throwIO JavaBreak
            else when ((jget (this).cATEGORY) == (jio (BasicArrayList.get ((jget (this).typeVector)) index))) $ do
                let existingCategoryInterface = (javaCast anyType :: CategoryInterface.CategoryInterface)
                categoryPropertiesInterface <- (CategoryInterface.getProperties existingCategoryInterface)
                when ((jio (CategoryInterface.compareTo ((jio (CategoryInterface.getValue ((jio (CategoryInterface.getProperties categoryInterface)))))) (jio (CategoryPropertiesInterface.getValue categoryPropertiesInterface)))) == 0) $ do
                    Control.Monad.void (BasicArrayList.add removalVector existingCategoryInterface)
                    jset bool_return (True)
                    throwIO JavaBreak
        Control.Monad.void (Category.removal this removalVector)
        pure ((jget bool_return))


-- throws Exception
isLeaf :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLeaf object_ = jmethod object_ "isLeaf" (\() -> (isLeaf_impl (javaCast object_ :: Category))) ()

isLeaf_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLeaf_super object_ = (isLeaf_impl (javaCast object_ :: Category))

isLeaf_impl :: Category -> IO (Bool)
isLeaf_impl this = do
    javaCatchReturn $ do
        when ((jget (this).childCategoryVector) == javaNull) $ do
            javaThrow ((JavaException "Exception" "Category Error"))
        if ((jio (BasicArrayList.size ((jget (this).childCategoryVector)))) == 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


getProperties :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties object_ = jmethod object_ "getProperties" (\() -> (getProperties_impl (javaCast object_ :: Category))) ()

getProperties_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties_super object_ = (getProperties_impl (javaCast object_ :: Category))

getProperties_impl :: Category -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties_impl this = do
        pure ((jget (this).categoryPropertiesInterface))


setProperties :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties object_ a1 = jmethod object_ "setProperties" (\() -> (setProperties_impl (javaCast object_ :: Category))) () a1

setProperties_super :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties_super object_ a1 = (setProperties_impl (javaCast object_ :: Category)) a1

setProperties_impl :: Category -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties_impl this categoryPropertiesInterface = do
        jset (this).categoryPropertiesInterface (categoryPropertiesInterface)
        pure ()


getHierarchy :: (JavaObjectClass this_) => this_ -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy object_ = jmethod object_ "getHierarchy" (\() -> (getHierarchy_impl (javaCast object_ :: Category))) ()

getHierarchy_super :: (JavaObjectClass this_) => this_ -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy_super object_ = (getHierarchy_impl (javaCast object_ :: Category))

getHierarchy_impl :: Category -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy_impl this = do
        pure ((jget (this).categoryHierarchyInterface))


setHierarchy :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy object_ a1 = jmethod object_ "setHierarchy" (\() -> (setHierarchy_impl (javaCast object_ :: Category))) () a1

setHierarchy_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy_super object_ a1 = (setHierarchy_impl (javaCast object_ :: Category)) a1

setHierarchy_impl :: Category -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy_impl this categoryHierarchyInterface = do
        jset (this).categoryHierarchyInterface (categoryHierarchyInterface)
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Category))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Category))

isValid_impl :: Category -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        when (Prelude.not (jio (CategoryPropertiesInterface.booleanValue ((jio (CategoryPropertiesInterface.isValid ((jget (this).categoryPropertiesInterface)))))))) $ do
            javaReturn (False)
        size <- (BasicArrayList.size ((jget (this).childCategoryVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get ((jget (this).childCategoryVector)) index)
            if ((jget (this).pROPERTIES) == (jio (BasicArrayList.get ((jget (this).typeVector)) index))) then do
                let categoryPropertiesInterface = (javaCast anyType :: CategoryPropertiesInterface.CategoryPropertiesInterface)
                when (Prelude.not (jio (CategoryPropertiesInterface.booleanValue ((jio (CategoryPropertiesInterface.isValid categoryPropertiesInterface)))))) $ do
                    javaReturn (False)
            else when ((jget (this).cATEGORY) == (jio (BasicArrayList.get ((jget (this).typeVector)) index))) $ do
                let categoryInterface = (javaCast anyType :: CategoryInterface.CategoryInterface)
                when (Prelude.not (jio (CategoryInterface.booleanValue ((jio (CategoryInterface.isValid categoryInterface)))))) $ do
                    javaReturn (False)
        pure (True)


-- throws Exception
toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: Category))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: Category))

toValidationInfoDoc_impl :: Category -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


-- throws Exception
toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: Category))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: Category)) a1

toValidationInfoNode_impl :: Category -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: Category))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: Category))

validationInfo_impl :: Category -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: Category))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: Category))

toHashMap_impl :: Category -> IO (HashMap.HashMap)
toHashMap_impl this = do
        categoryHashMap <- (CategoryPropertiesInterface.toHashMap ((jget (this).categoryPropertiesInterface)))
        pure (categoryHashMap)


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: Category))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: Category))

toVector_impl :: Category -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        categoryVector <- (CategoryPropertiesInterface.toVector ((jget (this).categoryPropertiesInterface)))
        Control.Monad.void (BasicArrayList.add categoryVector (jget (this).childCategoryVector))
        pure (categoryVector)


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: Category))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: Category))

log_impl :: Category -> IO (())
log_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Category Name: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (CategoryPropertiesInterface.getValue ((jget (this).categoryPropertiesInterface)))))
            Control.Monad.void (StringMaker.append stringBuffer "\nPath = ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString ((jio (Category.getPath this))))))
            Control.Monad.void (StringMaker.append stringBuffer "\nFile Path: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString ((jio (Category.getFilePath this))))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "log()")
        pure ()


