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
module LayerManagerLoggingBase where

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
import qualified LayerManager -- same package or java.lang

data LayerManagerLoggingBase = LayerManagerLoggingBase
    { header_ :: JavaHeader
    }

instance JavaNull LayerManagerLoggingBase where
    javaNull = javaNullRecord "LayerManagerLoggingBase"

instance JavaEquals LayerManagerLoggingBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManagerLoggingBase where
    (==) = jrecordEquals

instance JavaObjectClass LayerManagerLoggingBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerManagerLoggingBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = LayerManagerLoggingBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "appendAt" (\() -> appendAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeResult" (\() -> removeResult_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: LayerManagerLoggingBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LayerManagerLoggingBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerManagerLoggingBase -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: LayerManagerLoggingBase))) () a1

append_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_super object_ a1 = (append_impl (javaCast object_ :: LayerManagerLoggingBase)) a1

append_impl :: LayerManagerLoggingBase -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_impl this layerInterface = do
        pure ()


appendAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt object_ a1 a2 = jmethod object_ "appendAt" (\() -> (appendAt_impl (javaCast object_ :: LayerManagerLoggingBase))) () a1 a2

appendAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_super object_ a1 a2 = (appendAt_impl (javaCast object_ :: LayerManagerLoggingBase)) a1 a2

appendAt_impl :: LayerManagerLoggingBase -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_impl this layerInterface index = do
        pure ()


remove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: LayerManagerLoggingBase))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: LayerManagerLoggingBase)) a1

remove_impl :: LayerManagerLoggingBase -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_impl this layerInterface = do
        pure ()


removeResult :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult object_ a1 a2 a3 = jmethod object_ "removeResult" (\() -> (removeResult_impl (javaCast object_ :: LayerManagerLoggingBase))) () a1 a2 a3

removeResult_super :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult_super object_ a1 a2 a3 = (removeResult_impl (javaCast object_ :: LayerManagerLoggingBase)) a1 a2 a3

removeResult_impl :: LayerManagerLoggingBase -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult_impl this layerManager layerInterface result = do
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: LayerManagerLoggingBase))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: LayerManagerLoggingBase))

clear_impl :: LayerManagerLoggingBase -> IO (())
clear_impl this = do
        pure ()


