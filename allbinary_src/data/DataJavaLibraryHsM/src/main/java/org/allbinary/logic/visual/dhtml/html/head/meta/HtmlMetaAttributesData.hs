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
-- package org.allbinary.logic.visual.dhtml.html.head.meta
module HtmlMetaAttributesData where

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

data HtmlMetaAttributesData = HtmlMetaAttributesData
    { header_ :: JavaHeader
    , nAME_VALUE :: IORef (String)
    , hTTP_EQUIV_VALUE :: IORef (String)
    }

instance JavaNull HtmlMetaAttributesData where
    javaNull = javaNullRecord "HtmlMetaAttributesData"

instance JavaEquals HtmlMetaAttributesData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlMetaAttributesData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlMetaAttributesData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlMetaAttributesData
newRecord_ = do
    header_ <- newJavaHeader
    nAME_VALUE <- newIORef ""
    hTTP_EQUIV_VALUE <- newIORef ""
    let this = HtmlMetaAttributesData header_ nAME_VALUE hTTP_EQUIV_VALUE
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlMetaAttributesData -> IO ()
initFields_ this = do
    jset this.nAME_VALUE ("name")
    jset this.hTTP_EQUIV_VALUE ("http-equiv")
    pure ()


getInstance :: IO (HtmlMetaAttributesData)
getInstance = do
        pure (HtmlMetaAttributesData.instance_)

new_ :: IO HtmlMetaAttributesData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlMetaAttributesData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


