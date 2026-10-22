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
module Directory where

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
import qualified FileFilter -- java.io.FileFilter
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data Directory = Directory
    { header_ :: JavaHeader
    }

instance JavaNull Directory where
    javaNull = javaNullRecord "Directory"

instance JavaEquals Directory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Directory where
    (==) = jrecordEquals

instance JavaObjectClass Directory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Directory
newRecord_ = do
    header_ <- newJavaHeader
    let this = Directory header_
    jregisterLevel header_ this
    jregisterMethod header_ "create_overload1" (\() -> create_overload1_impl this)
    jregisterMethod header_ "remove_overload1" (\() -> remove_overload1_impl this)
    jregisterMethod header_ "create_overload2" (\() -> create_overload2_impl this)
    jregisterMethod header_ "remove_overload2" (\() -> remove_overload2_impl this)
    jregisterMethod header_ "search_overload1" (\() -> search_overload1_impl this)
    jregisterMethod header_ "search_3_overload1" (\() -> search_3_overload1_impl this)
    jregisterMethod header_ "search_1" (\() -> search_1_impl this)
    jregisterMethod header_ "search_overload2" (\() -> search_overload2_impl this)
    jregisterMethod header_ "search_overload3" (\() -> search_overload3_impl this)
    jregisterMethod header_ "search_3_overload2" (\() -> search_3_overload2_impl this)
    jregisterMethod header_ "search_overload4" (\() -> search_overload4_impl this)
    jregisterMethod header_ "search_3_overload3" (\() -> search_3_overload3_impl this)
    pure this

initFields_ :: Directory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (Directory)
getInstance = do
        pure (Directory.instance_)

new_ :: IO Directory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Directory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of create: calls the overload for the types of the arguments
create :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
create this a1
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) = create_overload1 this (javaCast a1 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) = create_overload2 this (javaCast a1 :: String)
    | otherwise = create_overload2 this (javaCast a1 :: String)

create_overload1 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
create_overload1 object_ a1 = jmethod object_ "create_overload1" (\() -> (create_overload1_impl (javaCast object_ :: Directory))) () a1

create_overload1_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
create_overload1_super object_ a1 = (create_overload1_impl (javaCast object_ :: Directory)) a1

create_overload1_impl :: Directory -> AbPath.AbPath -> IO (Bool)
create_overload1_impl this directoryAbPath = do
        (Directory.create this (jio (AbPath.toFileSystemString directoryAbPath)))


-- Java overloads of remove: calls the overload for the types of the arguments
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
remove this a1
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) = remove_overload1 this (javaCast a1 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) = remove_overload2 this (javaCast a1 :: String)
    | otherwise = remove_overload2 this (javaCast a1 :: String)

-- throws Exception
remove_overload1 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
remove_overload1 object_ a1 = jmethod object_ "remove_overload1" (\() -> (remove_overload1_impl (javaCast object_ :: Directory))) () a1

remove_overload1_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
remove_overload1_super object_ a1 = (remove_overload1_impl (javaCast object_ :: Directory)) a1

remove_overload1_impl :: Directory -> AbPath.AbPath -> IO (())
remove_overload1_impl this existingDirectoryAbPath = do
        Control.Monad.void (Directory.remove this (jio (AbPath.toFileSystemString existingDirectoryAbPath)))
        pure ()


create_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
create_overload2 object_ a1 = jmethod object_ "create_overload2" (\() -> (create_overload2_impl (javaCast object_ :: Directory))) () a1

create_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
create_overload2_super object_ a1 = (create_overload2_impl (javaCast object_ :: Directory)) a1

create_overload2_impl :: Directory -> String -> IO (Bool)
create_overload2_impl this directory = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE ("Error Creating Directories: " ++ directory) this "create" e)
            pure (False)
            ) $ do
            directoryFile <- (fmap (\value_ -> javaCast value_ :: AbFile.AbFile) (FileFactory.getInstance_1 ((jio (FileFactory.getInstance))) directory))
            when (Prelude.not (jio (AbFile.isDirectory directoryFile))) $ do
                Control.Monad.void (PreLogUtil.put ("Creating Directories: " ++ directory) this "create")
                when (Prelude.not (jio (AbFile.mkdirs directoryFile))) $ do
                    javaReturn (False)
            pure (True)


-- throws Exception
remove_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove_overload2 object_ a1 = jmethod object_ "remove_overload2" (\() -> (remove_overload2_impl (javaCast object_ :: Directory))) () a1

remove_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove_overload2_super object_ a1 = (remove_overload2_impl (javaCast object_ :: Directory)) a1

