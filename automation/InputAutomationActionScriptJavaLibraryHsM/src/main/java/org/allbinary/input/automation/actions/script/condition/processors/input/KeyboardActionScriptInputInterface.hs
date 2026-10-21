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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module KeyboardActionScriptInputInterface (module KeyboardActionScriptInputInterface, module ProfileActionScriptInputInterface) where

import ProfileActionScriptInputInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDelayBetweenKeys, getDelayBetweenKeys_super, getDelayBetweenKeys_impl, getKeyArray, getKeyArray_super, getKeyArray_impl, isPress, isPress_super, isPress_impl, isRelease, isRelease_super, isRelease_impl, isNormal, isNormal_super, isNormal_impl, setPress, setPress_super, setPress_impl, setRelease, setRelease_super, setRelease_impl, setNormal, setNormal_super, setNormal_impl, getText, getText_super, getText_impl, setText, setText_super, setText_impl, log, log_super, log_impl, toString)
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
import qualified ProfileActionScriptInputInterface

-- Java interface: the classes that implement it have these functions
data KeyboardActionScriptInputInterface = KeyboardActionScriptInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull KeyboardActionScriptInputInterface where
    javaNull = javaNullRecord "KeyboardActionScriptInputInterface"

instance JavaEquals KeyboardActionScriptInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyboardActionScriptInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass KeyboardActionScriptInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> KeyboardActionScriptInputInterface
fromHeader_ header = KeyboardActionScriptInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (KeyboardActionScriptInputInterface header)
    ProfileActionScriptInputInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDelayBetweenKeys :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelayBetweenKeys object_ = jmethod object_ "getDelayBetweenKeys" (\() -> (getDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

getDelayBetweenKeys_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelayBetweenKeys_super object_ = (getDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

getDelayBetweenKeys_impl :: KeyboardActionScriptInputInterface -> IO (Int)
getDelayBetweenKeys_impl this = javaAbstractMethod "getDelayBetweenKeys"


getKeyArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getKeyArray object_ = jmethod object_ "getKeyArray" (\() -> (getKeyArray_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

getKeyArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getKeyArray_super object_ = (getKeyArray_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

getKeyArray_impl :: KeyboardActionScriptInputInterface -> IO (JavaArray (Int))
getKeyArray_impl this = javaAbstractMethod "getKeyArray"


isPress :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPress object_ = jmethod object_ "isPress" (\() -> (isPress_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

isPress_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPress_super object_ = (isPress_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

isPress_impl :: KeyboardActionScriptInputInterface -> IO (Bool)
isPress_impl this = javaAbstractMethod "isPress"


isRelease :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRelease object_ = jmethod object_ "isRelease" (\() -> (isRelease_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

isRelease_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRelease_super object_ = (isRelease_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

isRelease_impl :: KeyboardActionScriptInputInterface -> IO (Bool)
isRelease_impl this = javaAbstractMethod "isRelease"


isNormal :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNormal object_ = jmethod object_ "isNormal" (\() -> (isNormal_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

isNormal_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNormal_super object_ = (isNormal_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

isNormal_impl :: KeyboardActionScriptInputInterface -> IO (Bool)
isNormal_impl this = javaAbstractMethod "isNormal"


setPress :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPress object_ a1 = jmethod object_ "setPress" (\() -> (setPress_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) () a1

setPress_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPress_super object_ a1 = (setPress_impl (javaCast object_ :: KeyboardActionScriptInputInterface)) a1

setPress_impl :: KeyboardActionScriptInputInterface -> Bool -> IO (())
setPress_impl this press = javaAbstractMethod "setPress"


setRelease :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRelease object_ a1 = jmethod object_ "setRelease" (\() -> (setRelease_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) () a1

setRelease_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRelease_super object_ a1 = (setRelease_impl (javaCast object_ :: KeyboardActionScriptInputInterface)) a1

setRelease_impl :: KeyboardActionScriptInputInterface -> Bool -> IO (())
setRelease_impl this release = javaAbstractMethod "setRelease"


setNormal :: (JavaObjectClass this_) => this_ -> IO (())
setNormal object_ = jmethod object_ "setNormal" (\() -> (setNormal_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

setNormal_super :: (JavaObjectClass this_) => this_ -> IO (())
setNormal_super object_ = (setNormal_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

setNormal_impl :: KeyboardActionScriptInputInterface -> IO (())
setNormal_impl this = javaAbstractMethod "setNormal"


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

getText_impl :: KeyboardActionScriptInputInterface -> IO (String)
getText_impl this = javaAbstractMethod "getText"


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: KeyboardActionScriptInputInterface)) a1

setText_impl :: KeyboardActionScriptInputInterface -> String -> IO (())
setText_impl this text = javaAbstractMethod "setText"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: KeyboardActionScriptInputInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: KeyboardActionScriptInputInterface))

log_impl :: KeyboardActionScriptInputInterface -> IO (())
log_impl this = javaAbstractMethod "log"


