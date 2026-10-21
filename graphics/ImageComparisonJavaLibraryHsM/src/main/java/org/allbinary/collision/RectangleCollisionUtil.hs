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
-- package org.allbinary.collision
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
import qualified Rectangle -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
-- import java.awt.*

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

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RectangleCollisionUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = RectangleCollisionUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: RectangleCollisionUtil -> IO ()
initFields_ this = do
    pure ()

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


-- Java overloads of isCollision: calls the overload for the types of the arguments
isCollision :: (JavaObjectClass o2) => Rectangle.Rectangle -> o2 -> IO (Bool)
isCollision a1 a2
    | jisInstanceOf a2 (javaNull :: GPoint.GPoint) = isCollision_overload1 a1 (javaCast a2 :: GPoint.GPoint)
    | jisInstanceOf a2 (javaNull :: Rectangle.Rectangle) = isCollision_overload2 a1 (javaCast a2 :: Rectangle.Rectangle)
    | otherwise = isCollision_overload2 a1 (javaCast a2 :: Rectangle.Rectangle)

isCollision_overload1 :: Rectangle.Rectangle -> GPoint.GPoint -> IO (Bool)
isCollision_overload1 rectangle point = do
    javaCatchReturn $ do
        if (((((jio (GPoint.getX point)) > (((Prelude.fromInteger (jnumericInteger (jget (rectangle).x))) + (jio (Rectangle.getWidth rectangle))))) || ((jio (GPoint.getY point)) > (((Prelude.fromInteger (jnumericInteger (jget (rectangle).y))) + (jio (Rectangle.getHeight rectangle)))))) || ((jio (GPoint.getX point)) < (jget (rectangle).x))) || ((jio (GPoint.getY point)) < (jget (rectangle).y))) then do
            javaReturn (False)
        else do
            javaReturn (True)


isCollision_overload2 :: Rectangle.Rectangle -> Rectangle.Rectangle -> IO (Bool)
isCollision_overload2 rectangle1 rectangle2 = do
        (RectangleCollisionUtil.isCollision (jget (rectangle1).x) (jget (rectangle1).y) ((jget (rectangle1).x) + (jget (rectangle1).width)) ((jget (rectangle1).y) + (jget (rectangle1).height)) (jget (rectangle2).x) (jget (rectangle2).y) ((jget (rectangle2).x) + (jget (rectangle2).width)) ((jget (rectangle2).y) + (jget (rectangle2).height)))


-- Java overload of isCollision with a different parameter count: give it a different name
isCollision :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isCollision rectX1 rectY1 rectX2 rectY2 rect2X1 rect2Y1 rect2X2 rect2Y2 = do
    javaCatchReturn $ do
        if ((((rect2X1 >= rectX2) || (rect2Y1 >= rectY2)) || (rect2X2 <= rectX1)) || (rect2Y2 <= rectY1)) then do
            javaReturn (False)
        else do
            javaReturn (True)