remove_overload2_impl :: Directory -> String -> IO (())
remove_overload2_impl this existingDirectory = do
        existingDirectoryFile <- (fmap (\value_ -> javaCast value_ :: AbFile.AbFile) (FileFactory.getInstance_1 ((jio (FileFactory.getInstance))) existingDirectory))
        if (jio (AbFile.isDirectory existingDirectoryFile)) then do
            if ((jlength (jio (AbFile.list existingDirectoryFile))) > 0) then do
                javaThrow ((JavaException "Exception" (("Did not remove category: " ++ existingDirectory) ++ " because files exist")))
            else when (jio (AbFile.delete existingDirectoryFile)) $ do
                Control.Monad.void (PreLogUtil.put ("Successfully Removed: " ++ existingDirectory) "Directory" "remove")
        else do
            javaThrow ((JavaException "Exception" ("Category Directory Is Missing:" ++ existingDirectory)))
        pure ()


-- Java overloads of search: calls the overload for the types of the arguments
search :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (BasicArrayList.BasicArrayList)
search this a1 a2
    | jisInstanceOf a1 (javaNull :: FileFilter.FileFilter) && jisInstanceOf a2 (javaNull :: AbFile.AbFile) = search_overload1 this (javaCast a1 :: FileFilter.FileFilter) (javaCast a2 :: AbFile.AbFile)
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) && jisInstanceOf a2 (javaNull :: Bool) = search_overload2 this (javaCast a1 :: AbFile.AbFile) (javaCast a2 :: Bool)
    | jisInstanceOf a1 (javaNull :: String) && jisInstanceOf a2 (javaNull :: AbFile.AbFile) = search_overload3 this (javaCast a1 :: String) (javaCast a2 :: AbFile.AbFile)
    | jisInstanceOf a1 (javaNull :: Int) && jisInstanceOf a2 (javaNull :: AbFile.AbFile) = search_overload4 this (javaCast a1 :: Int) (javaCast a2 :: AbFile.AbFile)
    | otherwise = search_overload4 this (javaCast a1 :: Int) (javaCast a2 :: AbFile.AbFile)

search_overload1 :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1 object_ a1 a2 = jmethod object_ "search_overload1" (\() -> (search_overload1_impl (javaCast object_ :: Directory))) () a1 a2

search_overload1_super :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1_super object_ a1 a2 = (search_overload1_impl (javaCast object_ :: Directory)) a1 a2

search_overload1_impl :: Directory -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1_impl this fileFilter file = do
        (Directory.search_3 this fileFilter file False)


-- Java overloads of search: calls the overload for the types of the arguments
search_3 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3 this a1 a2 a3
    | jisInstanceOf a1 (javaNull :: FileFilter.FileFilter) = search_3_overload1 this (javaCast a1 :: FileFilter.FileFilter) a2 a3
    | jisInstanceOf a1 (javaNull :: String) = search_3_overload2 this (javaCast a1 :: String) a2 a3
    | jisInstanceOf a1 (javaNull :: Int) = search_3_overload3 this (javaCast a1 :: Int) a2 a3
    | otherwise = search_3_overload3 this (javaCast a1 :: Int) a2 a3

search_3_overload1 :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload1 object_ a1 a2 a3 = jmethod object_ "search_3_overload1" (\() -> (search_3_overload1_impl (javaCast object_ :: Directory))) () a1 a2 a3

search_3_overload1_super :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload1_super object_ a1 a2 a3 = (search_3_overload1_impl (javaCast object_ :: Directory)) a1 a2 a3

search_3_overload1_impl :: Directory -> FileFilter.FileFilter -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload1_impl this fileFilter file isRecursiveSearch = do
    javaCatchReturn $ do
        fileList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        recursiveFileList <- newIORef (javaNull)
        when (jio (AbFile.isDirectory file)) $ do
            fileArray <- (AbFile.listFilesFileFilter file fileFilter)
            when (fileArray == javaNull) $ do
                javaReturn (fileList)
            files <- (FileWrapperUtil.wrapFiles fileArray)
            when (files == javaNull) $ do
                javaReturn (fileList)
            let size = (jlength files)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add fileList (jindex files (index)))
                when isRecursiveSearch $ do
                    assignedValue <- (Directory.search_3 this fileFilter (jindex files (index)) isRecursiveSearch)
                    jset recursiveFileList (assignedValue)
                    Control.Monad.void (BasicArrayList.addAllList fileList (jget recursiveFileList))
        pure (fileList)


search_1 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_1 object_ a1 = jmethod object_ "search_1" (\() -> (search_1_impl (javaCast object_ :: Directory))) () a1

search_1_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_1_super object_ a1 = (search_1_impl (javaCast object_ :: Directory)) a1

search_1_impl :: Directory -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_1_impl this file = do
        (Directory.search this file False)


search_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_overload2 object_ a1 a2 = jmethod object_ "search_overload2" (\() -> (search_overload2_impl (javaCast object_ :: Directory))) () a1 a2

