{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABCustomItemInterface where

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

-- Java interface: the classes that implement it have these functions
data ABCustomItemInterface = ABCustomItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull ABCustomItemInterface where
    javaNull = javaNullRecord "ABCustomItemInterface"

instance JavaEquals ABCustomItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCustomItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass ABCustomItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ABCustomItemInterface
fromHeader_ header = ABCustomItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ABCustomItemInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMinimumWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth object_ = jmethod object_ "getMinimumWidth" (\() -> (getMinimumWidth_impl (javaCast object_ :: ABCustomItemInterface))) ()

getMinimumWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth_super object_ = (getMinimumWidth_impl (javaCast object_ :: ABCustomItemInterface))

getMinimumWidth_impl :: ABCustomItemInterface -> IO (Int)
getMinimumWidth_impl this = javaAbstractMethod "getMinimumWidth"


getMinimumHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight object_ = jmethod object_ "getMinimumHeight" (\() -> (getMinimumHeight_impl (javaCast object_ :: ABCustomItemInterface))) ()

getMinimumHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight_super object_ = (getMinimumHeight_impl (javaCast object_ :: ABCustomItemInterface))

getMinimumHeight_impl :: ABCustomItemInterface -> IO (Int)
getMinimumHeight_impl this = javaAbstractMethod "getMinimumHeight"


getLabel :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel object_ = jmethod object_ "getLabel" (\() -> (getLabel_impl (javaCast object_ :: ABCustomItemInterface))) ()

getLabel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel_super object_ = (getLabel_impl (javaCast object_ :: ABCustomItemInterface))

getLabel_impl :: ABCustomItemInterface -> IO (String)
getLabel_impl this = javaAbstractMethod "getLabel"


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ABCustomItemInterface))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ABCustomItemInterface)) a1 a2 a3

paintXY_impl :: ABCustomItemInterface -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = javaAbstractMethod "paintXY"


paintUnselected :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected object_ a1 a2 a3 = jmethod object_ "paintUnselected" (\() -> (paintUnselected_impl (javaCast object_ :: ABCustomItemInterface))) () a1 a2 a3

paintUnselected_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_super object_ a1 a2 a3 = (paintUnselected_impl (javaCast object_ :: ABCustomItemInterface)) a1 a2 a3

paintUnselected_impl :: ABCustomItemInterface -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_impl this graphics x y = javaAbstractMethod "paintUnselected"


