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
module AbPathData where

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
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AbPathData = AbPathData
    { header_ :: JavaHeader
    , eXTENSION_SEP :: IORef (String)
    , sEPARATORCHAR :: IORef (Char)
    , sEPARATOR :: IORef (String)
    }

instance JavaNull AbPathData where
    javaNull = javaNullRecord "AbPathData"

instance JavaEquals AbPathData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbPathData where
    (==) = jrecordEquals

instance JavaObjectClass AbPathData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbPathData
newRecord_ = do
    header_ <- newJavaHeader
    eXTENSION_SEP <- newIORef ""
    sEPARATORCHAR <- newIORef '\0'
    sEPARATOR <- newIORef ""
    let this = AbPathData header_ eXTENSION_SEP sEPARATORCHAR sEPARATOR
    jregisterLevel header_ this
    jregisterMethod header_ "getExtensionIndex" (\() -> getExtensionIndex_impl this)
    jregisterMethod header_ "getExtensionWithDot" (\() -> getExtensionWithDot_impl this)
    jregisterMethod header_ "getExtension" (\() -> getExtension_impl this)
    jregisterMethod header_ "getNameFromPath" (\() -> getNameFromPath_impl this)
    jregisterMethod header_ "removeNameFromPath" (\() -> removeNameFromPath_impl this)
    pure this

initFields_ :: AbPathData -> IO ()
initFields_ this = do
    jset this.eXTENSION_SEP ((jget ((jio (CommonSeps.getInstance))).pERIOD))
    jset this.sEPARATORCHAR ('/')
    jset this.sEPARATOR ((jget ((jio (CommonSeps.getInstance))).fORWARD_SLASH))
    pure ()


getInstance :: IO (AbPathData)
getInstance = do
        pure (AbPathData.instance_)

new_ :: IO AbPathData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbPathData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getExtensionIndex :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getExtensionIndex object_ a1 = jmethod object_ "getExtensionIndex" (\() -> (getExtensionIndex_impl (javaCast object_ :: AbPathData))) () a1

getExtensionIndex_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getExtensionIndex_super object_ a1 = (getExtensionIndex_impl (javaCast object_ :: AbPathData)) a1

getExtensionIndex_impl :: AbPathData -> String -> IO (Int)
getExtensionIndex_impl this filePath = do
    javaCatchReturn $ do
        let indexOfFileExtensionDelmiter = (jstringLastIndexOf filePath (jget (this).eXTENSION_SEP))
        let indexOfLatDelimiter = (jstringLastIndexOf filePath (jget (this).sEPARATORCHAR))
        when (indexOfFileExtensionDelmiter < 0) $ do
            javaReturn ((Prelude.negate 1))
        when (indexOfFileExtensionDelmiter < indexOfLatDelimiter) $ do
            javaReturn ((Prelude.negate 1))
        pure (indexOfFileExtensionDelmiter)


getExtensionWithDot :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtensionWithDot object_ a1 = jmethod object_ "getExtensionWithDot" (\() -> (getExtensionWithDot_impl (javaCast object_ :: AbPathData))) () a1

getExtensionWithDot_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtensionWithDot_super object_ a1 = (getExtensionWithDot_impl (javaCast object_ :: AbPathData)) a1

getExtensionWithDot_impl :: AbPathData -> String -> IO (String)
getExtensionWithDot_impl this filePath = do
        indexOfFileExtensionDelmiter <- (AbPathData.getExtensionIndex this filePath)
        extension <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        when (indexOfFileExtensionDelmiter >= 0) $ do
            jset extension ((Prelude.drop indexOfFileExtensionDelmiter filePath))
        pure ((jget extension))


getExtension :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtension object_ a1 = jmethod object_ "getExtension" (\() -> (getExtension_impl (javaCast object_ :: AbPathData))) () a1

getExtension_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtension_super object_ a1 = (getExtension_impl (javaCast object_ :: AbPathData)) a1

getExtension_impl :: AbPathData -> String -> IO (String)
getExtension_impl this filePath = do
        indexOfFileExtensionDelmiter <- (AbPathData.getExtensionIndex this filePath)
        extension <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        when (indexOfFileExtensionDelmiter >= 0) $ do
            jset extension ((Prelude.drop (indexOfFileExtensionDelmiter + 1) filePath))
        pure ((jget extension))


getNameFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNameFromPath object_ a1 = jmethod object_ "getNameFromPath" (\() -> (getNameFromPath_impl (javaCast object_ :: AbPathData))) () a1

getNameFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNameFromPath_super object_ a1 = (getNameFromPath_impl (javaCast object_ :: AbPathData)) a1

getNameFromPath_impl :: AbPathData -> String -> IO (String)
getNameFromPath_impl this path = do
    javaCatchReturn $ do
        endIndex <- newIORef ((jstringLastIndexOf path (jget (this).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            jset endIndex ((jstringLastIndexOf path (jget ((jio (FilePathData.getInstance))).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            javaReturn (path)
        if ((Prelude.length path) == ((jget endIndex) + 1)) then do
            let categoryName = (Prelude.take (((jget endIndex)) - (0)) (Prelude.drop (0) path))
            javaReturn =<< (AbPathData.getNameFromPath this categoryName)
        else do
            let categoryName = (Prelude.drop ((jget endIndex) + 1) path)
            javaReturn (categoryName)


removeNameFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (String)
removeNameFromPath object_ a1 = jmethod object_ "removeNameFromPath" (\() -> (removeNameFromPath_impl (javaCast object_ :: AbPathData))) () a1

removeNameFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
removeNameFromPath_super object_ a1 = (removeNameFromPath_impl (javaCast object_ :: AbPathData)) a1

removeNameFromPath_impl :: AbPathData -> String -> IO (String)
removeNameFromPath_impl this path = do
    javaCatchReturn $ do
        endIndex <- newIORef ((jstringLastIndexOf path (jget (this).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            jset endIndex ((jstringLastIndexOf path (jget ((jio (FilePathData.getInstance))).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        if ((Prelude.length path) == ((jget endIndex) + 1)) then do
            javaReturn =<< (AbPathData.removeNameFromPath this (Prelude.take ((((jget endIndex) - 1)) - (0)) (Prelude.drop (0) path)))
        else do
            let pathWithoutName = (Prelude.take (((jget endIndex)) - (0)) (Prelude.drop (0) path))
            javaReturn (pathWithoutName)


