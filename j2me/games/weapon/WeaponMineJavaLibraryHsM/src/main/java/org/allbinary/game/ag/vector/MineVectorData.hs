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
-- package org.allbinary.game.ag.vector
module MineVectorData where

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

data MineVectorData = MineVectorData
    { header_ :: JavaHeader
    }

instance JavaNull MineVectorData where
    javaNull = javaNullRecord "MineVectorData"

instance JavaEquals MineVectorData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MineVectorData where
    (==) = jrecordEquals

instance JavaObjectClass MineVectorData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE points #-}
points = unsafePerformIO (newIORef ((jarrayFromList [(jarrayFromList [(jarrayFromList [10, 5]), (jarrayFromList [2, 6]), (jarrayFromList [1000, 1000]), (jarrayFromList [2, 2]), (jarrayFromList [10, 9]), (jarrayFromList [1000, 1000]), (jarrayFromList [10, 2]), (jarrayFromList [2, 9]), (jarrayFromList [1000, 1000]), (jarrayFromList [2, 5]), (jarrayFromList [10, 6]), (jarrayFromList [1000, 1000]), (jarrayFromList [7, 9]), (jarrayFromList [5, 2]), (jarrayFromList [1000, 1000]), (jarrayFromList [7, 2]), (jarrayFromList [5, 9]), (jarrayFromList [1000, 1000])])])))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MineVectorData
newRecord_ = do
    header_ <- newJavaHeader
    let this = MineVectorData header_
    jregisterLevel header_ this
    pure this

initFields_ :: MineVectorData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MineVectorData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MineVectorData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


