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
-- package org.allbinary.graphics.form.item
module CustomItemUtil where

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
import qualified ABCustomItem -- same package or java.lang

data CustomItemUtil = CustomItemUtil
    { header_ :: JavaHeader
    , cUSTOM_ITEM_ARRAY :: IORef (JavaArray (ABCustomItem.ABCustomItem))
    }

instance JavaNull CustomItemUtil where
    javaNull = javaNullRecord "CustomItemUtil"

instance JavaEquals CustomItemUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomItemUtil where
    (==) = jrecordEquals

instance JavaObjectClass CustomItemUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomItemUtil
newRecord_ = do
    header_ <- newJavaHeader
    cUSTOM_ITEM_ARRAY <- newIORef javaNull
    let this = CustomItemUtil header_ cUSTOM_ITEM_ARRAY
    jregisterLevel header_ this
    pure this

initFields_ :: CustomItemUtil -> IO ()
initFields_ this = do
    jset this.cUSTOM_ITEM_ARRAY ((jnewArray (0) javaNull))
    pure ()

new_ :: IO CustomItemUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomItemUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CustomItemUtil)
getInstance = do
        pure (CustomItemUtil.instance_)


