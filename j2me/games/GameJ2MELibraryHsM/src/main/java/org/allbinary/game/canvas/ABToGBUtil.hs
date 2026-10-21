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
-- package org.allbinary.game.canvas
module ABToGBUtil where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager

data ABToGBUtil = ABToGBUtil
    { header_ :: JavaHeader
    , abCanvas :: IORef (Canvas.Canvas)
    , allBinaryGameLayerManager :: IORef (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
    }

instance JavaNull ABToGBUtil where
    javaNull = javaNullRecord "ABToGBUtil"

instance JavaEquals ABToGBUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABToGBUtil where
    (==) = jrecordEquals

instance JavaObjectClass ABToGBUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABToGBUtil
newRecord_ = do
    header_ <- newJavaHeader
    abCanvas <- newIORef javaNull
    allBinaryGameLayerManager <- newIORef javaNull
    let this = ABToGBUtil header_ abCanvas allBinaryGameLayerManager
    jregisterLevel header_ this
    pure this

initFields_ :: ABToGBUtil -> IO ()
initFields_ this = do
    jset this.abCanvas ((javaCast NullCanvas.nULL_CANVAS :: Canvas.Canvas))
    jset this.allBinaryGameLayerManager =<< (AllBinaryGameLayerManager.getNullInstance)
    pure ()

new_ :: IO ABToGBUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABToGBUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ABToGBUtil)
getInstance = do
        pure (ABToGBUtil.instance_)


