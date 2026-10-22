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
-- package org.allbinary.logic.io.file
module FileListFetcher where

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
import qualified AbFile -- same package or java.lang
import qualified DirectoryBooleanFileVisitor -- org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor
import qualified DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor -- org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
import qualified DirectoryOrIncludeFileExtensionBooleanFileVisitor -- org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor
import qualified SubDirectory -- org.allbinary.logic.io.file.directory.SubDirectory
import qualified VisitorFileFilter -- org.allbinary.logic.io.file.filter.VisitorFileFilter
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data FileListFetcher = FileListFetcher
    { header_ :: JavaHeader
    , subDirectory :: IORef (SubDirectory.SubDirectory)
    }

instance JavaNull FileListFetcher where
    javaNull = javaNullRecord "FileListFetcher"

instance JavaEquals FileListFetcher where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileListFetcher where
    (==) = jrecordEquals

instance JavaObjectClass FileListFetcher where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileListFetcher
newRecord_ = do
    header_ <- newJavaHeader
    subDirectory <- newIORef javaNull
    let this = FileListFetcher header_ subDirectory
    jregisterLevel header_ this
    jregisterMethod header_ "getFiles" (\() -> getFiles_impl this)
    jregisterMethod header_ "getFiles_2_overload1" (\() -> getFiles_2_overload1_impl this)
    jregisterMethod header_ "getFiles_2_overload2" (\() -> getFiles_2_overload2_impl this)
    jregisterMethod header_ "getFiles_3" (\() -> getFiles_3_impl this)
    jregisterMethod header_ "getTrackedFiles_overload1" (\() -> getTrackedFiles_overload1_impl this)
    jregisterMethod header_ "getTrackedFiles_overload2" (\() -> getTrackedFiles_overload2_impl this)
    jregisterMethod header_ "getDirectories" (\() -> getDirectories_impl this)
    pure this

initFields_ :: FileListFetcher -> IO ()
initFields_ this = do
    jset this.subDirectory =<< (SubDirectory.getInstance)
    pure ()

new_ :: IO FileListFetcher
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileListFetcher -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FileListFetcher)
getInstance = do
        pure (FileListFetcher.instance_)


getFiles :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getFiles object_ a1 = jmethod object_ "getFiles" (\() -> (getFiles_impl (javaCast object_ :: FileListFetcher))) () a1

getFiles_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_super object_ a1 = (getFiles_impl (javaCast object_ :: FileListFetcher)) a1

getFiles_impl :: FileListFetcher -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_impl this path = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            files <- (SubDirectory.search_1 ((jget (this).subDirectory)) (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


-- Java overloads of getFiles: calls the overload for the types of the arguments
getFiles_2 :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> IO (BasicArrayList.BasicArrayList)
getFiles_2 this a1 a2
    | jisInstanceOf a2 (javaNull :: JavaArray (String)) = getFiles_2_overload1 this a1 (javaCast a2 :: JavaArray (String))
    | jisInstanceOf a2 (javaNull :: String) = getFiles_2_overload2 this a1 (javaCast a2 :: String)
    | otherwise = getFiles_2_overload2 this a1 (javaCast a2 :: String)

getFiles_2_overload1 :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload1 object_ a1 a2 = jmethod object_ "getFiles_2_overload1" (\() -> (getFiles_2_overload1_impl (javaCast object_ :: FileListFetcher))) () a1 a2

getFiles_2_overload1_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload1_super object_ a1 a2 = (getFiles_2_overload1_impl (javaCast object_ :: FileListFetcher)) a1 a2

getFiles_2_overload1_impl :: FileListFetcher -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload1_impl this path includeExtensions = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            includeExtensionBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            let size = (jlength includeExtensions)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add includeExtensionBasicArrayList (jindex includeExtensions (index)))
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryOrIncludeFileExtensionBooleanFileVisitor.new_1 includeExtensionBasicArrayList)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


getFiles_2_overload2 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload2 object_ a1 a2 = jmethod object_ "getFiles_2_overload2" (\() -> (getFiles_2_overload2_impl (javaCast object_ :: FileListFetcher))) () a1 a2

