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
-- package org.allbinary.media
module DisplaysUtil where

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
import qualified Dimension -- java.awt.Dimension
import qualified DisplayMode -- java.awt.DisplayMode
import qualified GraphicsDevice -- java.awt.GraphicsDevice
import qualified GraphicsEnvironment -- java.awt.GraphicsEnvironment
import qualified Toolkit -- java.awt.Toolkit
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle

data DisplaysUtil = DisplaysUtil
    { header_ :: JavaHeader
    }

instance JavaNull DisplaysUtil where
    javaNull = javaNullRecord "DisplaysUtil"

instance JavaEquals DisplaysUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplaysUtil where
    (==) = jrecordEquals

instance JavaObjectClass DisplaysUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DisplaysUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = DisplaysUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getPrimaryScreenSize" (\() -> getPrimaryScreenSize_impl this)
    jregisterMethod header_ "getScreenSizesAsRectangleArray" (\() -> getScreenSizesAsRectangleArray_impl this)
    pure this

initFields_ :: DisplaysUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DisplaysUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DisplaysUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DisplaysUtil)
getInstance = do
        pure (DisplaysUtil.instance_)


getPrimaryScreenSize :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getPrimaryScreenSize object_ = jmethod object_ "getPrimaryScreenSize" (\() -> (getPrimaryScreenSize_impl (javaCast object_ :: DisplaysUtil))) ()

getPrimaryScreenSize_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getPrimaryScreenSize_super object_ = (getPrimaryScreenSize_impl (javaCast object_ :: DisplaysUtil))

getPrimaryScreenSize_impl :: DisplaysUtil -> IO (Rectangle.Rectangle)
getPrimaryScreenSize_impl this = do
        dimension <- (Toolkit.getScreenSize ((jio (Toolkit.getDefaultToolkit))))
        (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) (jget (dimension).width) (jget (dimension).height))


getScreenSizesAsRectangleArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Rectangle.Rectangle))
getScreenSizesAsRectangleArray object_ = jmethod object_ "getScreenSizesAsRectangleArray" (\() -> (getScreenSizesAsRectangleArray_impl (javaCast object_ :: DisplaysUtil))) ()

getScreenSizesAsRectangleArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Rectangle.Rectangle))
getScreenSizesAsRectangleArray_super object_ = (getScreenSizesAsRectangleArray_impl (javaCast object_ :: DisplaysUtil))

getScreenSizesAsRectangleArray_impl :: DisplaysUtil -> IO (JavaArray (Rectangle.Rectangle))
getScreenSizesAsRectangleArray_impl this = do
        graphicsEnvironment <- (GraphicsEnvironment.getLocalGraphicsEnvironment)
        graphicsDeviceArray <- (GraphicsEnvironment.getScreenDevices graphicsEnvironment)
        graphicsDevice <- newIORef (javaNull)
        displayMode <- newIORef (javaNull)
        rectangle <- newIORef (javaNull)
        let size = (jlength graphicsDeviceArray)
        let rectangleArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset graphicsDevice ((jindex graphicsDeviceArray (index)))
            assignedValue <- (GraphicsDevice.getDisplayMode ((jget graphicsDevice)))
            jset displayMode (assignedValue)
            assignedValue <- (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) (jio (DisplayMode.getWidth ((jget displayMode)))) (jio (DisplayMode.getHeight ((jget displayMode)))))
            jset rectangle (assignedValue)
            jsetIndex rectangleArray (index) ((jget rectangle))
        pure (rectangleArray)


