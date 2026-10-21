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
-- package org.allbinary.graphics
module Rectangle where

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
import qualified GPoint -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data Rectangle = Rectangle
    { header_ :: JavaHeader
    , point :: IORef (GPoint.GPoint)
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull Rectangle where
    javaNull = javaNullRecord "Rectangle"

instance JavaEquals Rectangle where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Rectangle where
    (==) = jrecordEquals

instance JavaObjectClass Rectangle where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Rectangle
newRecord_ = do
    header_ <- newJavaHeader
    point <- newIORef javaNull
    width <- newIORef 0
    height <- newIORef 0
    let this = Rectangle header_ point width height
    jregisterLevel header_ this
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "setPoint" (\() -> setPoint_impl this)
    jregisterMethod header_ "getMaxX" (\() -> getMaxX_impl this)
    jregisterMethod header_ "getMaxY" (\() -> getMaxY_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Rectangle -> IO ()
initFields_ this = do
    jset this.point (javaNull)
    jset this.width (0)
    jset this.height (0)
    pure ()

new_3 :: GPoint.GPoint -> Int -> Int -> IO Rectangle
new_3 point width height = do
    this <- newRecord_
    init_3 this point width height
    pure this

init_3 :: Rectangle -> GPoint.GPoint -> Int -> Int -> IO ()
init_3 this point width height = do
        initFields_ this
        jset (this).point (point)
        jset (this).width (width)
        jset (this).height (height)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: Rectangle))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: Rectangle))

getPoint_impl :: Rectangle -> IO (GPoint.GPoint)
getPoint_impl this = do
        pure ((jget (this).point))


setPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: Rectangle))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: Rectangle)) a1

setPoint_impl :: Rectangle -> GPoint.GPoint -> IO (())
setPoint_impl this point = do
        jset (this).point (point)
        pure ()


getMaxX :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxX object_ = jmethod object_ "getMaxX" (\() -> (getMaxX_impl (javaCast object_ :: Rectangle))) ()

getMaxX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxX_super object_ = (getMaxX_impl (javaCast object_ :: Rectangle))

getMaxX_impl :: Rectangle -> IO (Int)
getMaxX_impl this = do
        pure (((jio (GPoint.getX ((jget (this).point)))) + (jget (this).width)))


getMaxY :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxY object_ = jmethod object_ "getMaxY" (\() -> (getMaxY_impl (javaCast object_ :: Rectangle))) ()

getMaxY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxY_super object_ = (getMaxY_impl (javaCast object_ :: Rectangle))

getMaxY_impl :: Rectangle -> IO (Int)
getMaxY_impl this = do
        pure (((jio (GPoint.getY ((jget (this).point)))) + (jget (this).height)))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: Rectangle))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: Rectangle))

getWidth_impl :: Rectangle -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: Rectangle))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: Rectangle)) a1

setWidth_impl :: Rectangle -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: Rectangle))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: Rectangle))

getHeight_impl :: Rectangle -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: Rectangle))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: Rectangle)) a1

setHeight_impl :: Rectangle -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Rectangle))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Rectangle))

toString_impl :: Rectangle -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (GPoint.toString ((jio (Rectangle.getPoint this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Rectangle.getWidth this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Rectangle.getHeight this)))
        Control.Monad.void (StringMaker.append stringBuffer " MaxX: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Rectangle.getMaxX this)))
        Control.Monad.void (StringMaker.append stringBuffer " MaxY: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (Rectangle.getMaxY this)))
        (StringMaker.toString stringBuffer)


