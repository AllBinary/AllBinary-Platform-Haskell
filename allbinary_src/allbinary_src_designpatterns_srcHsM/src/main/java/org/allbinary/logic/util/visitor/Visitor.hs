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
module Visitor where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified VisitorInterface

-- implements VisitorInterface
data Visitor = Visitor
    { header_ :: JavaHeader
    , nullUtil :: IORef (NullUtil.NullUtil)
    }

instance JavaNull Visitor where
    javaNull = javaNullRecord "Visitor"

instance JavaEquals Visitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Visitor where
    (==) = jrecordEquals

instance JavaObjectClass Visitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Visitor
newRecord_ = do
    header_ <- newJavaHeader
    nullUtil <- newIORef javaNull
    let this = Visitor header_ nullUtil
    jregisterLevel header_ this
    VisitorInterface.registerInterface_ header_
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: Visitor -> IO ()
initFields_ this = do
    jset this.nullUtil =<< (NullUtil.getInstance)
    pure ()

new_ :: IO Visitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Visitor -> IO ()
init_ this = do
    initFields_ this


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: Visitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: Visitor)) (jtoObject a1)

visit_impl :: Visitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ((jtoObject (jget ((jget (this).nullUtil)).nULL_OBJECT)))


getInstance :: IO (Visitor)
getInstance = do
        pure (Visitor.instance_)


