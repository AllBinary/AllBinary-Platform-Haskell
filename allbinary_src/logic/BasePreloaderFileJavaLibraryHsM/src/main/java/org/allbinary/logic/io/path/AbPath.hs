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
-- package org.allbinary.logic.io.path
module AbPath where

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
import qualified AbPathData -- same package or java.lang
import qualified PathUtil -- same package or java.lang
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified FilePathUtil -- org.allbinary.logic.io.file.FilePathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AbPath = AbPath
    { header_ :: JavaHeader
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , abPathData :: IORef (AbPathData.AbPathData)
    , abPathUtil :: IORef (PathUtil.PathUtil)
    , eMPTY_STRING :: IORef (String)
    , schema :: IORef (String)
    , path :: IORef (String)
    , nameP :: IORef (String)
    , hasSchemaP :: IORef (Bool)
    , numberOfSeps :: IORef (Int)
    }

instance JavaNull AbPath where
    javaNull = javaNullRecord "AbPath"

instance JavaEquals AbPath where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbPath where
    (==) = jrecordEquals

instance JavaObjectClass AbPath where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nETWORK_SEP = ":/"

newRecord_ :: IO AbPath
newRecord_ = do
    header_ <- newJavaHeader
    commonSeps <- newIORef javaNull
    abPathData <- newIORef javaNull
    abPathUtil <- newIORef javaNull
    eMPTY_STRING <- newIORef ""
    schema <- newIORef ""
    path <- newIORef ""
    nameP <- newIORef ""
    hasSchemaP <- newIORef False
    numberOfSeps <- newIORef 0
    let this = AbPath header_ commonSeps abPathData abPathUtil eMPTY_STRING schema path nameP hasSchemaP numberOfSeps
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getSchema" (\() -> getSchema_impl this)
    jregisterMethod header_ "hasSchema" (\() -> hasSchema_impl this)
    jregisterMethod header_ "getPathFromPath" (\() -> getPathFromPath_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "toFileSystemString" (\() -> toFileSystemString_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "setPath" (\() -> setPath_impl this)
    pure this

initFields_ :: AbPath -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.abPathData =<< (AbPathData.getInstance)
    jset this.abPathUtil =<< (PathUtil.getInstance)
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.schema ((jget (this).eMPTY_STRING))
    jset this.path ((jget (this).eMPTY_STRING))
    jset this.nameP ((jget (this).eMPTY_STRING))
    jset this.hasSchemaP (False)
    jset this.numberOfSeps (0)
    pure ()


createAbPath :: IO (AbPath)
createAbPath = do
        handle (\(ex :: JavaException) -> do
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            (new_2 eMPTY_STRING eMPTY_STRING)

new_2 :: String -> String -> IO AbPath
new_2 aPath name = do
    this <- newRecord_
    init_2 this aPath name
    pure this

init_2 :: AbPath -> String -> String -> IO ()
init_2 this aPath name = do
        initFields_ this
        stringValidationUtil <- (StringValidationUtil.getInstance)
        if (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aPath))) then do
            assignedValue <- (AbPath.getSchema this aPath)
            jset (this).schema (assignedValue)
            jset (this).nameP (name)
            assignedValue <- (PathUtil.adjustEnd ((jget (this).abPathUtil)) (jio (PathUtil.adjust ((jget (this).abPathUtil)) (jio (AbPath.getPathFromPath this aPath)))))
            jset (this).path (assignedValue)
        else do
            Control.Monad.void (AbPath.init this)
            when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil name))) $ do
                jset (this).nameP (name)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AbPath))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AbPath))

init_impl :: AbPath -> IO (())
init_impl this = do
        jset (this).schema ((jget (this).eMPTY_STRING))
        Control.Monad.void (AbPath.setPath this (jget ((jget (this).abPathData)).sEPARATOR))
        jset (this).nameP ((jget (this).eMPTY_STRING))
        pure ()


getSchema :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getSchema object_ a1 = jmethod object_ "getSchema" (\() -> (getSchema_impl (javaCast object_ :: AbPath))) () a1

getSchema_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getSchema_super object_ a1 = (getSchema_impl (javaCast object_ :: AbPath)) a1

getSchema_impl :: AbPath -> String -> IO (String)
getSchema_impl this aPath = do
    javaCatchReturn $ do
        let beginIndex = (jstringIndexOf aPath (jget ((jget (this).commonSeps)).cOLON) 0)
        when (beginIndex >= 0) $ do
            jset (this).hasSchemaP (True)
            javaReturn ((Prelude.take ((beginIndex) - (0)) (Prelude.drop (0) aPath)))
        jset (this).hasSchemaP (False)
        pure ((jget (this).eMPTY_STRING))


