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
-- package org.eclipse.swt.widgets
module EclipseDisplay where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float

data EclipseDisplay = EclipseDisplay
    { header_ :: JavaHeader
    }

instance JavaNull EclipseDisplay where
    javaNull = javaNullRecord "EclipseDisplay"

instance JavaEquals EclipseDisplay where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EclipseDisplay where
    (==) = jrecordEquals

instance JavaObjectClass EclipseDisplay where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO EclipseDisplay
newRecord_ = do
    header_ <- newJavaHeader
    let this = EclipseDisplay header_
    jregisterLevel header_ this
    jregisterMethod header_ "sleep" (\() -> sleep_impl this)
    pure this

initFields_ :: EclipseDisplay -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EclipseDisplay
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EclipseDisplay -> IO ()
init_ this = do
    initFields_ this


sleep :: (JavaObjectClass this_) => this_ -> IO (())
sleep object_ = jmethod object_ "sleep" (\() -> (sleep_impl (javaCast object_ :: EclipseDisplay))) ()

sleep_super :: (JavaObjectClass this_) => this_ -> IO (())
sleep_super object_ = (sleep_impl (javaCast object_ :: EclipseDisplay))

sleep_impl :: EclipseDisplay -> IO (())
sleep_impl this = do
        pure ()


