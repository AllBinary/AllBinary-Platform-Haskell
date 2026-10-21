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
-- package org.allbinary.graphics.displayable.screen
module FullScreenPaintableFactory where

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
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

data FullScreenPaintableFactory = FullScreenPaintableFactory
    { header_ :: JavaHeader
    , paintable :: IORef (Paintable.Paintable)
    }

instance JavaNull FullScreenPaintableFactory where
    javaNull = javaNullRecord "FullScreenPaintableFactory"

instance JavaEquals FullScreenPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FullScreenPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass FullScreenPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FullScreenPaintableFactory
newRecord_ = do
    header_ <- newJavaHeader
    paintable <- newIORef javaNull
    let this = FullScreenPaintableFactory header_ paintable
    jregisterLevel header_ this
    pure this

initFields_ :: FullScreenPaintableFactory -> IO ()
initFields_ this = do
    jset this.paintable =<< (NullPaintable.getInstance)
    pure ()

new_ :: IO FullScreenPaintableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FullScreenPaintableFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FullScreenPaintableFactory)
getInstance = do
        pure (FullScreenPaintableFactory.instance_)


