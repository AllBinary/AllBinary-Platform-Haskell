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
-- package org.allbinary.graphics.form.item
module CommandTextItem (module CommandTextItem, module ABTextItem) where

import ABTextItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isFocusable, isFocusable_super, isFocusable_impl, getCommand, getCommand_super, getCommand_impl, command)
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
import qualified Command -- javax.microedition.lcdui.Command
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ABTextItem

data CommandTextItem = CommandTextItem
    { header_ :: JavaHeader
    , base :: ABTextItem.ABTextItem
    , command :: IORef (Command.Command)
    }

instance JavaNull CommandTextItem where
    javaNull = javaNullRecord "CommandTextItem"

instance JavaEquals CommandTextItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandTextItem where
    (==) = jrecordEquals

instance JavaObjectClass CommandTextItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CommandTextItem
newRecord_ = do
    base <- ABTextItem.newRecord_
    let header_ = base.header_
    command <- newIORef javaNull
    let this = CommandTextItem header_ base command
    jregisterLevel header_ this
    jregisterMethod header_ "isFocusable" (\() -> isFocusable_impl this)
    jregisterMethod header_ "getCommand" (\() -> getCommand_impl this)
    pure this

initFields_ :: CommandTextItem -> IO ()
initFields_ this = do
    jset this.command (javaNull)
    pure ()

new_5 :: Command.Command -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CommandTextItem
new_5 command layout altText backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this command layout altText backgroundBasicColor foregroundBasicColor
    pure this

init_5 :: CommandTextItem -> Command.Command -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this command layout altText backgroundBasicColor foregroundBasicColor = do
        ABTextItem.init_5 this.base (jio (Command.getLabel command)) (layout) (altText) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).command (command)
        pure ()


isFocusable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable object_ = jmethod object_ "isFocusable" (\() -> (isFocusable_impl (javaCast object_ :: CommandTextItem))) ()

isFocusable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable_super object_ = (isFocusable_impl (javaCast object_ :: CommandTextItem))

isFocusable_impl :: CommandTextItem -> IO (Bool)
isFocusable_impl this = do
        pure (True)


getCommand :: (JavaObjectClass this_) => this_ -> IO (Command.Command)
getCommand object_ = jmethod object_ "getCommand" (\() -> (getCommand_impl (javaCast object_ :: CommandTextItem))) ()

getCommand_super :: (JavaObjectClass this_) => this_ -> IO (Command.Command)
getCommand_super object_ = (getCommand_impl (javaCast object_ :: CommandTextItem))

getCommand_impl :: CommandTextItem -> IO (Command.Command)
getCommand_impl this = do
        pure ((jget (this).command))


