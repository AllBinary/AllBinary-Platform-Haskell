{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABStringComponent where

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
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory

data ABStringComponent = ABStringComponent
    { header_ :: JavaHeader
    }

instance JavaNull ABStringComponent where
    javaNull = javaNullRecord "ABStringComponent"

instance JavaEquals ABStringComponent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABStringComponent where
    (==) = jrecordEquals

instance JavaObjectClass ABStringComponent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_STRING_COMPONENT #-}
nULL_STRING_COMPONENT = unsafePerformIO ((new_2 (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABStringComponent
newRecord_ = do
    header_ <- newJavaHeader
    let this = ABStringComponent header_
    jregisterLevel header_ this
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "setForegroundBasicColor" (\() -> setForegroundBasicColor_impl this)
    pure this

initFields_ :: ABStringComponent -> IO ()
initFields_ this = do
    pure ()


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: ABStringComponent))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: ABStringComponent))

getBackgroundBasicColor_impl :: ABStringComponent -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        pure ((jget ((jio (BasicColorFactory.getInstance))).wHITE))

new_2 :: BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABStringComponent
new_2 backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_2 this backgroundBasicColor foregroundBasicColor
    pure this

init_2 :: ABStringComponent -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_2 this backgroundBasicColor foregroundBasicColor = do
        initFields_ this
        pure ()
        pure ()


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: ABStringComponent))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: ABStringComponent))

getForegroundBasicColor_impl :: ABStringComponent -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        pure ((jget ((jio (BasicColorFactory.getInstance))).wHITE))


setForegroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor object_ a1 = jmethod object_ "setForegroundBasicColor" (\() -> (setForegroundBasicColor_impl (javaCast object_ :: ABStringComponent))) () a1

setForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_super object_ a1 = (setForegroundBasicColor_impl (javaCast object_ :: ABStringComponent)) a1

setForegroundBasicColor_impl :: ABStringComponent -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_impl this foregroundBasicColor = do
        pure ()


