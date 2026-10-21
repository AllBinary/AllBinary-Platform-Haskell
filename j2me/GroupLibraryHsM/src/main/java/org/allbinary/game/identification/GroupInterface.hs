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
module GroupInterface where

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

-- Java interface: the classes that implement it have these functions
data GroupInterface = GroupInterface
    { header_ :: JavaHeader
    }

instance JavaNull GroupInterface where
    javaNull = javaNullRecord "GroupInterface"

instance JavaEquals GroupInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GroupInterface where
    (==) = jrecordEquals

instance JavaObjectClass GroupInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GroupInterface
fromHeader_ header = GroupInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GroupInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getGroupName :: (JavaObjectClass this_) => this_ -> IO (String)
getGroupName object_ = jmethod object_ "getGroupName" (\() -> (getGroupName_impl (javaCast object_ :: GroupInterface))) ()

getGroupName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroupName_super object_ = (getGroupName_impl (javaCast object_ :: GroupInterface))

getGroupName_impl :: GroupInterface -> IO (String)
getGroupName_impl this = javaAbstractMethod "getGroupName"


getGroupId :: (JavaObjectClass this_) => this_ -> IO (Int16)
getGroupId object_ = jmethod object_ "getGroupId" (\() -> (getGroupId_impl (javaCast object_ :: GroupInterface))) ()

getGroupId_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getGroupId_super object_ = (getGroupId_impl (javaCast object_ :: GroupInterface))

getGroupId_impl :: GroupInterface -> IO (Int16)
getGroupId_impl this = javaAbstractMethod "getGroupId"


