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
-- package org.allbinary.image.opengles
module OpenGLImageSpecificFactory where

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
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data OpenGLImageSpecificFactory = OpenGLImageSpecificFactory
    { header_ :: JavaHeader
    , updating :: IORef (Bool)
    }

instance JavaNull OpenGLImageSpecificFactory where
    javaNull = javaNullRecord "OpenGLImageSpecificFactory"

instance JavaEquals OpenGLImageSpecificFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageSpecificFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageSpecificFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLImageSpecificFactory
newRecord_ = do
    header_ <- newJavaHeader
    updating <- newIORef False
    let this = OpenGLImageSpecificFactory header_ updating
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLImageSpecificFactory -> IO ()
initFields_ this = do
    jset this.updating (False)
    pure ()

new_ :: IO OpenGLImageSpecificFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageSpecificFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLImageSpecificFactory)
getInstance = do
        pure (OpenGLImageSpecificFactory.instance_)