search_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_overload2_super object_ a1 a2 = (search_overload2_impl (javaCast object_ :: Directory)) a1 a2

search_overload2_impl :: Directory -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_overload2_impl this file isRecursiveSearch = do
    javaCatchReturn $ do
        fileList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        recursiveFileList <- newIORef (javaNull)
        when (jio (AbFile.isDirectory file)) $ do
            fileArray <- (AbFile.listFiles file)
            when (fileArray == javaNull) $ do
                javaReturn (fileList)
            files <- (FileWrapperUtil.wrapFiles fileArray)
            when (files == javaNull) $ do
                javaReturn (fileList)
            forM_ [0 .. (jlength files) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add fileList (jindex files (index)))
                when isRecursiveSearch $ do
                    assignedValue <- (Directory.search this (jindex files (index)) isRecursiveSearch)
                    jset recursiveFileList (assignedValue)
                    Control.Monad.void (BasicArrayList.addAllList fileList (jget recursiveFileList))
        pure (fileList)


search_overload3 :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3 object_ a1 a2 = jmethod object_ "search_overload3" (\() -> (search_overload3_impl (javaCast object_ :: Directory))) () a1 a2

search_overload3_super :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3_super object_ a1 a2 = (search_overload3_impl (javaCast object_ :: Directory)) a1 a2

search_overload3_impl :: Directory -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3_impl this searchValue file = do
        (Directory.search_3 this searchValue file False)


search_3_overload2 :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload2 object_ a1 a2 a3 = jmethod object_ "search_3_overload2" (\() -> (search_3_overload2_impl (javaCast object_ :: Directory))) () a1 a2 a3

search_3_overload2_super :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload2_super object_ a1 a2 a3 = (search_3_overload2_impl (javaCast object_ :: Directory)) a1 a2 a3

search_3_overload2_impl :: Directory -> String -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload2_impl this searchValue file isRecursiveSearch = do
    javaCatchReturn $ do
        fileList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        recursiveFileList <- newIORef (javaNull)
        when (jio (AbFile.isDirectory file)) $ do
            fileArray <- (AbFile.listFiles file)
            when (fileArray == javaNull) $ do
                javaReturn (fileList)
            files <- (FileWrapperUtil.wrapFiles fileArray)
            when (files == javaNull) $ do
                javaReturn (fileList)
            forM_ [0 .. (jlength files) - 1] $ \index -> javaIteration (pure ()) $ do
                when ((jio (indexOf ((jio (getPath ((jindex files (index)))))) searchValue)) >= 0) $ do
                    Control.Monad.void (BasicArrayList.add fileList (jindex files (index)))
                when isRecursiveSearch $ do
                    assignedValue <- (Directory.search_3 this searchValue (jindex files (index)) isRecursiveSearch)
                    jset recursiveFileList (assignedValue)
                    Control.Monad.void (BasicArrayList.addAllList fileList (jget recursiveFileList))
        pure (fileList)


search_overload4 :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload4 object_ a1 a2 = jmethod object_ "search_overload4" (\() -> (search_overload4_impl (javaCast object_ :: Directory))) () a1 a2

search_overload4_super :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload4_super object_ a1 a2 = (search_overload4_impl (javaCast object_ :: Directory)) a1 a2

search_overload4_impl :: Directory -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload4_impl this level file = do
        (Directory.search_3 this level file False)


search_3_overload3 :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload3 object_ a1 a2 a3 = jmethod object_ "search_3_overload3" (\() -> (search_3_overload3_impl (javaCast object_ :: Directory))) () a1 a2 a3

search_3_overload3_super :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload3_super object_ a1 a2 a3 = (search_3_overload3_impl (javaCast object_ :: Directory)) a1 a2 a3

search_3_overload3_impl :: Directory -> Int -> AbFile.AbFile -> Bool -> IO (BasicArrayList.BasicArrayList)
search_3_overload3_impl this level file isRecursiveSearch = do
    javaCatchReturn $ do
        fileList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        recursiveFileList <- newIORef (javaNull)
        when (jio (AbFile.isDirectory file)) $ do
            fileArray <- (AbFile.listFiles file)
            when (fileArray == javaNull) $ do
                javaReturn (fileList)
            files <- (FileWrapperUtil.wrapFiles fileArray)
            when (files == javaNull) $ do
                javaReturn (fileList)
            forM_ [0 .. (jlength files) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add fileList (jindex files (index)))
                when (level <= 0) $ do
                    javaReturn (fileList)
                assignedValue <- (Directory.search_3 this (level - 1) (jindex files (index)) isRecursiveSearch)
                jset recursiveFileList (assignedValue)
                Control.Monad.void (BasicArrayList.addAllList fileList (jget recursiveFileList))
        pure (fileList)


