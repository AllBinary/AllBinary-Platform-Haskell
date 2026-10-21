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
-- package org.allbinary.layer
module LayerInterfaceVisitor where

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
import qualified AllBinaryLayer -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data LayerInterfaceVisitor = LayerInterfaceVisitor
    { header_ :: JavaHeader
    }

instance JavaNull LayerInterfaceVisitor where
    javaNull = javaNullRecord "LayerInterfaceVisitor"

instance JavaEquals LayerInterfaceVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerInterfaceVisitor where
    (==) = jrecordEquals

instance JavaObjectClass LayerInterfaceVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerInterfaceVisitor
fromHeader_ header = LayerInterfaceVisitor header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerInterfaceVisitor header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: LayerInterfaceVisitor))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: LayerInterfaceVisitor)) a1

visit_impl :: LayerInterfaceVisitor -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit_impl this layerInterface = javaAbstractMethod "visit"


