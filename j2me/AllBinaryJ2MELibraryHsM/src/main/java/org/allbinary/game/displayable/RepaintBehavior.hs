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
-- package org.allbinary.game.displayable
module RepaintBehavior where

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
import qualified Thread -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified NullRunnable -- org.allbinary.thread.NullRunnable

data RepaintBehavior = RepaintBehavior
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nAME :: IORef (String)
    }

instance JavaNull RepaintBehavior where
    javaNull = javaNullRecord "RepaintBehavior"

instance JavaEquals RepaintBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RepaintBehavior where
    (==) = jrecordEquals

instance JavaObjectClass RepaintBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RepaintBehavior
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nAME <- newIORef ""
    let this = RepaintBehavior header_ logUtil nAME
    jregisterLevel header_ this
    jregisterMethod header_ "repaint" (\() -> repaint_impl this)
    jregisterMethod header_ "onChangeRepaint" (\() -> onChangeRepaint_impl this)
    pure this

initFields_ :: RepaintBehavior -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nAME ("RepaintBehavior")
    pure ()

new_ :: IO RepaintBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RepaintBehavior -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RepaintBehavior)
getInstance = do
        pure (RepaintBehavior.instance_)


repaint :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
repaint object_ a1 = jmethod object_ "repaint" (\() -> (repaint_impl (javaCast object_ :: RepaintBehavior))) () a1

repaint_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
repaint_super object_ a1 = (repaint_impl (javaCast object_ :: RepaintBehavior)) a1

repaint_impl :: RepaintBehavior -> Canvas.Canvas -> IO (())
repaint_impl this canvas = do
        pure ()


onChangeRepaint :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
onChangeRepaint object_ a1 = jmethod object_ "onChangeRepaint" (\() -> (onChangeRepaint_impl (javaCast object_ :: RepaintBehavior))) () a1

onChangeRepaint_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
onChangeRepaint_super object_ a1 = (onChangeRepaint_impl (javaCast object_ :: RepaintBehavior)) a1

onChangeRepaint_impl :: RepaintBehavior -> Canvas.Canvas -> IO (())
onChangeRepaint_impl this canvas = do
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        if (jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL)))) then do
            Control.Monad.void (DisplayInfoSingleton.process ((jio (DisplayInfoSingleton.getInstance))))
        else do
            thread <- (Thread.new_2 (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
                -- run
-}) (jget (this).nAME))
            Control.Monad.void (Thread.start thread)
        pure ()


