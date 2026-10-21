{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
module DirectoryFileVisitor where

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
import qualified File -- java.io.File
import qualified FileFilter -- java.io.FileFilter
import qualified VisitorInterface -- org.allbinary.logic.util.visitor.VisitorInterface

-- implements VisitorInterface
-- implements FileFilter
data DirectoryFileVisitor = DirectoryFileVisitor
    { header_ :: JavaHeader
    }

instance JavaNull DirectoryFileVisitor where
    javaNull = javaNullRecord "DirectoryFileVisitor"

instance JavaEquals DirectoryFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectoryFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass DirectoryFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DirectoryFileVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = DirectoryFileVisitor header_
    jregisterLevel header_ this
    VisitorInterface.registerInterface_ header_
    FileFilter.registerInterface_ header_
    jregisterMethod header_ "accept" (\() -> accept_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: DirectoryFileVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DirectoryFileVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DirectoryFileVisitor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


accept :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept object_ a1 = jmethod object_ "accept" (\() -> (accept_impl (javaCast object_ :: DirectoryFileVisitor))) () a1

accept_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept_super object_ a1 = (accept_impl (javaCast object_ :: DirectoryFileVisitor)) a1

accept_impl :: DirectoryFileVisitor -> File.File -> IO (Bool)
accept_impl this arg0 = do
        (booleanValue (((javaCast (jio (DirectoryFileVisitor.visit this (javaCast arg0 :: Any.Any))) :: Bool))))


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: DirectoryFileVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: DirectoryFileVisitor)) (jtoObject a1)

visit_impl :: DirectoryFileVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        let file = (javaCast anyType :: File.File)
        index <- newIORef (1)
        aFile <- newIORef =<< (File.getParentFile file)
        fix $ \loop -> when (((jassign aFile ((jio (File.getParentFile ((jget aFile))))))) /= javaNull) $ javaIteration (loop) $ do
            jset index ((jget index) + 1)
        when ((jio (File.isDirectory file)) && ((jget index) < 5)) $ do
            javaReturn ((jtoObject True))
        pure ((jtoObject False))


