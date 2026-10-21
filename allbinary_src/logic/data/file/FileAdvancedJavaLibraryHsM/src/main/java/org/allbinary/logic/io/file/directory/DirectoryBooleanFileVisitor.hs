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
-- package org.allbinary.logic.io.file.directory
module DirectoryBooleanFileVisitor where

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
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified VisitorInterface -- org.allbinary.logic.util.visitor.VisitorInterface

-- implements VisitorInterface
data DirectoryBooleanFileVisitor = DirectoryBooleanFileVisitor
    { header_ :: JavaHeader
    }

instance JavaNull DirectoryBooleanFileVisitor where
    javaNull = javaNullRecord "DirectoryBooleanFileVisitor"

instance JavaEquals DirectoryBooleanFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectoryBooleanFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass DirectoryBooleanFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DirectoryBooleanFileVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = DirectoryBooleanFileVisitor header_
    jregisterLevel header_ this
    VisitorInterface.registerInterface_ header_
    jregisterMethod header_ "visit_overload1" (\() -> visit_overload1_impl this)
    jregisterMethod header_ "visit_overload2" (\() -> visit_overload2_impl this)
    pure this

initFields_ :: DirectoryBooleanFileVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DirectoryBooleanFileVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DirectoryBooleanFileVisitor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of visit: calls the overload for the types of the arguments
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit this a1
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = visit_overload2 this (javaCast a1 :: AbFile.AbFile)
    | otherwise = visit_overload1 this a1

visit_overload1 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1 object_ a1 = jmethod object_ "visit_overload1" (\() -> (visit_overload1_impl (javaCast object_ :: DirectoryBooleanFileVisitor))) () (jtoObject a1)

visit_overload1_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1_super object_ a1 = (visit_overload1_impl (javaCast object_ :: DirectoryBooleanFileVisitor)) (jtoObject a1)

visit_overload1_impl :: DirectoryBooleanFileVisitor -> JavaObject -> IO (Any.Any)
visit_overload1_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ((jtoObject (javaCast (jio (DirectoryBooleanFileVisitor.visit this (javaCast anyType :: AbFile.AbFile))) :: Any.Any)))


visit_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_overload2 object_ a1 = jmethod object_ "visit_overload2" (\() -> (visit_overload2_impl (javaCast object_ :: DirectoryBooleanFileVisitor))) () a1

visit_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_overload2_super object_ a1 = (visit_overload2_impl (javaCast object_ :: DirectoryBooleanFileVisitor)) a1

visit_overload2_impl :: DirectoryBooleanFileVisitor -> AbFile.AbFile -> IO (Bool)
visit_overload2_impl this file = do
    javaCatchReturn $ do
        when (jio (AbFile.isDirectory file)) $ do
            javaReturn (True)
        pure (False)