getFiles_2_overload2_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload2_super object_ a1 a2 = (getFiles_2_overload2_impl (javaCast object_ :: FileListFetcher)) a1 a2

getFiles_2_overload2_impl :: FileListFetcher -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_2_overload2_impl this path includeExtension = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            includeExtensionBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add includeExtensionBasicArrayList includeExtension)
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryOrIncludeFileExtensionBooleanFileVisitor.new_1 includeExtensionBasicArrayList)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


getFiles_3 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_3 object_ a1 a2 a3 = jmethod object_ "getFiles_3" (\() -> (getFiles_3_impl (javaCast object_ :: FileListFetcher))) () a1 a2 a3

getFiles_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_3_super object_ a1 a2 a3 = (getFiles_3_impl (javaCast object_ :: FileListFetcher)) a1 a2 a3

getFiles_3_impl :: FileListFetcher -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getFiles_3_impl this path pathIncludes includeExtension = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            includeExtensionBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add includeExtensionBasicArrayList includeExtension)
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryOrIncludeFileExtensionBooleanFileVisitor.new_2 includeExtensionBasicArrayList pathIncludes)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


-- Java overloads of getTrackedFiles: calls the overload for the types of the arguments
getTrackedFiles :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles this a1 a2
    | jisInstanceOf a2 (javaNull :: JavaArray (String)) = getTrackedFiles_overload1 this a1 (javaCast a2 :: JavaArray (String))
    | jisInstanceOf a2 (javaNull :: String) = getTrackedFiles_overload2 this a1 (javaCast a2 :: String)
    | otherwise = getTrackedFiles_overload2 this a1 (javaCast a2 :: String)

getTrackedFiles_overload1 :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload1 object_ a1 a2 = jmethod object_ "getTrackedFiles_overload1" (\() -> (getTrackedFiles_overload1_impl (javaCast object_ :: FileListFetcher))) () a1 a2

getTrackedFiles_overload1_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload1_super object_ a1 a2 = (getTrackedFiles_overload1_impl (javaCast object_ :: FileListFetcher)) a1 a2

getTrackedFiles_overload1_impl :: FileListFetcher -> String -> JavaArray (String) -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload1_impl this path includeExtensions = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            includeExtensionBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            let size = (jlength includeExtensions)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add includeExtensionBasicArrayList (jindex includeExtensions (index)))
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new_1 includeExtensionBasicArrayList)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


getTrackedFiles_overload2 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload2 object_ a1 a2 = jmethod object_ "getTrackedFiles_overload2" (\() -> (getTrackedFiles_overload2_impl (javaCast object_ :: FileListFetcher))) () a1 a2

getTrackedFiles_overload2_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload2_super object_ a1 a2 = (getTrackedFiles_overload2_impl (javaCast object_ :: FileListFetcher)) a1 a2

getTrackedFiles_overload2_impl :: FileListFetcher -> String -> String -> IO (BasicArrayList.BasicArrayList)
getTrackedFiles_overload2_impl this path includeExtension = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            includeExtensionBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add includeExtensionBasicArrayList includeExtension)
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new_1 includeExtensionBasicArrayList)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


getDirectories :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getDirectories object_ a1 = jmethod object_ "getDirectories" (\() -> (getDirectories_impl (javaCast object_ :: FileListFetcher))) () a1

getDirectories_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getDirectories_super object_ a1 = (getDirectories_impl (javaCast object_ :: FileListFetcher)) a1

getDirectories_impl :: FileListFetcher -> String -> IO (BasicArrayList.BasicArrayList)
getDirectories_impl this path = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            Control.Monad.void (putStrLn (javaToString ((("Error: " ++ javaToString e) ++ "\nMsg: ") ++ (Control.Exception.displayException e))))
            ) $ do
            visitorFileFilter <- (VisitorFileFilter.new_1 (jio (DirectoryBooleanFileVisitor.new_)))
            files <- (SubDirectory.search ((jget (this).subDirectory)) visitorFileFilter (jio (AbFile.createAbFile path)))
            pure (files)
        pure (javaNull)


