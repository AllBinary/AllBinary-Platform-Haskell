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
-- package org.allbinary.graphics.threed
module GLHolder where

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

data GLHolder = GLHolder
    { header_ :: JavaHeader
    , isCreated :: IORef (Bool)
    }

instance JavaNull GLHolder where
    javaNull = javaNullRecord "GLHolder"

instance JavaEquals GLHolder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GLHolder where
    (==) = jrecordEquals

instance JavaObjectClass GLHolder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GLHolder
newRecord_ = do
    header_ <- newJavaHeader
    isCreated <- newIORef False
    let this = GLHolder header_ isCreated
    jregisterLevel header_ this
    jregisterMethod header_ "runOnSurfaceCreated" (\() -> runOnSurfaceCreated_impl this)
    jregisterMethod header_ "runOnSurfaceChanged" (\() -> runOnSurfaceChanged_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: GLHolder -> IO ()
initFields_ this = do
    jset this.isCreated (True)
    pure ()

new_ :: IO GLHolder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GLHolder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


runOnSurfaceCreated :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
runOnSurfaceCreated object_ a1 = jmethod object_ "runOnSurfaceCreated" (\() -> (runOnSurfaceCreated_impl (javaCast object_ :: GLHolder))) () (jtoObject a1)

runOnSurfaceCreated_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
runOnSurfaceCreated_super object_ a1 = (runOnSurfaceCreated_impl (javaCast object_ :: GLHolder)) (jtoObject a1)

runOnSurfaceCreated_impl :: GLHolder -> JavaObject -> IO (())
runOnSurfaceCreated_impl this rendererObject_ = do
        let renderer = jtoObject rendererObject_
        pure ()


runOnSurfaceChanged :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> Int -> IO (())
runOnSurfaceChanged object_ a1 a2 a3 = jmethod object_ "runOnSurfaceChanged" (\() -> (runOnSurfaceChanged_impl (javaCast object_ :: GLHolder))) () (jtoObject a1) a2 a3

runOnSurfaceChanged_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> Int -> IO (())
runOnSurfaceChanged_super object_ a1 a2 a3 = (runOnSurfaceChanged_impl (javaCast object_ :: GLHolder)) (jtoObject a1) a2 a3

runOnSurfaceChanged_impl :: GLHolder -> JavaObject -> Int -> Int -> IO (())
runOnSurfaceChanged_impl this rendererObject_ width height = do
        let renderer = jtoObject rendererObject_
        pure ()


run :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
run object_ a1 = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: GLHolder))) () (jtoObject a1)

run_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
run_super object_ a1 = (run_impl (javaCast object_ :: GLHolder)) (jtoObject a1)

run_impl :: GLHolder -> JavaObject -> IO (())
run_impl this rendererObject_ = do
        let renderer = jtoObject rendererObject_
        pure ()


