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
-- package org.allbinary.logic.math.vector
module MathVectorInterface where

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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal

-- Java interface: the classes that implement it have these functions
data MathVectorInterface = MathVectorInterface
    { header_ :: JavaHeader
    }

instance JavaNull MathVectorInterface where
    javaNull = javaNullRecord "MathVectorInterface"

instance JavaEquals MathVectorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MathVectorInterface where
    (==) = jrecordEquals

instance JavaObjectClass MathVectorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MathVectorInterface
fromHeader_ header = MathVectorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MathVectorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDirection :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection object_ = jmethod object_ "getDirection" (\() -> (getDirection_impl (javaCast object_ :: MathVectorInterface))) ()

getDirection_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection_super object_ = (getDirection_impl (javaCast object_ :: MathVectorInterface))

getDirection_impl :: MathVectorInterface -> IO (Int)
getDirection_impl this = javaAbstractMethod "getDirection"


getMagnitude :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getMagnitude object_ = jmethod object_ "getMagnitude" (\() -> (getMagnitude_impl (javaCast object_ :: MathVectorInterface))) ()

getMagnitude_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getMagnitude_super object_ = (getMagnitude_impl (javaCast object_ :: MathVectorInterface))

getMagnitude_impl :: MathVectorInterface -> IO (BasicDecimal.BasicDecimal)
getMagnitude_impl this = javaAbstractMethod "getMagnitude"


getResult :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult object_ = jmethod object_ "getResult" (\() -> (getResult_impl (javaCast object_ :: MathVectorInterface))) ()

getResult_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult_super object_ = (getResult_impl (javaCast object_ :: MathVectorInterface))

getResult_impl :: MathVectorInterface -> IO (BasicDecimal.BasicDecimal)
getResult_impl this = javaAbstractMethod "getResult"


