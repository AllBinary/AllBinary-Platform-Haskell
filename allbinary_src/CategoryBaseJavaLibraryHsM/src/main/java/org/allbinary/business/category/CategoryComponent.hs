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
module CategoryComponent (module CategoryComponent, module CategoryView) where

import CategoryView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, getTransformDocumentInterface, getTransformDocumentInterface_super, getTransformDocumentInterface_impl, getTransformInfoInterface, getTransformInfoInterface_super, getTransformInfoInterface_impl, setTransformDocumentInterface, setTransformDocumentInterface_super, setTransformDocumentInterface_impl, toXmlDoc, toXmlDoc_super, toXmlDoc_impl, view, view_super, view_impl, nO_TYPE)
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
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified CategoryView

-- implements TransformInterface
data CategoryComponent = CategoryComponent
    { header_ :: JavaHeader
    , base :: CategoryView.CategoryView
    , nO_TYPE :: IORef (Int)
    }

instance JavaNull CategoryComponent where
    javaNull = javaNullRecord "CategoryComponent"

instance JavaEquals CategoryComponent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryComponent where
    (==) = jrecordEquals

instance JavaObjectClass CategoryComponent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CategoryComponent
newRecord_ = do
    base <- CategoryView.newRecord_
    let header_ = base.header_
    nO_TYPE <- newIORef 0
    let this = CategoryComponent header_ base nO_TYPE
    jregisterLevel header_ this
    TransformInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getTransformDocumentInterface" (\() -> getTransformDocumentInterface_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "setTransformDocumentInterface" (\() -> setTransformDocumentInterface_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: CategoryComponent -> IO ()
initFields_ this = do
    jset this.nO_TYPE (0)
    pure ()

new_1 :: CategoryInterface.CategoryInterface -> IO CategoryComponent
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: CategoryComponent -> CategoryInterface.CategoryInterface -> IO ()
init_1 this categoryInterface = do
        CategoryView.init_1 this.base (categoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: CategoryComponent))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: CategoryComponent))

getTypeId_impl :: CategoryComponent -> IO (Int)
getTypeId_impl this = do
        pure ((jget (this).nO_TYPE))


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: CategoryComponent))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: CategoryComponent))

getTransformDocumentInterface_impl :: CategoryComponent -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = do
        pure (javaNull)


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: CategoryComponent))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: CategoryComponent))

getTransformInfoInterface_impl :: CategoryComponent -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure (javaNull)


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: CategoryComponent))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: CategoryComponent)) a1

setTransformDocumentInterface_impl :: CategoryComponent -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this viewDocumentInterface = do
        pure ()


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: CategoryComponent))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: CategoryComponent))

toXmlDoc_impl :: CategoryComponent -> IO (Document.Document)
toXmlDoc_impl this = do
        document <- (DomDocumentHelper.create)
        Control.Monad.void (Document.appendChild document (jio (CategoryView.toXmlNode ((jio (CategoryView.new_1 (jio (CategoryView.getCategoryInterface this))))) document)))
        pure (document)


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: CategoryComponent))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: CategoryComponent))

view_impl :: CategoryComponent -> IO (String)
view_impl this = do
        pure (javaNull)


