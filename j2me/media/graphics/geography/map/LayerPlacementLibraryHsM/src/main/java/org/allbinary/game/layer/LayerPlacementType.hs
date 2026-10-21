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
-- package org.allbinary.game.layer
module LayerPlacementType where

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

data LayerPlacementType = LayerPlacementType
    { header_ :: JavaHeader
    , type_ :: IORef (Int)
    }

instance JavaNull LayerPlacementType where
    javaNull = javaNullRecord "LayerPlacementType"

instance JavaEquals LayerPlacementType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPlacementType where
    (==) = jrecordEquals

instance JavaObjectClass LayerPlacementType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerPlacementType
newRecord_ = do
    header_ <- newJavaHeader
    type_ <- newIORef 0
    let this = LayerPlacementType header_ type_
    jregisterLevel header_ this
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    pure this

initFields_ :: LayerPlacementType -> IO ()
initFields_ this = do
    jset this.type_ (0)
    pure ()

new_1 :: Int -> IO LayerPlacementType
new_1 type_ = do
    this <- newRecord_
    init_1 this type_
    pure this

init_1 :: LayerPlacementType -> Int -> IO ()
init_1 this type_ = do
        initFields_ this
        jset (this).type_ (type_)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: LayerPlacementType))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: LayerPlacementType))

getType_impl :: LayerPlacementType -> IO (Int)
getType_impl this = do
        pure ((jget (this).type_))


setType :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: LayerPlacementType))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: LayerPlacementType)) a1

setType_impl :: LayerPlacementType -> Int -> IO (())
setType_impl this type_ = do
        jset (this).type_ (type_)
        pure ()


