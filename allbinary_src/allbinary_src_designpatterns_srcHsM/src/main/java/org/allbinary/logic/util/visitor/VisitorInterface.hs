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
-- package org.allbinary.logic.util.visitor
module VisitorInterface where

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
import qualified Any -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data VisitorInterface = VisitorInterface
    { header_ :: JavaHeader
    }

instance JavaNull VisitorInterface where
    javaNull = javaNullRecord "VisitorInterface"

instance JavaEquals VisitorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VisitorInterface where
    (==) = jrecordEquals

instance JavaObjectClass VisitorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VisitorInterface
fromHeader_ header = VisitorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VisitorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: VisitorInterface))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: VisitorInterface)) (jtoObject a1)

visit_impl :: VisitorInterface -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = javaAbstractMethod "visit"


