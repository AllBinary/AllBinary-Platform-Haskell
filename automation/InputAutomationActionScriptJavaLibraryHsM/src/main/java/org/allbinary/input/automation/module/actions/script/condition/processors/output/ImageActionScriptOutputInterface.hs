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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ImageActionScriptOutputInterface (module ImageActionScriptOutputInterface, module ProfileActionScriptOutputInterface) where

import ProfileActionScriptOutputInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getImageTypes, getImageTypes_super, getImageTypes_impl, setImageTypes, setImageTypes_super, setImageTypes_impl, isSaved, isSaved_super, isSaved_impl, setSaved, setSaved_super, setSaved_impl, isDisplay, isDisplay_super, isDisplay_impl, setDisplay, setDisplay_super, setDisplay_impl, log, log_super, log_impl, toString)
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
import qualified ImageTypes -- same package or java.lang
import qualified ProfileActionScriptOutputInterface

-- Java interface: the classes that implement it have these functions
data ImageActionScriptOutputInterface = ImageActionScriptOutputInterface
    { header_ :: JavaHeader
    }

instance JavaNull ImageActionScriptOutputInterface where
    javaNull = javaNullRecord "ImageActionScriptOutputInterface"

instance JavaEquals ImageActionScriptOutputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageActionScriptOutputInterface where
    (==) = jrecordEquals

instance JavaObjectClass ImageActionScriptOutputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageActionScriptOutputInterface
fromHeader_ header = ImageActionScriptOutputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageActionScriptOutputInterface header)
    ProfileActionScriptOutputInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getImageTypes :: (JavaObjectClass this_) => this_ -> IO (ImageTypes.ImageTypes)
getImageTypes object_ = jmethod object_ "getImageTypes" (\() -> (getImageTypes_impl (javaCast object_ :: ImageActionScriptOutputInterface))) ()

getImageTypes_super :: (JavaObjectClass this_) => this_ -> IO (ImageTypes.ImageTypes)
getImageTypes_super object_ = (getImageTypes_impl (javaCast object_ :: ImageActionScriptOutputInterface))

getImageTypes_impl :: ImageActionScriptOutputInterface -> IO (ImageTypes.ImageTypes)
getImageTypes_impl this = javaAbstractMethod "getImageTypes"


setImageTypes :: (JavaObjectClass this_) => this_ -> ImageTypes.ImageTypes -> IO (())
setImageTypes object_ a1 = jmethod object_ "setImageTypes" (\() -> (setImageTypes_impl (javaCast object_ :: ImageActionScriptOutputInterface))) () a1

setImageTypes_super :: (JavaObjectClass this_) => this_ -> ImageTypes.ImageTypes -> IO (())
setImageTypes_super object_ a1 = (setImageTypes_impl (javaCast object_ :: ImageActionScriptOutputInterface)) a1

setImageTypes_impl :: ImageActionScriptOutputInterface -> ImageTypes.ImageTypes -> IO (())
setImageTypes_impl this imageTypes = javaAbstractMethod "setImageTypes"


isSaved :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSaved object_ = jmethod object_ "isSaved" (\() -> (isSaved_impl (javaCast object_ :: ImageActionScriptOutputInterface))) ()

isSaved_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSaved_super object_ = (isSaved_impl (javaCast object_ :: ImageActionScriptOutputInterface))

isSaved_impl :: ImageActionScriptOutputInterface -> IO (Bool)
isSaved_impl this = javaAbstractMethod "isSaved"


setSaved :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSaved object_ a1 = jmethod object_ "setSaved" (\() -> (setSaved_impl (javaCast object_ :: ImageActionScriptOutputInterface))) () a1

setSaved_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSaved_super object_ a1 = (setSaved_impl (javaCast object_ :: ImageActionScriptOutputInterface)) a1

setSaved_impl :: ImageActionScriptOutputInterface -> Bool -> IO (())
setSaved_impl this saved = javaAbstractMethod "setSaved"


isDisplay :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisplay object_ = jmethod object_ "isDisplay" (\() -> (isDisplay_impl (javaCast object_ :: ImageActionScriptOutputInterface))) ()

isDisplay_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisplay_super object_ = (isDisplay_impl (javaCast object_ :: ImageActionScriptOutputInterface))

isDisplay_impl :: ImageActionScriptOutputInterface -> IO (Bool)
isDisplay_impl this = javaAbstractMethod "isDisplay"


setDisplay :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDisplay object_ a1 = jmethod object_ "setDisplay" (\() -> (setDisplay_impl (javaCast object_ :: ImageActionScriptOutputInterface))) () a1

setDisplay_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDisplay_super object_ a1 = (setDisplay_impl (javaCast object_ :: ImageActionScriptOutputInterface)) a1

setDisplay_impl :: ImageActionScriptOutputInterface -> Bool -> IO (())
setDisplay_impl this display = javaAbstractMethod "setDisplay"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: ImageActionScriptOutputInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: ImageActionScriptOutputInterface))

log_impl :: ImageActionScriptOutputInterface -> IO (())
log_impl this = javaAbstractMethod "log"


