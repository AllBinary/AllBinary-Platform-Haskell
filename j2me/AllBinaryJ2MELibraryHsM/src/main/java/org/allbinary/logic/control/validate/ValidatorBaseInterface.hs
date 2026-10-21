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
-- package org.allbinary.logic.control.validate
module ValidatorBaseInterface where

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
import qualified Any -- same package or java.lang
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data ValidatorBaseInterface = ValidatorBaseInterface
    { header_ :: JavaHeader
    }

instance JavaNull ValidatorBaseInterface where
    javaNull = javaNullRecord "ValidatorBaseInterface"

instance JavaEquals ValidatorBaseInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ValidatorBaseInterface where
    (==) = jrecordEquals

instance JavaObjectClass ValidatorBaseInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ValidatorBaseInterface
fromHeader_ header = ValidatorBaseInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ValidatorBaseInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ValidatorBaseInterface))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: ValidatorBaseInterface))

isValid_impl :: ValidatorBaseInterface -> IO (Bool)
isValid_impl this = javaAbstractMethod "isValid"


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: ValidatorBaseInterface))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: ValidatorBaseInterface))

validationInfo_impl :: ValidatorBaseInterface -> IO (String)
validationInfo_impl this = javaAbstractMethod "validationInfo"


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: ValidatorBaseInterface))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: ValidatorBaseInterface))

toHashtable_impl :: ValidatorBaseInterface -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = javaAbstractMethod "toHashtable"


toList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList object_ = jmethod object_ "toList" (\() -> (toList_impl (javaCast object_ :: ValidatorBaseInterface))) ()

toList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList_super object_ = (toList_impl (javaCast object_ :: ValidatorBaseInterface))

toList_impl :: ValidatorBaseInterface -> IO (BasicArrayList.BasicArrayList)
toList_impl this = javaAbstractMethod "toList"


