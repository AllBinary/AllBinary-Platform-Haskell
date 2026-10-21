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
-- package org.allbinary.logic.visual.transform.info
module CompositeTransformInfoInterface where

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
import qualified TransformInfoInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CompositeTransformInfoInterface = CompositeTransformInfoInterface
    { header_ :: JavaHeader
    }

instance JavaNull CompositeTransformInfoInterface where
    javaNull = javaNullRecord "CompositeTransformInfoInterface"

instance JavaEquals CompositeTransformInfoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompositeTransformInfoInterface where
    (==) = jrecordEquals

instance JavaObjectClass CompositeTransformInfoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CompositeTransformInfoInterface
fromHeader_ header = CompositeTransformInfoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CompositeTransformInfoInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: CompositeTransformInfoInterface))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: CompositeTransformInfoInterface))

getTransformInfoInterface_impl :: CompositeTransformInfoInterface -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = javaAbstractMethod "getTransformInfoInterface"


