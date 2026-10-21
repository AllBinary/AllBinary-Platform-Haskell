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
module SubDirectory where

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
import qualified Directory -- same package or java.lang
import qualified FileFilter -- java.io.FileFilter
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data SubDirectory = SubDirectory
    { header_ :: JavaHeader
    , directory :: IORef (Directory.Directory)
    }

instance JavaNull SubDirectory where
    javaNull = javaNullRecord "SubDirectory"

instance JavaEquals SubDirectory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SubDirectory where
    (==) = jrecordEquals

instance JavaObjectClass SubDirectory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO SubDirectory
newRecord_ = do
    header_ <- newJavaHeader
    directory <- newIORef javaNull
    let this = SubDirectory header_ directory
    jregisterLevel header_ this
    jregisterMethod header_ "search_overload1" (\() -> search_overload1_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    jregisterMethod header_ "search_overload2" (\() -> search_overload2_impl this)
    jregisterMethod header_ "search_overload3" (\() -> search_overload3_impl this)
    pure this

initFields_ :: SubDirectory -> IO ()
initFields_ this = do
    jset this.directory =<< (Directory.getInstance)
    pure ()


getInstance :: IO (SubDirectory)
getInstance = do
        pure (SubDirectory.instance_)

new_ :: IO SubDirectory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SubDirectory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of search: calls the overload for the types of the arguments
search :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search this a1 a2
    | jisInstanceOf a1 (javaNull :: FileFilter.FileFilter) = search_overload1 this (javaCast a1 :: FileFilter.FileFilter) a2
    | jisInstanceOf a1 (javaNull :: String) = search_overload2 this (javaCast a1 :: String) a2
    | jisInstanceOf a1 (javaNull :: Int) = search_overload3 this (javaCast a1 :: Int) a2
    | otherwise = search_overload3 this (javaCast a1 :: Int) a2

search_overload1 :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1 object_ a1 a2 = jmethod object_ "search_overload1" (\() -> (search_overload1_impl (javaCast object_ :: SubDirectory))) () a1 a2

search_overload1_super :: (JavaObjectClass this_) => this_ -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1_super object_ a1 a2 = (search_overload1_impl (javaCast object_ :: SubDirectory)) a1 a2

search_overload1_impl :: SubDirectory -> FileFilter.FileFilter -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload1_impl this fileFilter file = do
        (Directory.search ((jget (this).directory)) fileFilter file True)


-- Java overload of search with a different parameter count: give it a different name
search :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search object_ a1 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: SubDirectory))) () a1

search_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_super object_ a1 = (search_impl (javaCast object_ :: SubDirectory)) a1

search_impl :: SubDirectory -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_impl this file = do
        (Directory.search ((jget (this).directory)) file True)


-- Java overload of search with a different parameter count: give it a different name
search_overload2 :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload2 object_ a1 a2 = jmethod object_ "search_overload2" (\() -> (search_overload2_impl (javaCast object_ :: SubDirectory))) () a1 a2

search_overload2_super :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload2_super object_ a1 a2 = (search_overload2_impl (javaCast object_ :: SubDirectory)) a1 a2

search_overload2_impl :: SubDirectory -> String -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload2_impl this searchValue file = do
        (Directory.search ((jget (this).directory)) searchValue file True)


-- Java overload of search with a different parameter count: give it a different name
search_overload3 :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3 object_ a1 a2 = jmethod object_ "search_overload3" (\() -> (search_overload3_impl (javaCast object_ :: SubDirectory))) () a1 a2

search_overload3_super :: (JavaObjectClass this_) => this_ -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3_super object_ a1 a2 = (search_overload3_impl (javaCast object_ :: SubDirectory)) a1 a2

search_overload3_impl :: SubDirectory -> Int -> AbFile.AbFile -> IO (BasicArrayList.BasicArrayList)
search_overload3_impl this level file = do
        (Directory.search ((jget (this).directory)) level file True)


toString :: BasicArrayList.BasicArrayList -> IO (String)
toString files = do
        stringBuffer <- (StringMaker.new_)
        let nEW_LINE = (jget ((jio (CommonSeps.getInstance))).nEW_LINE)
        size <- (BasicArrayList.size files)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let file = (javaCast (jio (BasicArrayList.get files index)) :: AbFile.AbFile)
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
            Control.Monad.void (StringMaker.append stringBuffer nEW_LINE)
        (StringMaker.toString stringBuffer)


