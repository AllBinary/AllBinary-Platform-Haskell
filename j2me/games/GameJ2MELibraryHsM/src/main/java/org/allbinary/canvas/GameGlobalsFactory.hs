{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.canvas
module GameGlobalsFactory where

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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory

data GameGlobalsFactory = GameGlobalsFactory
    { header_ :: JavaHeader
    , newCanvas :: IORef (Bool)
    , newDisplaybleTime :: IORef (Int64)
    , point :: IORef (GPoint.GPoint)
    }

instance JavaNull GameGlobalsFactory where
    javaNull = javaNullRecord "GameGlobalsFactory"

instance JavaEquals GameGlobalsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameGlobalsFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameGlobalsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameGlobalsFactory
newRecord_ = do
    header_ <- newJavaHeader
    newCanvas <- newIORef False
    newDisplaybleTime <- newIORef 0
    point <- newIORef javaNull
    let this = GameGlobalsFactory header_ newCanvas newDisplaybleTime point
    jregisterLevel header_ this
    pure this

initFields_ :: GameGlobalsFactory -> IO ()
initFields_ this = do
    jset this.newCanvas (True)
    jset this.newDisplaybleTime ((Prelude.fromIntegral ((-2147483648) :: Int)))
    jset this.point ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    pure ()

new_ :: IO GameGlobalsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameGlobalsFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameGlobalsFactory)
getInstance = do
        pure (GameGlobalsFactory.instance_)


