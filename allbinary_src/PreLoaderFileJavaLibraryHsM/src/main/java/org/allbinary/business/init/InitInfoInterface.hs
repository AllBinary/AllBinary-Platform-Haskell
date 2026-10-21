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
-- package org.allbinary.business.init
module InitInfoInterface where

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
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

-- Java interface: the classes that implement it have these functions
data InitInfoInterface = InitInfoInterface
    { header_ :: JavaHeader
    }

instance JavaNull InitInfoInterface where
    javaNull = javaNullRecord "InitInfoInterface"

instance JavaEquals InitInfoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitInfoInterface where
    (==) = jrecordEquals

instance JavaObjectClass InitInfoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InitInfoInterface
fromHeader_ header = InitInfoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InitInfoInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isTesting :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTesting object_ = jmethod object_ "isTesting" (\() -> (isTesting_impl (javaCast object_ :: InitInfoInterface))) ()

isTesting_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTesting_super object_ = (isTesting_impl (javaCast object_ :: InitInfoInterface))

isTesting_impl :: InitInfoInterface -> IO (Bool)
isTesting_impl this = javaAbstractMethod "isTesting"


getTesting :: (JavaObjectClass this_) => this_ -> IO (String)
getTesting object_ = jmethod object_ "getTesting" (\() -> (getTesting_impl (javaCast object_ :: InitInfoInterface))) ()

getTesting_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTesting_super object_ = (getTesting_impl (javaCast object_ :: InitInfoInterface))

getTesting_impl :: InitInfoInterface -> IO (String)
getTesting_impl this = javaAbstractMethod "getTesting"


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: InitInfoInterface))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: InitInfoInterface))

getTestHtmlPath_impl :: InitInfoInterface -> IO (String)
getTestHtmlPath_impl this = javaAbstractMethod "getTestHtmlPath"


getMainPath :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath object_ = jmethod object_ "getMainPath" (\() -> (getMainPath_impl (javaCast object_ :: InitInfoInterface))) ()

getMainPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath_super object_ = (getMainPath_impl (javaCast object_ :: InitInfoInterface))

getMainPath_impl :: InitInfoInterface -> IO (String)
getMainPath_impl this = javaAbstractMethod "getMainPath"


setTesting :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTesting object_ a1 = jmethod object_ "setTesting" (\() -> (setTesting_impl (javaCast object_ :: InitInfoInterface))) () a1

setTesting_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTesting_super object_ a1 = (setTesting_impl (javaCast object_ :: InitInfoInterface)) a1

setTesting_impl :: InitInfoInterface -> String -> IO (())
setTesting_impl this value = javaAbstractMethod "setTesting"


setTestHtmlPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setTestHtmlPath object_ a1 = jmethod object_ "setTestHtmlPath" (\() -> (setTestHtmlPath_impl (javaCast object_ :: InitInfoInterface))) () a1

setTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setTestHtmlPath_super object_ a1 = (setTestHtmlPath_impl (javaCast object_ :: InitInfoInterface)) a1

setTestHtmlPath_impl :: InitInfoInterface -> AbPath.AbPath -> IO (())
setTestHtmlPath_impl this value = javaAbstractMethod "setTestHtmlPath"


setMainPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setMainPath object_ a1 = jmethod object_ "setMainPath" (\() -> (setMainPath_impl (javaCast object_ :: InitInfoInterface))) () a1

setMainPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setMainPath_super object_ a1 = (setMainPath_impl (javaCast object_ :: InitInfoInterface)) a1

setMainPath_impl :: InitInfoInterface -> AbPath.AbPath -> IO (())
setMainPath_impl this value = javaAbstractMethod "setMainPath"


-- throws Exception
isTestingValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isTestingValid object_ a1 = jmethod object_ "isTestingValid" (\() -> (isTestingValid_impl (javaCast object_ :: InitInfoInterface))) () a1

isTestingValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isTestingValid_super object_ a1 = (isTestingValid_impl (javaCast object_ :: InitInfoInterface)) a1

isTestingValid_impl :: InitInfoInterface -> String -> IO (Bool)
isTestingValid_impl this testing = javaAbstractMethod "isTestingValid"


isTestHtmlPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid object_ a1 = jmethod object_ "isTestHtmlPathValid" (\() -> (isTestHtmlPathValid_impl (javaCast object_ :: InitInfoInterface))) () a1

isTestHtmlPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_super object_ a1 = (isTestHtmlPathValid_impl (javaCast object_ :: InitInfoInterface)) a1

isTestHtmlPathValid_impl :: InitInfoInterface -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_impl this value = javaAbstractMethod "isTestHtmlPathValid"


isMainPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid object_ a1 = jmethod object_ "isMainPathValid" (\() -> (isMainPathValid_impl (javaCast object_ :: InitInfoInterface))) () a1

isMainPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid_super object_ a1 = (isMainPathValid_impl (javaCast object_ :: InitInfoInterface)) a1

isMainPathValid_impl :: InitInfoInterface -> AbPath.AbPath -> IO (Bool)
isMainPathValid_impl this value = javaAbstractMethod "isMainPathValid"