hasSchema :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasSchema object_ = jmethod object_ "hasSchema" (\() -> (hasSchema_impl (javaCast object_ :: AbPath))) ()

hasSchema_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasSchema_super object_ = (hasSchema_impl (javaCast object_ :: AbPath))

hasSchema_impl :: AbPath -> IO (Bool)
hasSchema_impl this = do
        pure ((jget (this).hasSchemaP))


-- throws Exception
getPathFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getPathFromPath object_ a1 = jmethod object_ "getPathFromPath" (\() -> (getPathFromPath_impl (javaCast object_ :: AbPath))) () a1

getPathFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getPathFromPath_super object_ a1 = (getPathFromPath_impl (javaCast object_ :: AbPath)) a1

getPathFromPath_impl :: AbPath -> String -> IO (String)
getPathFromPath_impl this aPath = do
        filePathData <- (FilePathData.getInstance)
        tempPath <- newIORef (aPath)
        if (Prelude.not (jio (AbPath.hasSchema this))) then do
            assignedValue <- (PathUtil.adjustStart ((jget (this).abPathUtil)) (jget tempPath))
            jset tempPath (assignedValue)
        else do
            beginIndex <- newIORef ((jstringIndexOf (jget tempPath) (jget ((jget (this).commonSeps)).cOLON) 0))
            when ((jget beginIndex) >= 0) $ do
                jset beginIndex ((jget beginIndex) + 1)
                fix $ \loop -> when ((((jget tempPath) Prelude.!! (jget beginIndex)) == (jget ((jget (this).abPathData)).sEPARATORCHAR)) || (((jget tempPath) Prelude.!! (jget beginIndex)) == (jget (filePathData).sEPARATORCHAR))) $ javaIteration (loop) $ do
                    jset beginIndex ((jget beginIndex) + 1)
                    jset (this).numberOfSeps ((jget (this).numberOfSeps) + 1)
                    when ((jget (this).numberOfSeps) > 2) $ do
                        javaThrow ((JavaException "Exception" "Should Not Have More Than Two Seps"))
                jset tempPath ((Prelude.take (((Prelude.length (jget tempPath))) - ((jget beginIndex))) (Prelude.drop ((jget beginIndex)) (jget tempPath))))
        pure ((jget tempPath))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: AbPath))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: AbPath)) a1

setName_impl :: AbPath -> String -> IO (())
setName_impl this name = do
        jset (this).nameP (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AbPath))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AbPath))

getName_impl :: AbPath -> IO (String)
getName_impl this = do
        pure ((jget (this).nameP))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbPath))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbPath))

toString_impl :: AbPath -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        when (jio (AbPath.hasSchema this)) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).schema))
            Control.Monad.void (StringMaker.append stringBuffer (AbPath.nETWORK_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.getPath this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).nameP))
        (StringMaker.toString stringBuffer)


toFileSystemString :: (JavaObjectClass this_) => this_ -> IO (String)
toFileSystemString object_ = jmethod object_ "toFileSystemString" (\() -> (toFileSystemString_impl (javaCast object_ :: AbPath))) ()

toFileSystemString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toFileSystemString_super object_ = (toFileSystemString_impl (javaCast object_ :: AbPath))

toFileSystemString_impl :: AbPath -> IO (String)
toFileSystemString_impl this = do
    javaCatchReturn $ do
        if (jio (AbPath.hasSchema this)) then do
            filePathData <- (FilePathData.getInstance)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).schema))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).cOLON))
            Control.Monad.void (StringMaker.append stringBuffer (jget (filePathData).pATH_START))
            Control.Monad.void (StringMaker.append stringBuffer (jio (FilePathUtil.adjust (jio (AbPath.getPath this)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).nameP))
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            javaReturn ((javaToString (jio (FilePathUtil.adjust (jio (AbPath.getPath this)))) ++ (jget (this).nameP)))


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: AbPath))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: AbPath))

getPath_impl :: AbPath -> IO (String)
getPath_impl this = do
        pure ((jget (this).path))


setPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: AbPath))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: AbPath)) a1

setPath_impl :: AbPath -> String -> IO (())
setPath_impl this path = do
        jset (this).path (path)
        pure ()


