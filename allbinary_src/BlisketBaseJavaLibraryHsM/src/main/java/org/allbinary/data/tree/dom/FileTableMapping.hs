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
-- package org.allbinary.data.tree.dom
module FileTableMapping where

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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileData -- org.allbinary.logic.io.file.FileData
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified PathUtil -- org.allbinary.logic.io.path.PathUtil

-- implements TableMappingInterface
data FileTableMapping = FileTableMapping
    { header_ :: JavaHeader
    , file :: IORef (AbFile.AbFile)
    }

instance JavaNull FileTableMapping where
    javaNull = javaNullRecord "FileTableMapping"

instance JavaEquals FileTableMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileTableMapping where
    (==) = jrecordEquals

instance JavaObjectClass FileTableMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileTableMapping
newRecord_ = do
    header_ <- newJavaHeader
    file <- newIORef javaNull
    let this = FileTableMapping header_ file
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: FileTableMapping -> IO ()
initFields_ this = do
    jset this.file (javaNull)
    pure ()

new_1 :: AbFile.AbFile -> IO FileTableMapping
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: FileTableMapping -> AbFile.AbFile -> IO ()
init_1 this file = do
        initFields_ this
        jset (this).file (file)
        pure ()


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: FileTableMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: FileTableMapping))

getKey_impl :: FileTableMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (AbFile.getPath ((jget (this).file)))) :: Any.Any)))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: FileTableMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: FileTableMapping))

toVector_impl :: FileTableMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        filePropertyVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add filePropertyVector (jio (AbFile.getAbsolutePath ((jget (this).file)))))
        Control.Monad.void (BasicArrayList.add filePropertyVector (jio (AbFile.getCanonicalPath ((jget (this).file)))))
        Control.Monad.void (BasicArrayList.add filePropertyVector (jio (AbFile.getName ((jget (this).file)))))
        Control.Monad.void (BasicArrayList.add filePropertyVector (jio (AbFile.getParent ((jget (this).file)))))
        Control.Monad.void (BasicArrayList.add filePropertyVector (jio (AbFile.getPath ((jget (this).file)))))
        pure (filePropertyVector)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: FileTableMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: FileTableMapping))

toHashMap_impl :: FileTableMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        filePropertyHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        pathData <- (AbPathData.getInstance)
        pathUtil <- (PathUtil.getInstance)
        rootFileName <- (AbPathData.getNameFromPath pathData (jio (PathUtil.getWithoutExtension pathUtil (jio (AbFile.getPath ((jget (this).file)))))))
        fileData <- (FileData.getInstance)
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).rOOT_NAME) rootFileName)
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).iSFILE) (javaToString (javaToString (jio (AbFile.isFile ((jget (this).file)))))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).iSDIRECTORY) (javaToString (javaToString (jio (AbFile.isDirectory ((jget (this).file)))))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).iSHIDDEN) (javaToString (javaToString (jio (AbFile.isHidden ((jget (this).file)))))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).iSABSOLUTE) (javaToString (javaToString (jio (AbFile.isAbsolute ((jget (this).file)))))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).aBSOLUTE_PATH) (jio (AbFile.getAbsolutePath ((jget this.file)))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).cANONICAL_PATH) (jio (AbFile.getCanonicalPath ((jget this.file)))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).nAME) (jio (AbFile.getName ((jget this.file)))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).pARENT) (jio (AbFile.getParent ((jget this.file)))))
        Control.Monad.void (HashMap.put filePropertyHashMap (jget (fileData).pATH) (jio (AbFile.getPath ((jget this.file)))))
        pure (filePropertyHashMap)


