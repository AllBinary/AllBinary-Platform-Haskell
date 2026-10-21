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
module DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor (module DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, module IncludeFileExtensionsBooleanFileVisitor) where

import IncludeFileExtensionsBooleanFileVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, visit, visit_super, visit_impl, main, main_super, main_impl, trackedStrings, gitProcessHelper, includesString)
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
import qualified TrackedStrings -- same package or java.lang
import qualified GitProcessHelper -- org.allbinary.java.runtime.process.git.GitProcessHelper
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified CommonDataFileStrings -- org.allbinary.logic.io.file.CommonDataFileStrings
import qualified IncludeFileExtensionsBooleanFileVisitor -- org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor = DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
    { header_ :: JavaHeader
    , base :: IncludeFileExtensionsBooleanFileVisitor.IncludeFileExtensionsBooleanFileVisitor
    , trackedStrings :: IORef (TrackedStrings.TrackedStrings)
    , gitProcessHelper :: IORef (GitProcessHelper.GitProcessHelper)
    , includesString :: IORef (String)
    }

instance JavaNull DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor where
    javaNull = javaNullRecord "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor"

instance JavaEquals DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor where
    (==) = jrecordEquals

instance JavaObjectClass DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
newRecord_ = do
    base <- IncludeFileExtensionsBooleanFileVisitor.newRecord_
    let header_ = base.header_
    trackedStrings <- newIORef javaNull
    gitProcessHelper <- newIORef javaNull
    includesString <- newIORef ""
    let this = DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor header_ base trackedStrings gitProcessHelper includesString
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -> IO ()
initFields_ this = do
    jset this.trackedStrings =<< (TrackedStrings.getInstance)
    jset this.gitProcessHelper =<< (GitProcessHelper.getInstance)
    jset this.includesString (javaNull)
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
new_1 filterStringBasicArrayList = do
    this <- newRecord_
    init_1 this filterStringBasicArrayList
    pure this

init_1 :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -> BasicArrayList.BasicArrayList -> IO ()
init_1 this filterStringBasicArrayList = do
        IncludeFileExtensionsBooleanFileVisitor.init_1 this.base (filterStringBasicArrayList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).includesString (javaNull)
        pure ()

new_2 :: BasicArrayList.BasicArrayList -> String -> IO DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
new_2 filterStringBasicArrayList includesString = do
    this <- newRecord_
    init_2 this filterStringBasicArrayList includesString
    pure this

init_2 :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -> BasicArrayList.BasicArrayList -> String -> IO ()
init_2 this filterStringBasicArrayList includesString = do
        IncludeFileExtensionsBooleanFileVisitor.init_1 this.base (filterStringBasicArrayList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).includesString (includesString)
        pure ()


visit :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
visit_super object_ a1 = (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor)) a1

visit_impl :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -> AbFile.AbFile -> IO (Bool)
visit_impl this file = do
    javaCatchReturn $ do
        when (jio (AbFile.isDirectory file)) $ do
            javaReturn (True)
        if (((jget (this).includesString) == javaNull) || ((jstringIndexOf (jio (AbFile.getAbsolutePath file)) (jget (this).includesString) 0) >= 0)) then do
            javaReturn =<< (IncludeFileExtensionsBooleanFileVisitor.visit_super this.base file)
        else do
            javaReturn (False)


-- Java overload of visit with a different parameter count: give it a different name
visit :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (Bool)
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor)) a1 a2

visit_impl :: DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -> AbFile.AbFile -> String -> IO (Bool)
visit_impl this file fileNameString = do
    javaCatchReturn $ do
        filePath <- (AbFile.getPath file)
        when (jio (IncludeFileExtensionsBooleanFileVisitor.visit_super this.base file fileNameString)) $ do
            if (Prelude.not ((((Data.List.isInfixOf (jget ((jget (this).trackedStrings)).aPPLICATION) filePath) || (Data.List.isInfixOf (jget ((jget (this).trackedStrings)).aPP) filePath)) || (Data.List.isInfixOf (jget ((jget (this).trackedStrings)).hTML_TEMP) filePath)))) then do
                if (Prelude.not (((Data.List.isInfixOf (jget ((jget (this).trackedStrings)).tARGET_PATH_WINDOWS) filePath) || (Data.List.isInfixOf (jget ((jget (this).trackedStrings)).tARGET_PATH_UNIX) filePath)))) then do
                    if (jio (GitProcessHelper.isTracked ((jget (this).gitProcessHelper)) file)) then do
                        javaReturn (True)
                    else do
                        pure ()
                else do
                    pure ()
            else do
                pure ()
        pure (False)


main :: JavaArray (String) -> IO (())
main args = do
        commonFileStrings <- (CommonDataFileStrings.getInstance)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add list (jget (commonFileStrings).jAVA))
        let filePath = "G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java"
        result <- (DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.visit ((jio (new_1 list))) (jio (AbFile.createAbFileFromRawPath filePath)))
        Control.Monad.void (putStrLn (javaToString ((filePath ++ " is Tracked: ") ++ javaToString result)))
        pure ()


