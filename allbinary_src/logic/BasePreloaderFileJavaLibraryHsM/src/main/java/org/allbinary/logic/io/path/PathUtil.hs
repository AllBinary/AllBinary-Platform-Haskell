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
module PathUtil where

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
import qualified AbFilePath -- same package or java.lang
import qualified AbPath -- same package or java.lang
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data PathUtil = PathUtil
    { header_ :: JavaHeader
    , abPathData :: IORef (AbPathData.AbPathData)
    , filePathData :: IORef (FilePathData.FilePathData)
    }

instance JavaNull PathUtil where
    javaNull = javaNullRecord "PathUtil"

instance JavaEquals PathUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathUtil where
    (==) = jrecordEquals

instance JavaObjectClass PathUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathUtil
newRecord_ = do
    header_ <- newJavaHeader
    abPathData <- newIORef javaNull
    filePathData <- newIORef javaNull
    let this = PathUtil header_ abPathData filePathData
    jregisterLevel header_ this
    jregisterMethod header_ "getExtensionWithAbFilePath" (\() -> getExtensionWithAbFilePath_impl this)
    jregisterMethod header_ "getExtensionWithAbPath" (\() -> getExtensionWithAbPath_impl this)
    jregisterMethod header_ "getWithoutExtensionWithAbFilePath" (\() -> getWithoutExtensionWithAbFilePath_impl this)
    jregisterMethod header_ "getWithoutExtensionWithAbPath" (\() -> getWithoutExtensionWithAbPath_impl this)
    jregisterMethod header_ "getWithoutExtension" (\() -> getWithoutExtension_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "isValidStart" (\() -> isValidStart_impl this)
    jregisterMethod header_ "isValidEnd" (\() -> isValidEnd_impl this)
    jregisterMethod header_ "adjustStart" (\() -> adjustStart_impl this)
    jregisterMethod header_ "adjustEnd" (\() -> adjustEnd_impl this)
    jregisterMethod header_ "adjust" (\() -> adjust_impl this)
    jregisterMethod header_ "removeNameFromPath" (\() -> removeNameFromPath_impl this)
    pure this

initFields_ :: PathUtil -> IO ()
initFields_ this = do
    jset this.abPathData =<< (AbPathData.getInstance)
    jset this.filePathData =<< (FilePathData.getInstance)
    pure ()


getInstance :: IO (PathUtil)
getInstance = do
        pure (PathUtil.instance_)

new_ :: IO PathUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getExtensionWithAbFilePath :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getExtensionWithAbFilePath object_ a1 = jmethod object_ "getExtensionWithAbFilePath" (\() -> (getExtensionWithAbFilePath_impl (javaCast object_ :: PathUtil))) () a1

getExtensionWithAbFilePath_super :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getExtensionWithAbFilePath_super object_ a1 = (getExtensionWithAbFilePath_impl (javaCast object_ :: PathUtil)) a1

getExtensionWithAbFilePath_impl :: PathUtil -> AbFilePath.AbFilePath -> IO (String)
getExtensionWithAbFilePath_impl this abFilePath = do
        (AbPathData.getExtension ((jget (this).abPathData)) (jio (AbFilePath.toString abFilePath)))


getExtensionWithAbPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getExtensionWithAbPath object_ a1 = jmethod object_ "getExtensionWithAbPath" (\() -> (getExtensionWithAbPath_impl (javaCast object_ :: PathUtil))) () a1

getExtensionWithAbPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getExtensionWithAbPath_super object_ a1 = (getExtensionWithAbPath_impl (javaCast object_ :: PathUtil)) a1

getExtensionWithAbPath_impl :: PathUtil -> AbPath.AbPath -> IO (String)
getExtensionWithAbPath_impl this abPath = do
        (AbPathData.getExtension ((jget (this).abPathData)) (jio (AbPath.toString abPath)))


-- throws Exception
getWithoutExtensionWithAbFilePath :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtensionWithAbFilePath object_ a1 = jmethod object_ "getWithoutExtensionWithAbFilePath" (\() -> (getWithoutExtensionWithAbFilePath_impl (javaCast object_ :: PathUtil))) () a1

getWithoutExtensionWithAbFilePath_super :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtensionWithAbFilePath_super object_ a1 = (getWithoutExtensionWithAbFilePath_impl (javaCast object_ :: PathUtil)) a1

getWithoutExtensionWithAbFilePath_impl :: PathUtil -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtensionWithAbFilePath_impl this abFilePath = do
        (PathUtil.getWithoutExtension this (jio (AbFilePath.toString abFilePath)))


-- throws Exception
getWithoutExtensionWithAbPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getWithoutExtensionWithAbPath object_ a1 = jmethod object_ "getWithoutExtensionWithAbPath" (\() -> (getWithoutExtensionWithAbPath_impl (javaCast object_ :: PathUtil))) () a1

getWithoutExtensionWithAbPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getWithoutExtensionWithAbPath_super object_ a1 = (getWithoutExtensionWithAbPath_impl (javaCast object_ :: PathUtil)) a1

getWithoutExtensionWithAbPath_impl :: PathUtil -> AbPath.AbPath -> IO (String)
getWithoutExtensionWithAbPath_impl this abPath = do
        (PathUtil.getWithoutExtension this (jio (AbPath.toString abPath)))


-- throws Exception
getWithoutExtension :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWithoutExtension object_ a1 = jmethod object_ "getWithoutExtension" (\() -> (getWithoutExtension_impl (javaCast object_ :: PathUtil))) () a1

getWithoutExtension_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWithoutExtension_super object_ a1 = (getWithoutExtension_impl (javaCast object_ :: PathUtil)) a1

getWithoutExtension_impl :: PathUtil -> String -> IO (String)
getWithoutExtension_impl this filePath = do
        indexOfFileExtensionDelmiter <- (AbPathData.getExtensionIndex ((jget (this).abPathData)) filePath)
        pathWithoutExtension <- newIORef (filePath)
        when (indexOfFileExtensionDelmiter >= 0) $ do
            jset pathWithoutExtension ((Prelude.take ((indexOfFileExtensionDelmiter) - (0)) (Prelude.drop (0) filePath)))
        pure ((jget pathWithoutExtension))


isValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PathUtil))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: PathUtil)) a1

