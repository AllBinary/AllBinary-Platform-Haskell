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
-- package org.allbinary.data.tree.category
module CategoryLoader (module CategoryLoader, module CategoryModifierTree) where

import CategoryModifierTree hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDoc, getDoc_super, getDoc_impl, get_overload1, get_overload1_super, get_overload1_impl, get, get_overload2, get_overload2_super, get_overload2_impl, get, getAll_overload1, getAll_overload1_super, getAll_overload1_impl, getAll, getAll_overload2, getAll_overload2_super, getAll_overload2_impl, getAll, getAll_2, getAll_2_super, getAll_2_impl, getAll, addProperties, addProperties_super, addProperties_impl, logUtil)
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
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified CategoryProperties -- org.allbinary.business.category.properties.CategoryProperties
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified CategoryModifierTree
import qualified CategoryLoaderInterface

-- implements CategoryLoaderInterface
data CategoryLoader = CategoryLoader
    { header_ :: JavaHeader
    , base :: CategoryModifierTree.CategoryModifierTree
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CategoryLoader where
    javaNull = javaNullRecord "CategoryLoader"

instance JavaEquals CategoryLoader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryLoader where
    (==) = jrecordEquals

instance JavaObjectClass CategoryLoader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CategoryLoader
newRecord_ = do
    base <- CategoryModifierTree.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = CategoryLoader header_ base logUtil
    jregisterLevel header_ this
    CategoryLoaderInterface.registerInterface_ header_
    jregisterMethod header_ "getDoc" (\() -> getDoc_impl this)
    jregisterMethod header_ "get_overload1" (\() -> get_overload1_impl this)
    jregisterMethod header_ "get_overload2" (\() -> get_overload2_impl this)
    jregisterMethod header_ "getAll_overload1" (\() -> getAll_overload1_impl this)
    jregisterMethod header_ "getAll_overload2" (\() -> getAll_overload2_impl this)
    jregisterMethod header_ "getAll_2" (\() -> getAll_2_impl this)
    jregisterMethod header_ "addProperties" (\() -> addProperties_impl this)
    pure this

initFields_ :: CategoryLoader -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: CategoryFactoryInterface.CategoryFactoryInterface -> IO CategoryLoader
new_1 categoryFactoryInterface = do
    this <- newRecord_
    init_1 this categoryFactoryInterface
    pure this

init_1 :: CategoryLoader -> CategoryFactoryInterface.CategoryFactoryInterface -> IO ()
init_1 this categoryFactoryInterface = do
        CategoryModifierTree.init_1 this.base (categoryFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)")
        pure ()


getDoc :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc object_ a1 = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: CategoryLoader))) () a1

getDoc_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc_super object_ a1 = (getDoc_impl (javaCast object_ :: CategoryLoader)) a1

getDoc_impl :: CategoryLoader -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc_impl this categoryInterface = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                handle (\(e2 :: JavaException) -> do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Could Not Log Category" this "getDoc" e)
                    ) $ do
                    Control.Monad.void (CategoryInterface.log categoryInterface)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "getDoc" e)
            pure (javaNull)
            ) $ do
            if ((jio (CategoryInterface.getPath ((jio (CategoryInterface.getProperties categoryInterface))) (jio (CategoryInterface.getHierarchy categoryInterface)))) /= javaNull) then do
                when ((jio (CategoryInterface.getLevel ((jio (CategoryInterface.getHierarchy categoryInterface))))) == 1) $ do
                    rootAbFile <- (AbFile.createAbFileFromAbPath (jio (CategoryInterface.getRootFilePath categoryInterface)))
                    when (Prelude.not (jio (AbFile.isDirectory rootAbFile))) $ do
                        Control.Monad.void (AbFile.mkdirs rootAbFile)
                        when (Prelude.not (jio (AbFile.isDirectory rootAbFile))) $ do
                            javaThrow ((JavaException "Exception" "Could Not Create Directory"))
                        Control.Monad.void (CategoryModifierTree.save this categoryInterface)
                fileAbPath <- (CategoryInterface.getFilePath categoryInterface)
                cryptFileReader <- (CryptFileReader.new_2 (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (CategoryData.getInstance))).eNCRYPTED_EXTENSION))
                document <- (DomDocumentHelper.create_1 (jio (CryptFileReader.get cryptFileReader fileAbPath)))
                javaReturn (document)
            else do
                javaThrow ((JavaException "Exception" "Null Category"))


-- Java overloads of get: calls the overload for the types of the arguments
get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CategoryInterface.CategoryInterface)
get this a1
    | jisInstanceOf a1 (javaNull :: CategoryInterface.CategoryInterface) = get_overload1 this (javaCast a1 :: CategoryInterface.CategoryInterface)
    | jisInstanceOf a1 (javaNull :: Document.Document) = get_overload2 this (javaCast a1 :: Document.Document)
    | otherwise = get_overload2 this (javaCast a1 :: Document.Document)

get_overload1 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get_overload1 object_ a1 = jmethod object_ "get_overload1" (\() -> (get_overload1_impl (javaCast object_ :: CategoryLoader))) () a1

get_overload1_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get_overload1_super object_ a1 = (get_overload1_impl (javaCast object_ :: CategoryLoader)) a1

get_overload1_impl :: CategoryLoader -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get_overload1_impl this categoryInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            document <- (CategoryLoader.getDoc this categoryInterface)
            categoryNode <- (DomSearchHelper.getNode (jget ((jio (CategoryData.getInstance))).nAME) (jio (Document.getChildNodes document)))
            (CategoryLoader.addProperties this categoryInterface (jio (Node.getChildNodes categoryNode)))


