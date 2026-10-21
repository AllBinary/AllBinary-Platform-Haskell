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
-- package org.allbinary.ag.game.vector
module HealthVectorData where

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

data HealthVectorData = HealthVectorData
    { header_ :: JavaHeader
    }

instance JavaNull HealthVectorData where
    javaNull = javaNullRecord "HealthVectorData"

instance JavaEquals HealthVectorData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthVectorData where
    (==) = jrecordEquals

instance JavaObjectClass HealthVectorData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE points #-}
points = unsafePerformIO (newIORef ((jarrayFromList [(jarrayFromList [(jarrayFromList [2, 1]), (jarrayFromList [3, 2]), (jarrayFromList [3, 2]), (jarrayFromList [4, 1]), (jarrayFromList [4, 1]), (jarrayFromList [5, 1]), (jarrayFromList [5, 1]), (jarrayFromList [6, 2]), (jarrayFromList [6, 2]), (jarrayFromList [6, 3]), (jarrayFromList [6, 3]), (jarrayFromList [3, 6]), (jarrayFromList [3, 6]), (jarrayFromList [0, 3]), (jarrayFromList [0, 3]), (jarrayFromList [0, 2]), (jarrayFromList [0, 2]), (jarrayFromList [1, 1]), (jarrayFromList [1, 1]), (jarrayFromList [2, 1]), (jarrayFromList [1000, 1000])])])))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HealthVectorData
newRecord_ = do
    header_ <- newJavaHeader
    let this = HealthVectorData header_
    jregisterLevel header_ this
    pure this

initFields_ :: HealthVectorData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HealthVectorData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealthVectorData -> IO ()
init_ this = do
    initFields_ this


