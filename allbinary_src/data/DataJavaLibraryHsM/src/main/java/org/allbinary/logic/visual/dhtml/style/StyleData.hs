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
-- package org.allbinary.logic.visual.dhtml.style
module StyleData where

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

data StyleData = StyleData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , nAMEMAXLEN :: IORef (Int)
    }

instance JavaNull StyleData where
    javaNull = javaNullRecord "StyleData"

instance JavaEquals StyleData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StyleData where
    (==) = jrecordEquals

instance JavaObjectClass StyleData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StyleData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    nAMEMAXLEN <- newIORef 0
    let this = StyleData header_ nAME nAMEMAXLEN
    jregisterLevel header_ this
    pure this

initFields_ :: StyleData -> IO ()
initFields_ this = do
    jset this.nAME ("STYLE_NAME")
    jset this.nAMEMAXLEN (255)
    pure ()


getInstance :: IO (StyleData)
getInstance = do
        pure (StyleData.instance_)

new_ :: IO StyleData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StyleData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


