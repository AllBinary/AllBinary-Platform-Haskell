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
-- package org.allbinary.game.resource
module RectangleResourceFactoryInterface where

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
import qualified Rectangle -- org.allbinary.graphics.Rectangle

-- Java interface: the classes that implement it have these functions
data RectangleResourceFactoryInterface = RectangleResourceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull RectangleResourceFactoryInterface where
    javaNull = javaNullRecord "RectangleResourceFactoryInterface"

instance JavaEquals RectangleResourceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleResourceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass RectangleResourceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RectangleResourceFactoryInterface
fromHeader_ header = RectangleResourceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RectangleResourceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getRectangle :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle object_ a1 = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: RectangleResourceFactoryInterface))) () a1

getRectangle_super :: (JavaObjectClass this_) => this_ -> String -> IO (Rectangle.Rectangle)
getRectangle_super object_ a1 = (getRectangle_impl (javaCast object_ :: RectangleResourceFactoryInterface)) a1

getRectangle_impl :: RectangleResourceFactoryInterface -> String -> IO (Rectangle.Rectangle)
getRectangle_impl this resource = javaAbstractMethod "getRectangle"


-- throws Exception
getRectangleArrayOfArrays :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays object_ a1 = jmethod object_ "getRectangleArrayOfArrays" (\() -> (getRectangleArrayOfArrays_impl (javaCast object_ :: RectangleResourceFactoryInterface))) () a1

getRectangleArrayOfArrays_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays_super object_ a1 = (getRectangleArrayOfArrays_impl (javaCast object_ :: RectangleResourceFactoryInterface)) a1

getRectangleArrayOfArrays_impl :: RectangleResourceFactoryInterface -> String -> IO (JavaArray (JavaArray (Rectangle.Rectangle)))
getRectangleArrayOfArrays_impl this resource = javaAbstractMethod "getRectangleArrayOfArrays"


