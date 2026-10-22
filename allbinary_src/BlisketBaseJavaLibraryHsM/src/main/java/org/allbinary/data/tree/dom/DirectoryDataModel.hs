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
-- package org.allbinary.data.tree.dom
module DirectoryDataModel where

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
import qualified FileDomDataModel -- same package or java.lang
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformDocumentFactory
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified DomNodeInterface

-- implements DomNodeInterface
-- implements TransformInterface
data DirectoryDataModel = DirectoryDataModel
    { header_ :: JavaHeader
    , fileBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , transformDocumentInterface :: IORef (TransformDocumentInterface.TransformDocumentInterface)
    , nO_TYPE :: IORef (Int)
    }

instance JavaNull DirectoryDataModel where
    javaNull = javaNullRecord "DirectoryDataModel"

instance JavaEquals DirectoryDataModel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectoryDataModel where
    (==) = jrecordEquals

instance JavaObjectClass DirectoryDataModel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DirectoryDataModel
newRecord_ = do
    header_ <- newJavaHeader
    fileBasicArrayList <- newIORef javaNull
    transformDocumentInterface <- newIORef javaNull
    nO_TYPE <- newIORef 0
    let this = DirectoryDataModel header_ fileBasicArrayList transformDocumentInterface nO_TYPE
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    TransformInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "setTransformDocumentInterface" (\() -> setTransformDocumentInterface_impl this)
    jregisterMethod header_ "getTransformDocumentInterface" (\() -> getTransformDocumentInterface_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: DirectoryDataModel -> IO ()
initFields_ this = do
    jset this.fileBasicArrayList (javaNull)
    jset this.transformDocumentInterface (javaNull)
    jset this.nO_TYPE (0)
    pure ()

new_1 :: AbFile.AbFile -> IO DirectoryDataModel
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: DirectoryDataModel -> AbFile.AbFile -> IO ()
init_1 this file = do
        initFields_ this
        assignedValue <- (Directory.search_1 ((jio (Directory.getInstance))) file)
        jset (this).fileBasicArrayList (assignedValue)
        jset (this).transformDocumentInterface ((javaCast (jio (TransformDocumentFactory.getInstance)) :: TransformDocumentInterface.TransformDocumentInterface))
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: DirectoryDataModel))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: DirectoryDataModel))

getTypeId_impl :: DirectoryDataModel -> IO (Int)
getTypeId_impl this = do
        pure ((jget (this).nO_TYPE))


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: DirectoryDataModel))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: DirectoryDataModel))

getTransformInfoInterface_impl :: DirectoryDataModel -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure (javaNull)


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: DirectoryDataModel))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: DirectoryDataModel)) a1

setTransformDocumentInterface_impl :: DirectoryDataModel -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this transformDocumentInterface = do
        jset (this).transformDocumentInterface (transformDocumentInterface)
        pure ()


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: DirectoryDataModel))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: DirectoryDataModel))

getTransformDocumentInterface_impl :: DirectoryDataModel -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = do
        pure ((jget (this).transformDocumentInterface))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: DirectoryDataModel))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: DirectoryDataModel)) a1

toXmlNode_impl :: DirectoryDataModel -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        dirNode <- (Document.createElement document "dir")
        size <- (BasicArrayList.size ((jget (this).fileBasicArrayList)))
        nextFile <- newIORef (javaNull)
        fileNode <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextFile ((javaCast (jio (BasicArrayList.get ((jget (this).fileBasicArrayList)) index)) :: AbFile.AbFile))
            assignedValue <- (FileDomDataModel.toXmlNode ((jio (FileDomDataModel.new_1 (jget nextFile)))) document)
            jset fileNode (assignedValue)
            Control.Monad.void (Node.appendChild dirNode (jget fileNode))
        pure (dirNode)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: DirectoryDataModel))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: DirectoryDataModel))

toXmlDoc_impl :: DirectoryDataModel -> IO (Document.Document)
toXmlDoc_impl this = do
        (TransformDocumentInterface.getDoc ((jio (DirectoryDataModel.getTransformDocumentInterface this))))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: DirectoryDataModel))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: DirectoryDataModel))

view_impl :: DirectoryDataModel -> IO (String)
view_impl this = do
        node <- (DirectoryDataModel.toXmlNode this (jio (TransformDocumentInterface.getDoc ((jio (DirectoryDataModel.getTransformDocumentInterface this))))))
        Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jio (DirectoryDataModel.getTransformDocumentInterface this)))))) node)
        (XmlDocumentHelper.toString (jio (TransformDocumentInterface.getDoc ((jio (DirectoryDataModel.getTransformDocumentInterface this))))))


