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
-- package org.allbinary.logic.visual.dhtml.style.css.property.color.background
module BackgroundColorData where

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

data BackgroundColorData = BackgroundColorData
    { header_ :: JavaHeader
    , vALUE :: IORef (String)
    }

instance JavaNull BackgroundColorData where
    javaNull = javaNullRecord "BackgroundColorData"

instance JavaEquals BackgroundColorData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BackgroundColorData where
    (==) = jrecordEquals

instance JavaObjectClass BackgroundColorData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BackgroundColorData
newRecord_ = do
    header_ <- newJavaHeader
    vALUE <- newIORef ""
    let this = BackgroundColorData header_ vALUE
    jregisterLevel header_ this
    pure this

initFields_ :: BackgroundColorData -> IO ()
initFields_ this = do
    jset this.vALUE ("background-color")
    pure ()


getInstance :: IO (BackgroundColorData)
getInstance = do
        pure (BackgroundColorData.instance_)

new_ :: IO BackgroundColorData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BackgroundColorData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


