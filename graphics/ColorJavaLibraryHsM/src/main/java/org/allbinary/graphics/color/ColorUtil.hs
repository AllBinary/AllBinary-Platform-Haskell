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
-- package org.allbinary.graphics.color
module ColorUtil where

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
import qualified Color -- same package or java.lang
-- import java.awt.*

data ColorUtil = ColorUtil
    { header_ :: JavaHeader
    }

instance JavaNull ColorUtil where
    javaNull = javaNullRecord "ColorUtil"

instance JavaEquals ColorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorUtil where
    (==) = jrecordEquals

instance JavaObjectClass ColorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ColorUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "isGreyishOrWhiteLike" (\() -> isGreyishOrWhiteLike_impl this)
    jregisterMethod header_ "isDark" (\() -> isDark_impl this)
    pure this

initFields_ :: ColorUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ColorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ColorUtil)
getInstance = do
        pure (ColorUtil.instance_)


isGreyishOrWhiteLike :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isGreyishOrWhiteLike object_ a1 = jmethod object_ "isGreyishOrWhiteLike" (\() -> (isGreyishOrWhiteLike_impl (javaCast object_ :: ColorUtil))) () a1

isGreyishOrWhiteLike_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isGreyishOrWhiteLike_super object_ a1 = (isGreyishOrWhiteLike_impl (javaCast object_ :: ColorUtil)) a1

isGreyishOrWhiteLike_impl :: ColorUtil -> Color.Color -> IO (Bool)
isGreyishOrWhiteLike_impl this color = do
    javaCatchReturn $ do
        when ((((Prelude.abs ((jio (Color.getRed color)) - (jio (Color.getGreen color)))) > 20) || ((Prelude.abs ((jio (Color.getRed color)) - (jio (Color.getBlue color)))) > 20)) || ((Prelude.abs ((jio (Color.getGreen color)) - (jio (Color.getBlue color)))) > 20)) $ do
            javaReturn (False)
        pure (True)


isDark :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isDark object_ a1 = jmethod object_ "isDark" (\() -> (isDark_impl (javaCast object_ :: ColorUtil))) () a1

isDark_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isDark_super object_ a1 = (isDark_impl (javaCast object_ :: ColorUtil)) a1

isDark_impl :: ColorUtil -> Color.Color -> IO (Bool)
isDark_impl this color = do
    javaCatchReturn $ do
        when ((((jio (Color.getRed color)) < 0x77) && ((jio (Color.getRed color)) < 0x77)) && ((jio (Color.getRed color)) < 0x77)) $ do
            javaReturn (True)
        pure (False)


