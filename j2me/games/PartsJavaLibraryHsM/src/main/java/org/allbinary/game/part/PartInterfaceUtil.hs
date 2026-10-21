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
-- package org.allbinary.game.part
module PartInterfaceUtil where

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
import qualified PartInterface -- same package or java.lang

data PartInterfaceUtil = PartInterfaceUtil
    { header_ :: JavaHeader
    }

instance JavaNull PartInterfaceUtil where
    javaNull = javaNullRecord "PartInterfaceUtil"

instance JavaEquals PartInterfaceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PartInterfaceUtil where
    (==) = jrecordEquals

instance JavaObjectClass PartInterfaceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sINGLETON = (jnewArray (0) javaNull)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PartInterfaceUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PartInterfaceUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: PartInterfaceUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PartInterfaceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PartInterfaceUtil -> IO ()
init_ this = do
    initFields_ this


getZeroArray :: IO (JavaArray (PartInterface.PartInterface))
getZeroArray = do
        pure (PartInterfaceUtil.sINGLETON)


