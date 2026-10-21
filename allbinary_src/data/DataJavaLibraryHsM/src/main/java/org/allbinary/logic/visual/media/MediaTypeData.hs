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
-- package org.allbinary.logic.visual.media
module MediaTypeData where

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

data MediaTypeData = MediaTypeData
    { header_ :: JavaHeader
    , rESIZABLE_MEDIA :: IORef (String)
    , nOT_RESIZABLE_MEDIA :: IORef (String)
    }

instance JavaNull MediaTypeData where
    javaNull = javaNullRecord "MediaTypeData"

instance JavaEquals MediaTypeData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaTypeData where
    (==) = jrecordEquals

instance JavaObjectClass MediaTypeData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MediaTypeData
newRecord_ = do
    header_ <- newJavaHeader
    rESIZABLE_MEDIA <- newIORef ""
    nOT_RESIZABLE_MEDIA <- newIORef ""
    let this = MediaTypeData header_ rESIZABLE_MEDIA nOT_RESIZABLE_MEDIA
    jregisterLevel header_ this
    pure this

initFields_ :: MediaTypeData -> IO ()
initFields_ this = do
    jset this.rESIZABLE_MEDIA ("RESIZABLE_MEDIA")
    jset this.nOT_RESIZABLE_MEDIA ("NOT_RESIZABLE_MEDIA")
    pure ()


getInstance :: IO (MediaTypeData)
getInstance = do
        pure (MediaTypeData.instance_)

new_ :: IO MediaTypeData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MediaTypeData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


