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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoFactory where

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
import qualified TransformInfoInterface -- same package or java.lang

data TransformInfoFactory = TransformInfoFactory
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoFactory where
    javaNull = javaNullRecord "TransformInfoFactory"

instance JavaEquals TransformInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformInfoFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformInfoFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: TransformInfoFactory))

getInstance_impl :: TransformInfoFactory -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance_impl this = do
        pure (javaNull)


