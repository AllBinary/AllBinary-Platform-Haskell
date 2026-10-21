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
module ShaderManagerFactory where

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
import qualified ShaderManager -- same package or java.lang

data ShaderManagerFactory = ShaderManagerFactory
    { header_ :: JavaHeader
    }

instance JavaNull ShaderManagerFactory where
    javaNull = javaNullRecord "ShaderManagerFactory"

instance JavaEquals ShaderManagerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderManagerFactory where
    (==) = jrecordEquals

instance JavaObjectClass ShaderManagerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShaderManagerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ShaderManagerFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    pure this

initFields_ :: ShaderManagerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShaderManagerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShaderManagerFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ShaderManagerFactory)
getInstance = do
        pure (ShaderManagerFactory.instance_)


create :: (JavaObjectClass this_) => this_ -> IO (ShaderManager.ShaderManager)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ShaderManagerFactory))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (ShaderManager.ShaderManager)
create_super object_ = (create_impl (javaCast object_ :: ShaderManagerFactory))

create_impl :: ShaderManagerFactory -> IO (ShaderManager.ShaderManager)
create_impl this = do
        (ShaderManager.getInstance)


