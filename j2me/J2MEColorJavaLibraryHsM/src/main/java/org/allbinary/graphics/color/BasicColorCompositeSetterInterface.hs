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
-- package org.allbinary.graphics.color
module BasicColorCompositeSetterInterface where

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
import qualified BasicColor -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod

-- Java interface: the classes that implement it have these functions
data BasicColorCompositeSetterInterface = BasicColorCompositeSetterInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicColorCompositeSetterInterface where
    javaNull = javaNullRecord "BasicColorCompositeSetterInterface"

instance JavaEquals BasicColorCompositeSetterInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorCompositeSetterInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorCompositeSetterInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicColorCompositeSetterInterface
fromHeader_ header = BasicColorCompositeSetterInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicColorCompositeSetterInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: BasicColorCompositeSetterInterface))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: BasicColorCompositeSetterInterface)) a1

setBasicColorP_impl :: BasicColorCompositeSetterInterface -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = javaAbstractMethod "setBasicColorP"


