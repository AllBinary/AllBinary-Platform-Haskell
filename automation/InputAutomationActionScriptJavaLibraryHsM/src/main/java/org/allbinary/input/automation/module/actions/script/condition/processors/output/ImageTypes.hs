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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ImageTypes where

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
import qualified ImageActionScriptOutputData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified InputImageType -- org.allbinary.input.media.image.InputImageType
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data ImageTypes = ImageTypes
    { header_ :: JavaHeader
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ImageTypes where
    javaNull = javaNullRecord "ImageTypes"

instance JavaEquals ImageTypes where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageTypes where
    (==) = jrecordEquals

instance JavaObjectClass ImageTypes where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageTypes
newRecord_ = do
    header_ <- newJavaHeader
    vector <- newIORef javaNull
    let this = ImageTypes header_ vector
    jregisterLevel header_ this
    jregisterMethod header_ "getVector" (\() -> getVector_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageTypes -> IO ()
initFields_ this = do
    jset this.vector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO ImageTypes
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageTypes -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: Node.Node -> IO ImageTypes
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: ImageTypes -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        nodeList <- (Node.getChildNodes node)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            childNode <- (NodeList.item nodeList index)
            if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ImageActionScriptOutputData.tYPE))) == 0) then do
                nextImageTypeString <- (DomNodeHelper.getTextNodeValue childNode)
                Control.Monad.void (BasicArrayList.add ((jio (ImageTypes.getVector this))) (jio (InputImageType.getInstance nextImageTypeString)))
            else do
                javaThrow ((JavaException "Exception" "ImageTypes Unknown Node"))
        pure ()


valueOf :: JavaArray (Any.Any) -> IO (ImageTypes)
valueOf anyType = do
        imageTypes <- (new_)
        forM_ [0 .. (jlength anyType) - 1] $ \index -> javaIteration (pure ()) $ do
            imageType <- (InputImageType.getInstance (javaCast (jindex anyType (index)) :: String))
            Control.Monad.void (BasicArrayList.add ((jio (ImageTypes.getVector imageTypes))) imageType)
        pure (imageTypes)


getVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVector object_ = jmethod object_ "getVector" (\() -> (getVector_impl (javaCast object_ :: ImageTypes))) ()

getVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVector_super object_ = (getVector_impl (javaCast object_ :: ImageTypes))

getVector_impl :: ImageTypes -> IO (BasicArrayList.BasicArrayList)
getVector_impl this = do
        pure ((jget (this).vector))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ImageTypes))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ImageTypes)) a1

toXmlNode_impl :: ImageTypes -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        newNode <- (Document.createElement document (jget ImageActionScriptOutputData.tYPES))
        size <- (BasicArrayList.size ((jget (this).vector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let imageType = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: InputImageType.InputImageType)
            Control.Monad.void (Node.appendChild newNode (jio (ModDomHelper.createTextNode document (jget ImageActionScriptOutputData.tYPE) (jio (InputImageType.getName imageType)))))
        pure (newNode)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageTypes))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageTypes))

toString_impl :: ImageTypes -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "ImageTypes: ")
        size <- (BasicArrayList.size ((jget (this).vector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let imageType = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: InputImageType.InputImageType)
            Control.Monad.void (StringMaker.append stringBuffer (jio (InputImageType.getName imageType)))
            when (index < (size - 1)) $ do
                Control.Monad.void (jio (StringMaker.append stringBuffer ", "))
        (StringMaker.toString stringBuffer)


