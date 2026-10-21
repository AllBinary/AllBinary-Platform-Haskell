{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellHistoryProgressBase where

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

data GeographicMapCellHistoryProgressBase = GeographicMapCellHistoryProgressBase
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellHistoryProgressBase where
    javaNull = javaNullRecord "GeographicMapCellHistoryProgressBase"

instance JavaEquals GeographicMapCellHistoryProgressBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellHistoryProgressBase where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellHistoryProgressBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellHistoryProgressBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = GeographicMapCellHistoryProgressBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isAnyProgress" (\() -> isAnyProgress_impl this)
    pure this

initFields_ :: GeographicMapCellHistoryProgressBase -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (GeographicMapCellHistoryProgressBase)
getInstance = do
        pure (GeographicMapCellHistoryProgressBase.instance_)

new_ :: IO GeographicMapCellHistoryProgressBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellHistoryProgressBase -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GeographicMapCellHistoryProgressBase))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GeographicMapCellHistoryProgressBase))

init_impl :: GeographicMapCellHistoryProgressBase -> IO (())
init_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


isAnyProgress :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyProgress object_ = jmethod object_ "isAnyProgress" (\() -> (isAnyProgress_impl (javaCast object_ :: GeographicMapCellHistoryProgressBase))) ()

isAnyProgress_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyProgress_super object_ = (isAnyProgress_impl (javaCast object_ :: GeographicMapCellHistoryProgressBase))

isAnyProgress_impl :: GeographicMapCellHistoryProgressBase -> IO (Bool)
isAnyProgress_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


