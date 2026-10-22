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
-- package org.allbinary.logic.io.file.visitor
module BooleanFileVisitor where

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
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified VisitorInterface -- org.allbinary.logic.util.visitor.VisitorInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- implements VisitorInterface
data BooleanFileVisitor = BooleanFileVisitor
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , filterStringBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BooleanFileVisitor where
    javaNull = javaNullRecord "BooleanFileVisitor"

instance JavaEquals BooleanFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BooleanFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass BooleanFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BooleanFileVisitor
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    filterStringBasicArrayList <- newIORef javaNull
    let this = BooleanFileVisitor header_ commonStrings filterStringBasicArrayList
    jregisterLevel header_ this
    VisitorInterface.registerInterface_ header_
    jregisterMethod header_ "visit_overload1" (\() -> visit_overload1_impl this)
    jregisterMethod header_ "visit_overload2" (\() -> visit_overload2_impl this)
    jregisterMethod header_ "getFilterStringBasicArrayList" (\() -> getFilterStringBasicArrayList_impl this)
    jregisterMethod header_ "setFilterStringBasicArrayList" (\() -> setFilterStringBasicArrayList_impl this)
    jregisterMethod header_ "visit_2" (\() -> visit_2_impl this)
    pure this

initFields_ :: BooleanFileVisitor -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.filterStringBasicArrayList (javaNull)
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO BooleanFileVisitor
new_1 filterStringBasicArrayList = do
    this <- newRecord_
    init_1 this filterStringBasicArrayList
    pure this

init_1 :: BooleanFileVisitor -> BasicArrayList.BasicArrayList -> IO ()
init_1 this filterStringBasicArrayList = do
        initFields_ this
        Control.Monad.void (BooleanFileVisitor.setFilterStringBasicArrayList this filterStringBasicArrayList)
        Control.Monad.void (PreLogUtil.put ("Filter BasicArrayList: " ++ (jio (BasicArrayList.toString ((jio (BooleanFileVisitor.getFilterStringBasicArrayList this)))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


-- Java overloads of visit: calls the overload for the types of the arguments
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit this a1
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = visit_overload2 this (javaCast a1 :: AbFile.AbFile)
    | otherwise = visit_overload1 this a1

visit_overload1 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1 object_ a1 = jmethod object_ "visit_overload1" (\() -> (visit_overload1_impl (javaCast object_ :: BooleanFileVisitor))) () (jtoObject a1)

visit_overload1_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1_super object_ a1 = (visit_overload1_impl (javaCast object_ :: BooleanFileVisitor)) (jtoObject a1)

visit_overload1_impl :: BooleanFileVisitor -> JavaObject -> IO (Any.Any)
visit_overload1_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ((jtoObject (javaCast (jio (BooleanFileVisitor.visit this (javaCast anyType :: AbFile.AbFile))) :: Any.Any)))


visit_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_overload2 object_ a1 = jmethod object_ "visit_overload2" (\() -> (visit_overload2_impl (javaCast object_ :: BooleanFileVisitor))) () a1

visit_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_overload2_super object_ a1 = (visit_overload2_impl (javaCast object_ :: BooleanFileVisitor)) a1

visit_overload2_impl :: BooleanFileVisitor -> AbFile.AbFile -> IO (Bool)
visit_overload2_impl this file = do
    javaCatchReturn $ do
        list <- (BooleanFileVisitor.getFilterStringBasicArrayList this)
        size <- (BasicArrayList.size list)
        nextFileFilterString <- newIORef ("")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextFileFilterString ((javaCast (jio (BasicArrayList.get list index)) :: String))
            when (jio (Any.booleanValue ((jio (BooleanFileVisitor.visit_2 this file (jget nextFileFilterString)))))) $ do
                javaReturn (True)
        pure (False)


getFilterStringBasicArrayList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getFilterStringBasicArrayList object_ = jmethod object_ "getFilterStringBasicArrayList" (\() -> (getFilterStringBasicArrayList_impl (javaCast object_ :: BooleanFileVisitor))) ()

getFilterStringBasicArrayList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getFilterStringBasicArrayList_super object_ = (getFilterStringBasicArrayList_impl (javaCast object_ :: BooleanFileVisitor))

getFilterStringBasicArrayList_impl :: BooleanFileVisitor -> IO (BasicArrayList.BasicArrayList)
getFilterStringBasicArrayList_impl this = do
        pure ((jget (this).filterStringBasicArrayList))


setFilterStringBasicArrayList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setFilterStringBasicArrayList object_ a1 = jmethod object_ "setFilterStringBasicArrayList" (\() -> (setFilterStringBasicArrayList_impl (javaCast object_ :: BooleanFileVisitor))) () a1

setFilterStringBasicArrayList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setFilterStringBasicArrayList_super object_ a1 = (setFilterStringBasicArrayList_impl (javaCast object_ :: BooleanFileVisitor)) a1

setFilterStringBasicArrayList_impl :: BooleanFileVisitor -> BasicArrayList.BasicArrayList -> IO (())
setFilterStringBasicArrayList_impl this filterStringBasicArrayList = do
        jset (this).filterStringBasicArrayList (filterStringBasicArrayList)
        pure ()


visit_2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit_2 object_ a1 a2 = jmethod object_ "visit_2" (\() -> (visit_2_impl (javaCast object_ :: BooleanFileVisitor))) () a1 a2

visit_2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit_2_super object_ a1 a2 = (visit_2_impl (javaCast object_ :: BooleanFileVisitor)) a1 a2

visit_2_impl :: BooleanFileVisitor -> AbFile.AbFile -> String -> IO (Bool)
visit_2_impl this file fileNameString = do
        pure (False)


