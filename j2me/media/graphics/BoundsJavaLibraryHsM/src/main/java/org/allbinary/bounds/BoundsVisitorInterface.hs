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
-- package org.allbinary.bounds
module BoundsVisitorInterface where

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

-- Java interface: the classes that implement it have these functions
data BoundsVisitorInterface = BoundsVisitorInterface
    { header_ :: JavaHeader
    }

instance JavaNull BoundsVisitorInterface where
    javaNull = javaNullRecord "BoundsVisitorInterface"

instance JavaEquals BoundsVisitorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BoundsVisitorInterface where
    (==) = jrecordEquals

instance JavaObjectClass BoundsVisitorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BoundsVisitorInterface
fromHeader_ header = BoundsVisitorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BoundsVisitorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: BoundsVisitorInterface))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: BoundsVisitorInterface))

getX_impl :: BoundsVisitorInterface -> IO (Int)
getX_impl this = javaAbstractMethod "getX"


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: BoundsVisitorInterface))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: BoundsVisitorInterface))

getY_impl :: BoundsVisitorInterface -> IO (Int)
getY_impl this = javaAbstractMethod "getY"


maxX :: (JavaObjectClass this_) => this_ -> IO (())
maxX object_ = jmethod object_ "maxX" (\() -> (maxX_impl (javaCast object_ :: BoundsVisitorInterface))) ()

maxX_super :: (JavaObjectClass this_) => this_ -> IO (())
maxX_super object_ = (maxX_impl (javaCast object_ :: BoundsVisitorInterface))

maxX_impl :: BoundsVisitorInterface -> IO (())
maxX_impl this = javaAbstractMethod "maxX"


maxY :: (JavaObjectClass this_) => this_ -> IO (())
maxY object_ = jmethod object_ "maxY" (\() -> (maxY_impl (javaCast object_ :: BoundsVisitorInterface))) ()

maxY_super :: (JavaObjectClass this_) => this_ -> IO (())
maxY_super object_ = (maxY_impl (javaCast object_ :: BoundsVisitorInterface))

maxY_impl :: BoundsVisitorInterface -> IO (())
maxY_impl this = javaAbstractMethod "maxY"


minX :: (JavaObjectClass this_) => this_ -> IO (())
minX object_ = jmethod object_ "minX" (\() -> (minX_impl (javaCast object_ :: BoundsVisitorInterface))) ()

minX_super :: (JavaObjectClass this_) => this_ -> IO (())
minX_super object_ = (minX_impl (javaCast object_ :: BoundsVisitorInterface))

minX_impl :: BoundsVisitorInterface -> IO (())
minX_impl this = javaAbstractMethod "minX"


minY :: (JavaObjectClass this_) => this_ -> IO (())
minY object_ = jmethod object_ "minY" (\() -> (minY_impl (javaCast object_ :: BoundsVisitorInterface))) ()

minY_super :: (JavaObjectClass this_) => this_ -> IO (())
minY_super object_ = (minY_impl (javaCast object_ :: BoundsVisitorInterface))

minY_impl :: BoundsVisitorInterface -> IO (())
minY_impl this = javaAbstractMethod "minY"