get_overload2 :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (CategoryInterface.CategoryInterface)
get_overload2 object_ a1 = jmethod object_ "get_overload2" (\() -> (get_overload2_impl (javaCast object_ :: CategoryLoader))) () a1

get_overload2_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (CategoryInterface.CategoryInterface)
get_overload2_super object_ a1 = (get_overload2_impl (javaCast object_ :: CategoryLoader)) a1

get_overload2_impl :: CategoryLoader -> Document.Document -> IO (CategoryInterface.CategoryInterface)
get_overload2_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            categoryNode <- (DomSearchHelper.getNode (jget ((jio (CategoryData.getInstance))).nAME) (jio (Document.getChildNodes document)))
            loadedCategoryInterface <- (CategoryFactoryInterface.getRootInstanceFromNode ((jget (this).base.base.categoryFactoryInterface)) categoryNode)
            (CategoryLoader.addProperties this loadedCategoryInterface (jio (Node.getChildNodes categoryNode)))


-- Java overloads of getAll: calls the overload for the types of the arguments
getAll :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CategoryInterface.CategoryInterface)
getAll this a1
    | jisInstanceOf a1 (javaNull :: CategoryInterface.CategoryInterface) = getAll_overload1 this (javaCast a1 :: CategoryInterface.CategoryInterface)
    | jisInstanceOf a1 (javaNull :: Document.Document) = getAll_overload2 this (javaCast a1 :: Document.Document)
    | otherwise = getAll_overload2 this (javaCast a1 :: Document.Document)

getAll_overload1 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll_overload1 object_ a1 = jmethod object_ "getAll_overload1" (\() -> (getAll_overload1_impl (javaCast object_ :: CategoryLoader))) () a1

getAll_overload1_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll_overload1_super object_ a1 = (getAll_overload1_impl (javaCast object_ :: CategoryLoader)) a1

getAll_overload1_impl :: CategoryLoader -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll_overload1_impl this categoryInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            document <- (CategoryLoader.getDoc this categoryInterface)
            (CategoryLoader.getAll this document)


getAll_overload2 :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (CategoryInterface.CategoryInterface)
getAll_overload2 object_ a1 = jmethod object_ "getAll_overload2" (\() -> (getAll_overload2_impl (javaCast object_ :: CategoryLoader))) () a1

getAll_overload2_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (CategoryInterface.CategoryInterface)
getAll_overload2_super object_ a1 = (getAll_overload2_impl (javaCast object_ :: CategoryLoader)) a1

getAll_overload2_impl :: CategoryLoader -> Document.Document -> IO (CategoryInterface.CategoryInterface)
getAll_overload2_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            categoryNode <- (DomSearchHelper.getNode (jget ((jio (CategoryData.getInstance))).nAME) (jio (Document.getChildNodes document)))
            loadedCategoryInterface <- (CategoryFactoryInterface.getRootInstanceFromNode ((jget (this).base.base.categoryFactoryInterface)) categoryNode)
            (CategoryLoader.addProperties this loadedCategoryInterface (jio (Node.getChildNodes categoryNode)))


getAll_2 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
getAll_2 object_ a1 a2 = jmethod object_ "getAll_2" (\() -> (getAll_2_impl (javaCast object_ :: CategoryLoader))) () a1 a2

getAll_2_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
getAll_2_super object_ a1 a2 = (getAll_2_impl (javaCast object_ :: CategoryLoader)) a1 a2

getAll_2_impl :: CategoryLoader -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
getAll_2_impl this parentCategoryInterface categoryNodeList = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            when (categoryNodeList /= javaNull) $ do
                forM_ [0 .. (jio (NodeList.getLength categoryNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                    categoryNode <- (NodeList.item categoryNodeList index)
                    when ((categoryNode /= javaNull) && ((jio (Node.compareTo ((jio (Node.getNodeName categoryNode))) (jget ((jio (CategoryData.getInstance))).nAME))) == 0)) $ do
                        let categoryInterface = (javaCast (jio (CategoryFactoryInterface.getInstance ((jget (this).base.base.categoryFactoryInterface)) (jio (CategoryInterface.getRoot ((jio (CategoryInterface.getHierarchy parentCategoryInterface))))) parentCategoryInterface categoryNode)) :: CategoryInterface.CategoryInterface)
                        Control.Monad.void (CategoryInterface.addChild parentCategoryInterface categoryInterface)
            pure (parentCategoryInterface)


addProperties :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
addProperties object_ a1 a2 = jmethod object_ "addProperties" (\() -> (addProperties_impl (javaCast object_ :: CategoryLoader))) () a1 a2

addProperties_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
addProperties_super object_ a1 a2 = (addProperties_impl (javaCast object_ :: CategoryLoader)) a1 a2

addProperties_impl :: CategoryLoader -> CategoryInterface.CategoryInterface -> NodeList.NodeList -> IO (CategoryInterface.CategoryInterface)
addProperties_impl this loadedCategoryInterface categoryNodeList = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this (jget ((jget (this).base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            when (categoryNodeList /= javaNull) $ do
                forM_ [0 .. (jio (NodeList.getLength categoryNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                    categoryNode <- (NodeList.item categoryNodeList index)
                    when ((categoryNode /= javaNull) && ((jio (Node.compareTo ((jio (Node.getNodeName categoryNode))) (jget ((jio (CategoryData.getInstance))).nAME))) == 0)) $ do
                        let categoryPropertiesInterface = (javaCast (jio (CategoryProperties.new_1 categoryNode)) :: CategoryPropertiesInterface.CategoryPropertiesInterface)
                        Control.Monad.void (CategoryInterface.addChildProperty loadedCategoryInterface categoryPropertiesInterface)
            pure (loadedCategoryInterface)


