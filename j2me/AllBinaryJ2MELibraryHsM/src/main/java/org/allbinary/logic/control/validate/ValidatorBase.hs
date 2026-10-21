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
module ValidatorBase where

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
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified ValidatorBaseInterface

-- implements ValidatorBaseInterface
data ValidatorBase = ValidatorBase
    { header_ :: JavaHeader
    }

instance JavaNull ValidatorBase where
    javaNull = javaNullRecord "ValidatorBase"

instance JavaEquals ValidatorBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ValidatorBase where
    (==) = jrecordEquals

instance JavaObjectClass ValidatorBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ValidatorBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = ValidatorBase header_
    jregisterLevel header_ this
    ValidatorBaseInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toHashtable" (\() -> toHashtable_impl this)
    jregisterMethod header_ "toList" (\() -> toList_impl this)
    pure this

initFields_ :: ValidatorBase -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ValidatorBase)
getInstance = do
        pure (ValidatorBase.instance_)

new_ :: IO ValidatorBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ValidatorBase -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ValidatorBase))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: ValidatorBase))

isValid_impl :: ValidatorBase -> IO (Bool)
isValid_impl this = do
        pure ((jget ((jio (BooleanFactory.getInstance))).tRUE))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: ValidatorBase))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: ValidatorBase))

validationInfo_impl :: ValidatorBase -> IO (String)
validationInfo_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: ValidatorBase))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: ValidatorBase))

toHashtable_impl :: ValidatorBase -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


toList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList object_ = jmethod object_ "toList" (\() -> (toList_impl (javaCast object_ :: ValidatorBase))) ()

toList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList_super object_ = (toList_impl (javaCast object_ :: ValidatorBase))

toList_impl :: ValidatorBase -> IO (BasicArrayList.BasicArrayList)
toList_impl this = do
        (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))


