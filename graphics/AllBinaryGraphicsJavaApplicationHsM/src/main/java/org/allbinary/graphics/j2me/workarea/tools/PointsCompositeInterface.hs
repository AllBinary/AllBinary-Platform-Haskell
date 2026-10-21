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
-- package org.allbinary.graphics.j2me.workarea.tools
module PointsCompositeInterface where

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
import qualified PointsInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data PointsCompositeInterface = PointsCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull PointsCompositeInterface where
    javaNull = javaNullRecord "PointsCompositeInterface"

instance JavaEquals PointsCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass PointsCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PointsCompositeInterface
fromHeader_ header = PointsCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PointsCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPointsInterface :: (JavaObjectClass this_) => this_ -> IO (PointsInterface.PointsInterface)
getPointsInterface object_ = jmethod object_ "getPointsInterface" (\() -> (getPointsInterface_impl (javaCast object_ :: PointsCompositeInterface))) ()

getPointsInterface_super :: (JavaObjectClass this_) => this_ -> IO (PointsInterface.PointsInterface)
getPointsInterface_super object_ = (getPointsInterface_impl (javaCast object_ :: PointsCompositeInterface))

getPointsInterface_impl :: PointsCompositeInterface -> IO (PointsInterface.PointsInterface)
getPointsInterface_impl this = javaAbstractMethod "getPointsInterface"


