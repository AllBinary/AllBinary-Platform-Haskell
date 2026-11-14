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
-- package org.allbinary.animation
module NullRotationAnimation2 (module NullRotationAnimation2, module NullRotationAnimation) where

import NullRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified IndexedAnimationBehavior -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified NullRotationAnimation

data NullRotationAnimation2 = NullRotationAnimation2
    { header_ :: JavaHeader
    , base :: NullRotationAnimation.NullRotationAnimation
    }

instance JavaNull NullRotationAnimation2 where
    javaNull = javaNullRecord "NullRotationAnimation2"

instance JavaEquals NullRotationAnimation2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRotationAnimation2 where
    (==) = jrecordEquals

instance JavaObjectClass NullRotationAnimation2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullRotationAnimation2
newRecord_ = do
    base <- NullRotationAnimation.newRecord_
    let header_ = base.header_
    let this = NullRotationAnimation2 header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: NullRotationAnimation2 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullRotationAnimation2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRotationAnimation2 -> IO ()
init_ this = do
        NullRotationAnimation.init_3 this.base (jio (AngleInfo.getInstance (jget ((jio (AngleFactory.getInstance))).qUARTER_TOTAL_ANGLE))) (jio (CircularIndexUtil.createInstance 4)) (javaCast (jio (IndexedAnimationBehavior.new_2 1 250)))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: NullRotationAnimation2))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: NullRotationAnimation2)) a1 a2 a3

paintXY_impl :: NullRotationAnimation2 -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


