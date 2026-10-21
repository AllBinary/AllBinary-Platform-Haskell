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
-- package org.allbinary.math
module RectangleCollisionUtil where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data RectangleCollisionUtil = RectangleCollisionUtil
    { header_ :: JavaHeader
    }

instance JavaNull RectangleCollisionUtil where
    javaNull = javaNullRecord "RectangleCollisionUtil"

instance JavaEquals RectangleCollisionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleCollisionUtil where
    (==) = jrecordEquals

instance JavaObjectClass RectangleCollisionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RectangleCollisionUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = RectangleCollisionUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    jregisterMethod header_ "isInside" (\() -> isInside_impl this)
    pure this

initFields_ :: RectangleCollisionUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (RectangleCollisionUtil)
getInstance = do
        pure (RectangleCollisionUtil.instance_)

new_ :: IO RectangleCollisionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RectangleCollisionUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isCollision :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isCollision object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: RectangleCollisionUtil))) () a1 a2 a3 a4 a5 a6 a7 a8

isCollision_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isCollision_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (isCollision_impl (javaCast object_ :: RectangleCollisionUtil)) a1 a2 a3 a4 a5 a6 a7 a8

isCollision_impl :: RectangleCollisionUtil -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isCollision_impl this rectX1 rectY1 rectX2 rectY2 rect2X1 rect2Y1 rect2X2 rect2Y2 = do
    javaCatchReturn $ do
        if ((((rect2X1 >= rectX2) || (rect2Y1 >= rectY2)) || (rect2X2 <= rectX1)) || (rect2Y2 <= rectY1)) then do
            javaReturn (False)
        else do
            javaReturn (True)


isInside :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isInside object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "isInside" (\() -> (isInside_impl (javaCast object_ :: RectangleCollisionUtil))) () a1 a2 a3 a4 a5 a6

isInside_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isInside_super object_ a1 a2 a3 a4 a5 a6 = (isInside_impl (javaCast object_ :: RectangleCollisionUtil)) a1 a2 a3 a4 a5 a6

isInside_impl :: RectangleCollisionUtil -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isInside_impl this rectX1 rectY1 rectX2 rectY2 x y = do
    javaCatchReturn $ do
        if ((((x >= rectX2) || (y >= rectY2)) || (x <= rectX1)) || (y <= rectY1)) then do
            javaReturn (False)
        else do
            javaReturn (True)


