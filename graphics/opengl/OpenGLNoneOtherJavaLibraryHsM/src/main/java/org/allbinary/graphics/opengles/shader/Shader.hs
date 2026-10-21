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
module Shader where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data Shader = Shader
    { header_ :: JavaHeader
    , shaderName :: IORef (String)
    , shaderStringList :: IORef (BasicArrayList.BasicArrayList)
    , shaderAsString :: IORef (String)
    , shaderHandle :: IORef (Int)
    }

instance JavaNull Shader where
    javaNull = javaNullRecord "Shader"

instance JavaEquals Shader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Shader where
    (==) = jrecordEquals

instance JavaObjectClass Shader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Shader
newRecord_ = do
    header_ <- newJavaHeader
    shaderName <- newIORef ""
    shaderStringList <- newIORef javaNull
    shaderAsString <- newIORef ""
    shaderHandle <- newIORef 0
    let this = Shader header_ shaderName shaderStringList shaderAsString shaderHandle
    jregisterLevel header_ this
    pure this

initFields_ :: Shader -> IO ()
initFields_ this = do
    jset this.shaderName ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.shaderStringList =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.shaderAsString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.shaderHandle (0)
    pure ()

new_ :: IO Shader
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Shader -> IO ()
init_ this = do
    initFields_ this


