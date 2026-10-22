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
module AlwaysRepaintBehavior (module AlwaysRepaintBehavior, module RepaintBehavior) where

import RepaintBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, repaint, repaint_super, repaint_impl, onChangeRepaint, onChangeRepaint_super, onChangeRepaint_impl, instanceC, nAME)
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
import qualified RepaintBehavior

data AlwaysRepaintBehavior = AlwaysRepaintBehavior
    { header_ :: JavaHeader
    , base :: RepaintBehavior.RepaintBehavior
    , nAME :: IORef (String)
    }

instance JavaNull AlwaysRepaintBehavior where
    javaNull = javaNullRecord "AlwaysRepaintBehavior"

instance JavaEquals AlwaysRepaintBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlwaysRepaintBehavior where
    (==) = jrecordEquals

instance JavaObjectClass AlwaysRepaintBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO AlwaysRepaintBehavior
newRecord_ = do
    base <- RepaintBehavior.newRecord_
    let header_ = base.header_
    nAME <- newIORef ""
    let this = AlwaysRepaintBehavior header_ base nAME
    jregisterLevel header_ this
    jregisterMethod header_ "repaint" (\() -> repaint_impl this)
    jregisterMethod header_ "onChangeRepaint" (\() -> onChangeRepaint_impl this)
    pure this

initFields_ :: AlwaysRepaintBehavior -> IO ()
initFields_ this = do
    jset this.nAME ("AlwaysRepaintBehavior")
    pure ()

new_ :: IO AlwaysRepaintBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AlwaysRepaintBehavior -> IO ()
init_ this = do
    RepaintBehavior.init_ this.base
    initFields_ this


getInstance :: IO (AlwaysRepaintBehavior)
getInstance = do
        pure (AlwaysRepaintBehavior.instanceC)


repaint :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
repaint object_ a1 = jmethod object_ "repaint" (\() -> (repaint_impl (javaCast object_ :: AlwaysRepaintBehavior))) () a1

repaint_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
repaint_super object_ a1 = (repaint_impl (javaCast object_ :: AlwaysRepaintBehavior)) a1

repaint_impl :: AlwaysRepaintBehavior -> Canvas.Canvas -> IO (())
repaint_impl this canvas = do
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


onChangeRepaint :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
onChangeRepaint object_ a1 = jmethod object_ "onChangeRepaint" (\() -> (onChangeRepaint_impl (javaCast object_ :: AlwaysRepaintBehavior))) () a1

onChangeRepaint_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
onChangeRepaint_super object_ a1 = (onChangeRepaint_impl (javaCast object_ :: AlwaysRepaintBehavior)) a1

onChangeRepaint_impl :: AlwaysRepaintBehavior -> Canvas.Canvas -> IO (())
onChangeRepaint_impl this canvas = do
        pure ()


