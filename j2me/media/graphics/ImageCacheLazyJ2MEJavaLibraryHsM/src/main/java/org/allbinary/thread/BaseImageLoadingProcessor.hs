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
-- package org.allbinary.thread
module BaseImageLoadingProcessor where

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

data BaseImageLoadingProcessor = BaseImageLoadingProcessor
    { header_ :: JavaHeader
    }

instance JavaNull BaseImageLoadingProcessor where
    javaNull = javaNullRecord "BaseImageLoadingProcessor"

instance JavaEquals BaseImageLoadingProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseImageLoadingProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BaseImageLoadingProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseImageLoadingProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = BaseImageLoadingProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    pure this

initFields_ :: BaseImageLoadingProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseImageLoadingProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseImageLoadingProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BaseImageLoadingProcessor)
getInstance = do
        pure (BaseImageLoadingProcessor.instance_)


runTask :: (JavaObjectClass this_) => this_ -> IO (())
runTask object_ = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: BaseImageLoadingProcessor))) ()

runTask_super :: (JavaObjectClass this_) => this_ -> IO (())
runTask_super object_ = (runTask_impl (javaCast object_ :: BaseImageLoadingProcessor))

runTask_impl :: BaseImageLoadingProcessor -> IO (())
runTask_impl this = do
        pure ()


