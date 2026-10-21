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
-- package org.allbinary.graphics.j2me.workarea
module WorkAreaDom where

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
import qualified DomHelper -- org.allbinary.dom.DomHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data WorkAreaDom = WorkAreaDom
    { header_ :: JavaHeader
    , name :: IORef (String)
    , canvasNodeList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull WorkAreaDom where
    javaNull = javaNullRecord "WorkAreaDom"

instance JavaEquals WorkAreaDom where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkAreaDom where
    (==) = jrecordEquals

instance JavaObjectClass WorkAreaDom where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

wORKAREA = "workArea"

nAME = "name"

fRAMES = "frames"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WorkAreaDom
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    canvasNodeList <- newIORef javaNull
    let this = WorkAreaDom header_ name canvasNodeList
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getCanvasNodes" (\() -> getCanvasNodes_impl this)
    pure this

initFields_ :: WorkAreaDom -> IO ()
initFields_ this = do
    jset this.name ("")
    jset this.canvasNodeList (javaNull)
    pure ()

new_1 :: Document.Document -> IO WorkAreaDom
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: WorkAreaDom -> Document.Document -> IO ()
init_1 this document = do
        initFields_ this
        workAreaNodeList <- (Document.getElementsByTagName document wORKAREA)
        if (workAreaNodeList /= javaNull) then do
            numberOfworkAreas <- (NodeList.getLength workAreaNodeList)
            if (numberOfworkAreas == 1) then do
                numberOfNodes <- (NodeList.getLength workAreaNodeList)
                nameNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) nAME (jio (NodeList.getChildNodes ((jio (NodeList.item workAreaNodeList 0))))))
                nameTextNode <- (Node.getFirstChild nameNode)
                assignedValue <- (Node.getNodeValue nameTextNode)
                jset (this).name (assignedValue)
            else do
                javaThrow ((JavaException "Exception" ("Wrong Number of WorkAreas: " ++ javaToString numberOfworkAreas)))
            assignedValue <- (DomHelper.getChildrenWithoutTextNodes ((jio (DomHelper.getInstance))) (WorkAreaDom.fRAMES) (jio (NodeList.getChildNodes ((jio (NodeList.item workAreaNodeList 0))))))
            jset (this).canvasNodeList (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "workArea Node Not Found"))
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WorkAreaDom))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WorkAreaDom))

getName_impl :: WorkAreaDom -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getCanvasNodes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCanvasNodes object_ = jmethod object_ "getCanvasNodes" (\() -> (getCanvasNodes_impl (javaCast object_ :: WorkAreaDom))) ()

getCanvasNodes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCanvasNodes_super object_ = (getCanvasNodes_impl (javaCast object_ :: WorkAreaDom))

getCanvasNodes_impl :: WorkAreaDom -> IO (BasicArrayList.BasicArrayList)
getCanvasNodes_impl this = do
        pure ((jget (this).canvasNodeList))


