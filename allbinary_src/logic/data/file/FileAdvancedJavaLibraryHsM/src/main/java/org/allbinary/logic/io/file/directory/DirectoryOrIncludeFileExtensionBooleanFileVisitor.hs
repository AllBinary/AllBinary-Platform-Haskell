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
module DirectoryOrIncludeFileExtensionBooleanFileVisitor (module DirectoryOrIncludeFileExtensionBooleanFileVisitor, module IncludeFileExtensionsBooleanFileVisitor) where

import IncludeFileExtensionsBooleanFileVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, includesString)
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
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified IncludeFileExtensionsBooleanFileVisitor -- org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data DirectoryOrIncludeFileExtensionBooleanFileVisitor = DirectoryOrIncludeFileExtensionBooleanFileVisitor
    { header_ :: JavaHeader
    , base :: IncludeFileExtensionsBooleanFileVisitor.IncludeFileExtensionsBooleanFileVisitor
    , includesString :: IORef (String)
    }

instance JavaNull DirectoryOrIncludeFileExtensionBooleanFileVisitor where
    javaNull = javaNullRecord "DirectoryOrIncludeFileExtensionBooleanFileVisitor"

instance JavaEquals DirectoryOrIncludeFileExtensionBooleanFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectoryOrIncludeFileExtensionBooleanFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass DirectoryOrIncludeFileExtensionBooleanFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DirectoryOrIncludeFileExtensionBooleanFileVisitor
newRecord_ = do
    base <- IncludeFileExtensionsBooleanFileVisitor.newRecord_
    let header_ = base.header_
    includesString <- newIORef ""
    let this = DirectoryOrIncludeFileExtensionBooleanFileVisitor header_ base includesString
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: DirectoryOrIncludeFileExtensionBooleanFileVisitor -> IO ()
initFields_ this = do
    jset this.includesString (javaNull)
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO DirectoryOrIncludeFileExtensionBooleanFileVisitor
new_1 filterStringBasicArrayList = do
    this <- newRecord_
    init_1 this filterStringBasicArrayList
    pure this

init_1 :: DirectoryOrIncludeFileExtensionBooleanFileVisitor -> BasicArrayList.BasicArrayList -> IO ()
init_1 this filterStringBasicArrayList = do
        IncludeFileExtensionsBooleanFileVisitor.init_1 this.base (filterStringBasicArrayList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).includesString (javaNull)
        pure ()

new_2 :: BasicArrayList.BasicArrayList -> String -> IO DirectoryOrIncludeFileExtensionBooleanFileVisitor
new_2 filterStringBasicArrayList includesString = do
    this <- newRecord_
    init_2 this filterStringBasicArrayList includesString
    pure this

init_2 :: DirectoryOrIncludeFileExtensionBooleanFileVisitor -> BasicArrayList.BasicArrayList -> String -> IO ()
init_2 this filterStringBasicArrayList includesString = do
        IncludeFileExtensionsBooleanFileVisitor.init_1 this.base (filterStringBasicArrayList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).includesString (includesString)
        pure ()


visit :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionBooleanFileVisitor))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_super object_ a1 = (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionBooleanFileVisitor)) a1

visit_impl :: DirectoryOrIncludeFileExtensionBooleanFileVisitor -> AbFile.AbFile -> IO (Bool)
visit_impl this file = do
    javaCatchReturn $ do
        when (jio (AbFile.isDirectory file)) $ do
            javaReturn (True)
        if (((jget (this).includesString) == javaNull) || ((jstringIndexOf (jio (AbFile.getAbsolutePath file)) (jget (this).includesString) 0) >= 0)) then do
            javaReturn =<< (IncludeFileExtensionsBooleanFileVisitor.visit_super this.base file)
        else do
            javaReturn (False)


