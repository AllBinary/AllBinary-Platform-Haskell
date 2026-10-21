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
module OperatingSystemInterface where

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
import qualified CharacterSet -- org.allbinary.logic.java.character.CharacterSet

-- Java interface: the classes that implement it have these functions
data OperatingSystemInterface = OperatingSystemInterface
    { header_ :: JavaHeader
    }

instance JavaNull OperatingSystemInterface where
    javaNull = javaNullRecord "OperatingSystemInterface"

instance JavaEquals OperatingSystemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OperatingSystemInterface where
    (==) = jrecordEquals

instance JavaObjectClass OperatingSystemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OperatingSystemInterface
fromHeader_ header = OperatingSystemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OperatingSystemInterface header)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: OperatingSystemInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: OperatingSystemInterface))

getName_impl :: OperatingSystemInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: OperatingSystemInterface))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: OperatingSystemInterface))

getVersion_impl :: OperatingSystemInterface -> IO (String)
getVersion_impl this = javaAbstractMethod "getVersion"


getArch :: (JavaObjectClass this_) => this_ -> IO (String)
getArch object_ = jmethod object_ "getArch" (\() -> (getArch_impl (javaCast object_ :: OperatingSystemInterface))) ()

getArch_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArch_super object_ = (getArch_impl (javaCast object_ :: OperatingSystemInterface))

getArch_impl :: OperatingSystemInterface -> IO (String)
getArch_impl this = javaAbstractMethod "getArch"


getCharacterSet :: (JavaObjectClass this_) => this_ -> IO (CharacterSet.CharacterSet)
getCharacterSet object_ = jmethod object_ "getCharacterSet" (\() -> (getCharacterSet_impl (javaCast object_ :: OperatingSystemInterface))) ()

getCharacterSet_super :: (JavaObjectClass this_) => this_ -> IO (CharacterSet.CharacterSet)
getCharacterSet_super object_ = (getCharacterSet_impl (javaCast object_ :: OperatingSystemInterface))

getCharacterSet_impl :: OperatingSystemInterface -> IO (CharacterSet.CharacterSet)
getCharacterSet_impl this = javaAbstractMethod "getCharacterSet"


isOverScan :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan object_ = jmethod object_ "isOverScan" (\() -> (isOverScan_impl (javaCast object_ :: OperatingSystemInterface))) ()

isOverScan_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan_super object_ = (isOverScan_impl (javaCast object_ :: OperatingSystemInterface))

isOverScan_impl :: OperatingSystemInterface -> IO (Bool)
isOverScan_impl this = javaAbstractMethod "isOverScan"


getOverScanXPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent object_ = jmethod object_ "getOverScanXPercent" (\() -> (getOverScanXPercent_impl (javaCast object_ :: OperatingSystemInterface))) ()

getOverScanXPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent_super object_ = (getOverScanXPercent_impl (javaCast object_ :: OperatingSystemInterface))

getOverScanXPercent_impl :: OperatingSystemInterface -> IO (Int)
getOverScanXPercent_impl this = javaAbstractMethod "getOverScanXPercent"


getOverScanYPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent object_ = jmethod object_ "getOverScanYPercent" (\() -> (getOverScanYPercent_impl (javaCast object_ :: OperatingSystemInterface))) ()

getOverScanYPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent_super object_ = (getOverScanYPercent_impl (javaCast object_ :: OperatingSystemInterface))

getOverScanYPercent_impl :: OperatingSystemInterface -> IO (Int)
getOverScanYPercent_impl this = javaAbstractMethod "getOverScanYPercent"


isScalable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isScalable object_ = jmethod object_ "isScalable" (\() -> (isScalable_impl (javaCast object_ :: OperatingSystemInterface))) ()

isScalable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isScalable_super object_ = (isScalable_impl (javaCast object_ :: OperatingSystemInterface))

isScalable_impl :: OperatingSystemInterface -> IO (Bool)
isScalable_impl this = javaAbstractMethod "isScalable"


isAutoHide :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoHide object_ = jmethod object_ "isAutoHide" (\() -> (isAutoHide_impl (javaCast object_ :: OperatingSystemInterface))) ()

isAutoHide_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoHide_super object_ = (isAutoHide_impl (javaCast object_ :: OperatingSystemInterface))

isAutoHide_impl :: OperatingSystemInterface -> IO (Bool)
isAutoHide_impl this = javaAbstractMethod "isAutoHide"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: OperatingSystemInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: OperatingSystemInterface))

toString_impl :: OperatingSystemInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


