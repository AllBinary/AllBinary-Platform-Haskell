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
-- package org.allbinary.game.identification
module Group where

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
import qualified GroupCommonFactory -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GroupInterface

-- implements GroupInterface
data Group = Group
    { header_ :: JavaHeader
    , name :: IORef (String)
    , teamId :: IORef (Int16)
    , string :: IORef (String)
    }

instance JavaNull Group where
    javaNull = javaNullRecord "Group"

instance JavaEquals Group where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Group where
    (==) = jrecordEquals

instance JavaObjectClass Group where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Group
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    teamId <- newIORef 0
    string <- newIORef ""
    let this = Group header_ name teamId string
    jregisterLevel header_ this
    GroupInterface.registerInterface_ header_
    jregisterMethod header_ "getGroupName" (\() -> getGroupName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getGroupId" (\() -> getGroupId_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Group -> IO ()
initFields_ this = do
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.teamId (0)
    jset this.string ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_2 :: String -> Int16 -> IO Group
new_2 teamName teamId = do
    this <- newRecord_
    init_2 this teamName teamId
    pure this

init_2 :: Group -> String -> Int16 -> IO ()
init_2 this teamName teamId = do
        initFields_ this
        jset (this).teamId (teamId)
        Control.Monad.void (Group.setName this teamName)
        pure ()


getGroupName :: (JavaObjectClass this_) => this_ -> IO (String)
getGroupName object_ = jmethod object_ "getGroupName" (\() -> (getGroupName_impl (javaCast object_ :: Group))) ()

getGroupName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroupName_super object_ = (getGroupName_impl (javaCast object_ :: Group))

getGroupName_impl :: Group -> IO (String)
getGroupName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: Group))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: Group)) a1

setName_impl :: Group -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        groupCommonFactory <- (GroupCommonFactory.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (groupCommonFactory).gROUP_NAME_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).name))
        Control.Monad.void (StringMaker.append stringBuffer (jget (groupCommonFactory).iD_LABEL))
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).teamId))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).string (assignedValue)
        pure ()


getGroupId :: (JavaObjectClass this_) => this_ -> IO (Int16)
getGroupId object_ = jmethod object_ "getGroupId" (\() -> (getGroupId_impl (javaCast object_ :: Group))) ()

getGroupId_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getGroupId_super object_ = (getGroupId_impl (javaCast object_ :: Group))

getGroupId_impl :: Group -> IO (Int16)
getGroupId_impl this = do
        pure ((jget (this).teamId))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Group))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Group))

toString_impl :: Group -> IO (String)
toString_impl this = do
        pure ((jget (this).string))


