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
-- package org.allbinary.logic.system.security.licensing
module LockableFeatureFactory where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data LockableFeatureFactory = LockableFeatureFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull LockableFeatureFactory where
    javaNull = javaNullRecord "LockableFeatureFactory"

instance JavaEquals LockableFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockableFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass LockableFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LockableFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = LockableFeatureFactory header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: LockableFeatureFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO LockableFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LockableFeatureFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LockableFeatureFactory)
getInstance = do
        pure (LockableFeatureFactory.instance_)


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: LockableFeatureFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: LockableFeatureFactory))

getList_impl :: LockableFeatureFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


