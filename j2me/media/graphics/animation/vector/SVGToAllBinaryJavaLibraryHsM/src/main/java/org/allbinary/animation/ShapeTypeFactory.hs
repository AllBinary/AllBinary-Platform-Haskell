{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.animation
module ShapeTypeFactory where

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
import qualified ShapeType -- same package or java.lang

data ShapeTypeFactory = ShapeTypeFactory
    { header_ :: JavaHeader
    , kEY_LINE :: IORef (String)
    , kEY_CIRCLE :: IORef (String)
    , kEY_RECTANGLE :: IORef (String)
    , kEY_RECT :: IORef (String)
    , lINE :: IORef (ShapeType.ShapeType)
    , cIRCLE :: IORef (ShapeType.ShapeType)
    , rECTANGLE :: IORef (ShapeType.ShapeType)
    }

instance JavaNull ShapeTypeFactory where
    javaNull = javaNullRecord "ShapeTypeFactory"

instance JavaEquals ShapeTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShapeTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass ShapeTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShapeTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    kEY_LINE <- newIORef ""
    kEY_CIRCLE <- newIORef ""
    kEY_RECTANGLE <- newIORef ""
    kEY_RECT <- newIORef ""
    lINE <- newIORef javaNull
    cIRCLE <- newIORef javaNull
    rECTANGLE <- newIORef javaNull
    let this = ShapeTypeFactory header_ kEY_LINE kEY_CIRCLE kEY_RECTANGLE kEY_RECT lINE cIRCLE rECTANGLE
    jregisterLevel header_ this
    pure this

initFields_ :: ShapeTypeFactory -> IO ()
initFields_ this = do
    jset this.kEY_LINE ("line")
    jset this.kEY_CIRCLE ("circle")
    jset this.kEY_RECTANGLE ("rectangle")
    jset this.kEY_RECT ("rect")
    jset this.lINE =<< (ShapeType.new_1 (jget this.kEY_LINE))
    jset this.cIRCLE =<< (ShapeType.new_1 (jget this.kEY_CIRCLE))
    jset this.rECTANGLE =<< (ShapeType.new_1 (jget this.kEY_RECTANGLE))
    pure ()

new_ :: IO ShapeTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShapeTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ShapeTypeFactory)
getInstance = do
        pure (ShapeTypeFactory.instance_)


