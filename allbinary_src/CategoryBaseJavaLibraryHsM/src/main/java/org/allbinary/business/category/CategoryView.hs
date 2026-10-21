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
module CategoryView where

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
import qualified CategoryInterface -- same package or java.lang
import qualified CategoryData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified CategoryPropertiesView -- org.allbinary.business.category.properties.CategoryPropertiesView
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InterfaceUtil -- org.allbinary.logic.java.anyType.InterfaceUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CategoryView = CategoryView
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , categoryInterface :: IORef (CategoryInterface.CategoryInterface)
    }

instance JavaNull CategoryView where
    javaNull = javaNullRecord "CategoryView"

instance JavaEquals CategoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryView where
    (==) = jrecordEquals

instance JavaObjectClass CategoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryView
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    categoryInterface <- newIORef javaNull
    let this = CategoryView header_ logUtil categoryInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getCategoryInterface" (\() -> getCategoryInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CategoryView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.categoryInterface (javaNull)
    pure ()

new_1 :: CategoryInterface.CategoryInterface -> IO CategoryView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: CategoryView -> CategoryInterface.CategoryInterface -> IO ()
init_1 this categoryInterface = do
        initFields_ this
        jset (this).categoryInterface (categoryInterface)
        pure ()


getCategoryInterface :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getCategoryInterface object_ = jmethod object_ "getCategoryInterface" (\() -> (getCategoryInterface_impl (javaCast object_ :: CategoryView))) ()

getCategoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getCategoryInterface_super object_ = (getCategoryInterface_impl (javaCast object_ :: CategoryView))

getCategoryInterface_impl :: CategoryView -> IO (CategoryInterface.CategoryInterface)
getCategoryInterface_impl this = do
        pure ((jget (this).categoryInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CategoryView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CategoryView)) a1

toXmlNode_impl :: CategoryView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget ((jio (CategoryData.getInstance))).nAME))
        childCategoryVector <- (CategoryInterface.getChildNodes ((jget (this).categoryInterface)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Children: " ++ javaToString (jio (BasicArrayList.size childCategoryVector))) this "toXmlNode")
        size <- (BasicArrayList.size childCategoryVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get childCategoryVector i)
            categoryPropertiesInterface <- newIORef (javaNull)
            if (jio (InterfaceUtil.isImplemented "CategoryPropertiesInterface" anyType)) then do
                jset categoryPropertiesInterface ((javaCast anyType :: CategoryPropertiesInterface.CategoryPropertiesInterface))
            else if (jio (InterfaceUtil.isImplemented "CategoryInterface" anyType)) then do
                let categoryInterface = (javaCast anyType :: CategoryInterface.CategoryInterface)
                assignedValue <- (CategoryInterface.getProperties categoryInterface)
                jset categoryPropertiesInterface (assignedValue)
            else do
                isImpl <- (InterfaceUtil.viewAll (jio (jobjectGetClass anyType)) (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
                javaThrow ((JavaException "Exception" (("CategoryView found unknown object.\n" ++ "Show Testing:") ++ isImpl)))
            childCategoryNode <- (CategoryPropertiesView.toXmlNode ((jio (CategoryPropertiesView.new_1 (jget categoryPropertiesInterface)))) document)
            Control.Monad.void (Node.appendChild node childCategoryNode)
        pure (node)


