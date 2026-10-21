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
-- package org.allbinary.logic.visual.dhtml.style.css
module CssElementData where

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

data CssElementData = CssElementData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    }

instance JavaNull CssElementData where
    javaNull = javaNullRecord "CssElementData"

instance JavaEquals CssElementData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssElementData where
    (==) = jrecordEquals

instance JavaObjectClass CssElementData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssElementData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    let this = CssElementData header_ nAME
    jregisterLevel header_ this
    pure this

initFields_ :: CssElementData -> IO ()
initFields_ this = do
    jset this.nAME ("CSS_ELEMENT_NAME")
    pure ()


getInstance :: IO (CssElementData)
getInstance = do
        pure (CssElementData.instance_)

new_ :: IO CssElementData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssElementData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


