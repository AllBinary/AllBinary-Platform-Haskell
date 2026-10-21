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
-- package javax.microedition.lcdui
module PreLoadPlatformImage (module PreLoadPlatformImage, module PlatformImage) where

import PlatformImage hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified PlatformImage

data PreLoadPlatformImage = PreLoadPlatformImage
    { header_ :: JavaHeader
    , base :: PlatformImage.PlatformImage
    }

instance JavaNull PreLoadPlatformImage where
    javaNull = javaNullRecord "PreLoadPlatformImage"

instance JavaEquals PreLoadPlatformImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreLoadPlatformImage where
    (==) = jrecordEquals

instance JavaObjectClass PreLoadPlatformImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO PreLoadPlatformImage
newRecord_ = do
    base <- PlatformImage.newRecord_
    let header_ = base.header_
    let this = PreLoadPlatformImage header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: PreLoadPlatformImage -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PreLoadPlatformImage
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PreLoadPlatformImage -> IO ()
init_ this = do
    PlatformImage.init_ this.base
    initFields_ this


getInstance :: IO (PreLoadPlatformImage)
getInstance = do
        pure (PreLoadPlatformImage.instance_)