isValid_impl :: PathUtil -> String -> IO (Bool)
isValid_impl this path = do
    javaCatchReturn $ do
        when (jio (PathUtil.isValidStart this path)) $ do
            when (jio (PathUtil.isValidEnd this path)) $ do
                javaReturn (True)
        pure (False)


isValidStart :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidStart object_ a1 = jmethod object_ "isValidStart" (\() -> (isValidStart_impl (javaCast object_ :: PathUtil))) () a1

isValidStart_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidStart_super object_ a1 = (isValidStart_impl (javaCast object_ :: PathUtil)) a1

isValidStart_impl :: PathUtil -> String -> IO (Bool)
isValidStart_impl this path = do
    javaCatchReturn $ do
        if (((path Prelude.!! 0) == (jget ((jget (this).abPathData)).sEPARATORCHAR)) || ((path Prelude.!! 0) == '.')) then do
            javaReturn (True)
        else do
            javaReturn (False)


isValidEnd :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidEnd object_ a1 = jmethod object_ "isValidEnd" (\() -> (isValidEnd_impl (javaCast object_ :: PathUtil))) () a1

isValidEnd_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidEnd_super object_ a1 = (isValidEnd_impl (javaCast object_ :: PathUtil)) a1

isValidEnd_impl :: PathUtil -> String -> IO (Bool)
isValidEnd_impl this path = do
    javaCatchReturn $ do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil path)) $ do
            javaReturn (False)
        if ((path Prelude.!! ((Prelude.length path) - 1)) == (jget ((jget (this).abPathData)).sEPARATORCHAR)) then do
            javaReturn (True)
        else do
            javaReturn (False)


adjustStart :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustStart object_ a1 = jmethod object_ "adjustStart" (\() -> (adjustStart_impl (javaCast object_ :: PathUtil))) () a1

adjustStart_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustStart_super object_ a1 = (adjustStart_impl (javaCast object_ :: PathUtil)) a1

adjustStart_impl :: PathUtil -> String -> IO (String)
adjustStart_impl this path = do
        path <- newIORef path
        when (Prelude.not (jio (PathUtil.isValidStart this (jget path)))) $ do
            jset path ((javaToString (jget ((jget (this).abPathData)).sEPARATOR) ++ (jget path)))
        pure ((jget path))


adjustEnd :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustEnd object_ a1 = jmethod object_ "adjustEnd" (\() -> (adjustEnd_impl (javaCast object_ :: PathUtil))) () a1

adjustEnd_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustEnd_super object_ a1 = (adjustEnd_impl (javaCast object_ :: PathUtil)) a1

adjustEnd_impl :: PathUtil -> String -> IO (String)
adjustEnd_impl this path = do
        path <- newIORef path
        when (Prelude.not (jio (PathUtil.isValidEnd this (jget path)))) $ do
            jset path (((jget path) ++ javaToString (jget ((jget (this).abPathData)).sEPARATOR)))
        pure ((jget path))


adjust :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjust object_ a1 = jmethod object_ "adjust" (\() -> (adjust_impl (javaCast object_ :: PathUtil))) () a1

adjust_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjust_super object_ a1 = (adjust_impl (javaCast object_ :: PathUtil)) a1

adjust_impl :: PathUtil -> String -> IO (String)
adjust_impl this path = do
    path <- newIORef path
    javaCatchReturn $ do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget path))) $ do
            javaReturn ((jget ((jget (this).abPathData)).sEPARATOR))
        when ((jstringIndexOf (jget path) "\\" 0) >= 0) $ do
            jset path ((jstringReplace (jget path) '\\' (jget ((jget (this).abPathData)).sEPARATORCHAR)))
        pure ((jget path))


-- throws Exception
removeNameFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (AbPath.AbPath)
removeNameFromPath object_ a1 = jmethod object_ "removeNameFromPath" (\() -> (removeNameFromPath_impl (javaCast object_ :: PathUtil))) () a1

removeNameFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (AbPath.AbPath)
removeNameFromPath_super object_ a1 = (removeNameFromPath_impl (javaCast object_ :: PathUtil)) a1

removeNameFromPath_impl :: PathUtil -> String -> IO (AbPath.AbPath)
removeNameFromPath_impl this path = do
    javaCatchReturn $ do
        endIndex <- newIORef ((jstringLastIndexOf path (jget ((jget (this).abPathData)).sEPARATOR)))
        when ((jget endIndex) < 0) $ do
            jset endIndex ((jstringLastIndexOf path (jget ((jget (this).filePathData)).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            javaReturn =<< (AbPath.createAbPath)
        if ((Prelude.length path) == ((jget endIndex) + 1)) then do
            javaReturn =<< (PathUtil.removeNameFromPath this (Prelude.take ((((jget endIndex) - 1)) - (0)) (Prelude.drop (0) path)))
        else do
            let pathWithoutName = (Prelude.take (((jget endIndex)) - (0)) (Prelude.drop (0) path))
            javaReturn =<< (AbPath.new_2 pathWithoutName (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


