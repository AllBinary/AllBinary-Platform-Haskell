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
-- package org.allbinary.layer
module BasicLayerProcessor where

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
import qualified AllBinaryLayer -- same package or java.lang
import qualified AllBinaryLayerManager -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicLayerProcessor = BasicLayerProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicLayerProcessor where
    javaNull = javaNullRecord "BasicLayerProcessor"

instance JavaEquals BasicLayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicLayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BasicLayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_LAYER_PROCESSOR #-}
nULL_LAYER_PROCESSOR = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicLayerProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    list <- newIORef javaNull
    let this = BasicLayerProcessor header_ logUtil list
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: BasicLayerProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BasicLayerProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicLayerProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


add :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BasicLayerProcessor))) () a1

add_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BasicLayerProcessor)) a1

add_impl :: BasicLayerProcessor -> AllBinaryLayer.AllBinaryLayer -> IO (())
add_impl this layerInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) layerInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterface)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicLayerProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: BasicLayerProcessor)) a1

process_impl :: BasicLayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: BasicLayerProcessor))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: BasicLayerProcessor))

getList_impl :: BasicLayerProcessor -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


