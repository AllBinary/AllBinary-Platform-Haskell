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
-- package tags
module CommandTag (module CommandTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, getCommand, getCommand_super, getCommand_impl, tagStrings, command)
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
import qualified TagStrings -- same package or java.lang
import qualified CustomTagSupport

data CommandTag = CommandTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , tagStrings :: IORef (TagStrings.TagStrings)
    , command :: IORef (String)
    }

instance JavaNull CommandTag where
    javaNull = javaNullRecord "CommandTag"

instance JavaEquals CommandTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandTag where
    (==) = jrecordEquals

instance JavaObjectClass CommandTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CommandTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    tagStrings <- newIORef javaNull
    command <- newIORef ""
    let this = CommandTag header_ base tagStrings command
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "getCommand" (\() -> getCommand_impl this)
    pure this

initFields_ :: CommandTag -> IO ()
initFields_ this = do
    jset this.tagStrings =<< (TagStrings.getInstance)
    jset this.command ("")
    pure ()

new_ :: IO CommandTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommandTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: CommandTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: CommandTag)) a1

setCommand_impl :: CommandTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


getCommand :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand object_ = jmethod object_ "getCommand" (\() -> (getCommand_impl (javaCast object_ :: CommandTag))) ()

getCommand_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand_super object_ = (getCommand_impl (javaCast object_ :: CommandTag))

getCommand_impl :: CommandTag -> IO (String)
getCommand_impl this = do
        pure ((jget (this).command))


