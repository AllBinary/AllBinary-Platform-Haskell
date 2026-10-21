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
-- package org.allbinary.animation.image
module AnimationFactoryInitializationVisitor where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AnimationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor
    { header_ :: JavaHeader
    , width :: IORef (Int)
    , height :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , originalDx :: IORef (Int)
    , originalDy :: IORef (Int)
    }

instance JavaNull AnimationFactoryInitializationVisitor where
    javaNull = javaNullRecord "AnimationFactoryInitializationVisitor"

instance JavaEquals AnimationFactoryInitializationVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationFactoryInitializationVisitor where
    (==) = jrecordEquals

instance JavaObjectClass AnimationFactoryInitializationVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AnimationFactoryInitializationVisitor
newRecord_ = do
    header_ <- newJavaHeader
    width <- newIORef 0
    height <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    originalDx <- newIORef 0
    originalDy <- newIORef 0
    let this = AnimationFactoryInitializationVisitor header_ width height dx dy originalDx originalDy
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AnimationFactoryInitializationVisitor -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    jset this.dx (0)
    jset this.dy (0)
    jset this.originalDx (0)
    jset this.originalDy (0)
    pure ()

new_ :: IO AnimationFactoryInitializationVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnimationFactoryInitializationVisitor -> IO ()
init_ this = do
    initFields_ this


visit :: (JavaObjectClass this_) => this_ -> IO (())
visit object_ = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: AnimationFactoryInitializationVisitor))) ()

visit_super :: (JavaObjectClass this_) => this_ -> IO (())
visit_super object_ = (visit_impl (javaCast object_ :: AnimationFactoryInitializationVisitor))

visit_impl :: AnimationFactoryInitializationVisitor -> IO (())
visit_impl this = do
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AnimationFactoryInitializationVisitor))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AnimationFactoryInitializationVisitor))

toString_impl :: AnimationFactoryInitializationVisitor -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.appendfloat ((jio (StringMaker.append stringBuffer (jget ((jio (PositionStrings.getInstance))).dX_LABEL)))) (Prelude.fromIntegral (jget (this).dx)))
        Control.Monad.void (StringMaker.appendfloat ((jio (StringMaker.append stringBuffer (jget ((jio (PositionStrings.getInstance))).dY_LABEL)))) (Prelude.fromIntegral (jget (this).dy)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).width))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).height))
        (StringMaker.toString stringBuffer)


