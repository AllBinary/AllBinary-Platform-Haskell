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
module IncludeFileExtensionsBooleanFileVisitor (module IncludeFileExtensionsBooleanFileVisitor, module BooleanFileVisitor) where

import BooleanFileVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, visit, visit_super, visit_impl)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BooleanFileVisitor

data IncludeFileExtensionsBooleanFileVisitor = IncludeFileExtensionsBooleanFileVisitor
    { header_ :: JavaHeader
    , base :: BooleanFileVisitor.BooleanFileVisitor
    }

instance JavaNull IncludeFileExtensionsBooleanFileVisitor where
    javaNull = javaNullRecord "IncludeFileExtensionsBooleanFileVisitor"

instance JavaEquals IncludeFileExtensionsBooleanFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IncludeFileExtensionsBooleanFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass IncludeFileExtensionsBooleanFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IncludeFileExtensionsBooleanFileVisitor
newRecord_ = do
    base <- BooleanFileVisitor.newRecord_
    let header_ = base.header_
    let this = IncludeFileExtensionsBooleanFileVisitor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: IncludeFileExtensionsBooleanFileVisitor -> IO ()
initFields_ this = do
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO IncludeFileExtensionsBooleanFileVisitor
new_1 filterStringBasicArrayList = do
    this <- newRecord_
    init_1 this filterStringBasicArrayList
    pure this

init_1 :: IncludeFileExtensionsBooleanFileVisitor -> BasicArrayList.BasicArrayList -> IO ()
init_1 this filterStringBasicArrayList = do
        BooleanFileVisitor.init_1 this.base (filterStringBasicArrayList)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


visit :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: IncludeFileExtensionsBooleanFileVisitor))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_super object_ a1 = (visit_impl (javaCast object_ :: IncludeFileExtensionsBooleanFileVisitor)) a1

visit_impl :: IncludeFileExtensionsBooleanFileVisitor -> AbFile.AbFile -> IO (Bool)
visit_impl this file = do
    javaCatchReturn $ do
        when ((jio (BasicArrayList.size ((jio (BooleanFileVisitor.getFilterStringBasicArrayList this))))) == 0) $ do
            javaReturn (False)
        (BooleanFileVisitor.visit_super this.base file)


-- Java overload of visit with a different parameter count: give it a different name
visit :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: IncludeFileExtensionsBooleanFileVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: IncludeFileExtensionsBooleanFileVisitor)) a1 a2

visit_impl :: IncludeFileExtensionsBooleanFileVisitor -> AbFile.AbFile -> String -> IO (Bool)
visit_impl this file fileNameString = do
    javaCatchReturn $ do
        fileNameAndExtension <- (AbFile.getPath file)
        when ((Prelude.length fileNameAndExtension) > (Prelude.length fileNameString)) $ do
            let startIndex = ((Prelude.length fileNameAndExtension) - (Prelude.length fileNameString))
            let fileName = (Prelude.drop startIndex fileNameAndExtension)
            when ((Prelude.fromEnum (Prelude.compare fileName fileNameString) - 1) == 0) $ do
                javaReturn (True)
        pure (False)


