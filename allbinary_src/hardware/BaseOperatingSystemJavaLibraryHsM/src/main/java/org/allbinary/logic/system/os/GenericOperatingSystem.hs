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
-- package org.allbinary.logic.system.os
module GenericOperatingSystem where

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
import qualified SystemProperties -- same package or java.lang
import qualified CharacterSet -- org.allbinary.logic.java.character.CharacterSet
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified OperatingSystemInterface

-- implements OperatingSystemInterface
data GenericOperatingSystem = GenericOperatingSystem
    { header_ :: JavaHeader
    , osName :: IORef (String)
    , osArch :: IORef (String)
    , osVersion :: IORef (String)
    , characterSet :: IORef (CharacterSet.CharacterSet)
    , scalable :: IORef (Bool)
    }

instance JavaNull GenericOperatingSystem where
    javaNull = javaNullRecord "GenericOperatingSystem"

instance JavaEquals GenericOperatingSystem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericOperatingSystem where
    (==) = jrecordEquals

instance JavaObjectClass GenericOperatingSystem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericOperatingSystem
newRecord_ = do
    header_ <- newJavaHeader
    osName <- newIORef ""
    osArch <- newIORef ""
    osVersion <- newIORef ""
    characterSet <- newIORef javaNull
    scalable <- newIORef False
    let this = GenericOperatingSystem header_ osName osArch osVersion characterSet scalable
    jregisterLevel header_ this
    OperatingSystemInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    jregisterMethod header_ "getArch" (\() -> getArch_impl this)
    jregisterMethod header_ "getCharacterSet" (\() -> getCharacterSet_impl this)
    jregisterMethod header_ "isOverScan" (\() -> isOverScan_impl this)
    jregisterMethod header_ "getOverScanXPercent" (\() -> getOverScanXPercent_impl this)
    jregisterMethod header_ "getOverScanYPercent" (\() -> getOverScanYPercent_impl this)
    jregisterMethod header_ "isScalable" (\() -> isScalable_impl this)
    jregisterMethod header_ "isAutoHide" (\() -> isAutoHide_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GenericOperatingSystem -> IO ()
initFields_ this = do
    jset this.osName ("")
    jset this.osArch ("")
    jset this.osVersion ("")
    jset this.characterSet =<< (CharacterSet.new_)
    jset this.scalable (False)
    pure ()

new_ :: IO GenericOperatingSystem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericOperatingSystem -> IO ()
init_ this = do
        initFields_ this
        systemProperties <- (SystemProperties.getInstance)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        if (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (SystemProperties.getName systemProperties)))) then do
            jset (this).osName (eMPTY_STRING)
        else do
            assignedValue <- (SystemProperties.getName systemProperties)
            jset (this).osName (assignedValue)
        if (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (SystemProperties.getArch systemProperties)))) then do
            jset (this).osArch (eMPTY_STRING)
        else do
            assignedValue <- (SystemProperties.getArch systemProperties)
            jset (this).osArch (assignedValue)
        if (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (SystemProperties.getVersion systemProperties)))) then do
            jset (this).osVersion (eMPTY_STRING)
        else do
            assignedValue <- (SystemProperties.getVersion systemProperties)
            jset (this).osVersion (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericOperatingSystem))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericOperatingSystem))

getName_impl :: GenericOperatingSystem -> IO (String)
getName_impl this = do
        pure ((jget (this).osName))


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: GenericOperatingSystem))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: GenericOperatingSystem))

getVersion_impl :: GenericOperatingSystem -> IO (String)
getVersion_impl this = do
        pure ((jget (this).osVersion))


getArch :: (JavaObjectClass this_) => this_ -> IO (String)
getArch object_ = jmethod object_ "getArch" (\() -> (getArch_impl (javaCast object_ :: GenericOperatingSystem))) ()

getArch_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArch_super object_ = (getArch_impl (javaCast object_ :: GenericOperatingSystem))

getArch_impl :: GenericOperatingSystem -> IO (String)
getArch_impl this = do
        pure ((jget (this).osArch))


