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
-- package org.allbinary.animation.caption
module CaptionAnimationHelperBase (module CaptionAnimationHelperBase, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isShowing, isShowing_super, isShowing_impl, tick, tick_super, tick_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, iNSTANCE)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

data CaptionAnimationHelperBase = CaptionAnimationHelperBase
    { header_ :: JavaHeader
    , base :: Animation.Animation
    }

instance JavaNull CaptionAnimationHelperBase where
    javaNull = javaNullRecord "CaptionAnimationHelperBase"

instance JavaEquals CaptionAnimationHelperBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CaptionAnimationHelperBase where
    (==) = jrecordEquals

instance JavaObjectClass CaptionAnimationHelperBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNSTANCE #-}
iNSTANCE = unsafePerformIO ((new_))

newRecord_ :: IO CaptionAnimationHelperBase
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    let this = CaptionAnimationHelperBase header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isShowing" (\() -> isShowing_impl this)
    jregisterMethod header_ "tick" (\() -> tick_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: CaptionAnimationHelperBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CaptionAnimationHelperBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CaptionAnimationHelperBase -> IO ()
init_ this = do
    Animation.init_ this.base
    initFields_ this


isShowing :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowing object_ = jmethod object_ "isShowing" (\() -> (isShowing_impl (javaCast object_ :: CaptionAnimationHelperBase))) ()

isShowing_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowing_super object_ = (isShowing_impl (javaCast object_ :: CaptionAnimationHelperBase))

isShowing_impl :: CaptionAnimationHelperBase -> IO (Bool)
isShowing_impl this = do
        pure (False)


tick :: (JavaObjectClass this_) => this_ -> IO (())
tick object_ = jmethod object_ "tick" (\() -> (tick_impl (javaCast object_ :: CaptionAnimationHelperBase))) ()

tick_super :: (JavaObjectClass this_) => this_ -> IO (())
tick_super object_ = (tick_impl (javaCast object_ :: CaptionAnimationHelperBase))

tick_impl :: CaptionAnimationHelperBase -> IO (())
tick_impl this = do
        pure ()


update :: (JavaObjectClass this_) => this_ -> String -> BasicColor.BasicColor -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CaptionAnimationHelperBase))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> BasicColor.BasicColor -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: CaptionAnimationHelperBase)) a1 a2

update_impl :: CaptionAnimationHelperBase -> String -> BasicColor.BasicColor -> IO (())
update_impl this message basicColor = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CaptionAnimationHelperBase))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CaptionAnimationHelperBase)) a1 a2 a3

paintXY_impl :: CaptionAnimationHelperBase -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


