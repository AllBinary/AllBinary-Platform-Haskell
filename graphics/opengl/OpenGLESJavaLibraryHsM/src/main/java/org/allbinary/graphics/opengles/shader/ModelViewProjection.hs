{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.graphics.opengles.shader
module ModelViewProjection where

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

data ModelViewProjection = ModelViewProjection
    { header_ :: JavaHeader
    }

instance JavaNull ModelViewProjection where
    javaNull = javaNullRecord "ModelViewProjection"

instance JavaEquals ModelViewProjection where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModelViewProjection where
    (==) = jrecordEquals

instance JavaObjectClass ModelViewProjection where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ModelViewProjection
newRecord_ = do
    header_ <- newJavaHeader
    let this = ModelViewProjection header_
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: ModelViewProjection -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ModelViewProjection
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ModelViewProjection -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ModelViewProjection)
getInstance = do
        pure (ModelViewProjection.instance_)


get :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Float))
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ModelViewProjection))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Float))
get_super object_ = (get_impl (javaCast object_ :: ModelViewProjection))

get_impl :: ModelViewProjection -> IO (JavaArray (Float))
get_impl this = do
        pure (javaNull)