getCharacterSet :: (JavaObjectClass this_) => this_ -> IO (CharacterSet.CharacterSet)
getCharacterSet object_ = jmethod object_ "getCharacterSet" (\() -> (getCharacterSet_impl (javaCast object_ :: GenericOperatingSystem))) ()

getCharacterSet_super :: (JavaObjectClass this_) => this_ -> IO (CharacterSet.CharacterSet)
getCharacterSet_super object_ = (getCharacterSet_impl (javaCast object_ :: GenericOperatingSystem))

getCharacterSet_impl :: GenericOperatingSystem -> IO (CharacterSet.CharacterSet)
getCharacterSet_impl this = do
        pure ((jget (this).characterSet))


isOverScan :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan object_ = jmethod object_ "isOverScan" (\() -> (isOverScan_impl (javaCast object_ :: GenericOperatingSystem))) ()

isOverScan_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan_super object_ = (isOverScan_impl (javaCast object_ :: GenericOperatingSystem))

isOverScan_impl :: GenericOperatingSystem -> IO (Bool)
isOverScan_impl this = do
        pure (False)


getOverScanXPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent object_ = jmethod object_ "getOverScanXPercent" (\() -> (getOverScanXPercent_impl (javaCast object_ :: GenericOperatingSystem))) ()

getOverScanXPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent_super object_ = (getOverScanXPercent_impl (javaCast object_ :: GenericOperatingSystem))

getOverScanXPercent_impl :: GenericOperatingSystem -> IO (Int)
getOverScanXPercent_impl this = do
        pure (100)


getOverScanYPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent object_ = jmethod object_ "getOverScanYPercent" (\() -> (getOverScanYPercent_impl (javaCast object_ :: GenericOperatingSystem))) ()

getOverScanYPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent_super object_ = (getOverScanYPercent_impl (javaCast object_ :: GenericOperatingSystem))

getOverScanYPercent_impl :: GenericOperatingSystem -> IO (Int)
getOverScanYPercent_impl this = do
        pure (100)


isScalable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isScalable object_ = jmethod object_ "isScalable" (\() -> (isScalable_impl (javaCast object_ :: GenericOperatingSystem))) ()

isScalable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isScalable_super object_ = (isScalable_impl (javaCast object_ :: GenericOperatingSystem))

isScalable_impl :: GenericOperatingSystem -> IO (Bool)
isScalable_impl this = do
        pure ((jget (this).scalable))


isAutoHide :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoHide object_ = jmethod object_ "isAutoHide" (\() -> (isAutoHide_impl (javaCast object_ :: GenericOperatingSystem))) ()

isAutoHide_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoHide_super object_ = (isAutoHide_impl (javaCast object_ :: GenericOperatingSystem))

isAutoHide_impl :: GenericOperatingSystem -> IO (Bool)
isAutoHide_impl this = do
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GenericOperatingSystem))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GenericOperatingSystem))

toString_impl :: GenericOperatingSystem -> IO (String)
toString_impl this = do
        let nEW_LINE = (jget ((jio (CommonSeps.getInstance))).nEW_LINE)
        osBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append osBuffer "Operating System Info: \n")
        Control.Monad.void (StringMaker.append osBuffer (jio (GenericOperatingSystem.getName this)))
        Control.Monad.void (StringMaker.append osBuffer nEW_LINE)
        Control.Monad.void (StringMaker.append osBuffer (jio (GenericOperatingSystem.getArch this)))
        Control.Monad.void (StringMaker.append osBuffer nEW_LINE)
        Control.Monad.void (StringMaker.append osBuffer (jio (GenericOperatingSystem.getVersion this)))
        Control.Monad.void (StringMaker.append osBuffer nEW_LINE)
        Control.Monad.void (StringMaker.append osBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (GenericOperatingSystem.getCharacterSet this)))))
        Control.Monad.void (StringMaker.append osBuffer nEW_LINE)
        (StringMaker.toString osBuffer)


