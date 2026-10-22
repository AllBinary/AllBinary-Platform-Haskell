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
-- package org.allbinary.media.image.comparison.pixel
module PixelDelta where

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
import qualified Any -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
import qualified ColorDelta -- org.allbinary.media.image.comparison.color.ColorDelta
import qualified CommonSeps -- org.allbinary.string.CommonSeps

-- implements CacheableInterface
data PixelDelta = PixelDelta
    { header_ :: JavaHeader
    , point :: IORef (GPoint.GPoint)
    , colorDelta :: IORef (ColorDelta.ColorDelta)
    , key :: IORef (Any.Any)
    }

instance JavaNull PixelDelta where
    javaNull = javaNullRecord "PixelDelta"

instance JavaEquals PixelDelta where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PixelDelta where
    (==) = jrecordEquals

instance JavaObjectClass PixelDelta where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PixelDelta
newRecord_ = do
    header_ <- newJavaHeader
    point <- newIORef javaNull
    colorDelta <- newIORef javaNull
    key <- newIORef javaNull
    let this = PixelDelta header_ point colorDelta key
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "setPoint" (\() -> setPoint_impl this)
    jregisterMethod header_ "getColorDelta" (\() -> getColorDelta_impl this)
    jregisterMethod header_ "setColorDelta" (\() -> setColorDelta_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PixelDelta -> IO ()
initFields_ this = do
    jset this.point (javaNull)
    jset this.colorDelta (javaNull)
    jset this.key (javaNull)
    pure ()

new_2 :: GPoint.GPoint -> ColorDelta.ColorDelta -> IO PixelDelta
new_2 point colorDelta = do
    this <- newRecord_
    init_2 this point colorDelta
    pure this

init_2 :: PixelDelta -> GPoint.GPoint -> ColorDelta.ColorDelta -> IO ()
init_2 this point colorDelta = do
        initFields_ this
        Control.Monad.void (PixelDelta.setPoint this point)
        Control.Monad.void (PixelDelta.setColorDelta this colorDelta)
        assignedValue <- (PixelDelta.getKey_2 (jio (PixelDelta.getPoint this)) (jio (PixelDelta.getColorDelta this)))
        jset (this).key (assignedValue)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: PixelDelta))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: PixelDelta))

getKey_impl :: PixelDelta -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).key)))


getKey_2 :: GPoint.GPoint -> ColorDelta.ColorDelta -> IO (Any.Any)
getKey_2 point colorDelta = do
        (fmap jtoObject (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.new_))) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) point))))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) (jio (Any.toString ((jio (ColorDelta.getKey colorDelta))))))))))


getPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: PixelDelta))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: PixelDelta))

getPoint_impl :: PixelDelta -> IO (GPoint.GPoint)
getPoint_impl this = do
        pure ((jget (this).point))


setPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: PixelDelta))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: PixelDelta)) a1

setPoint_impl :: PixelDelta -> GPoint.GPoint -> IO (())
setPoint_impl this point = do
        jset (this).point (point)
        pure ()


getColorDelta :: (JavaObjectClass this_) => this_ -> IO (ColorDelta.ColorDelta)
getColorDelta object_ = jmethod object_ "getColorDelta" (\() -> (getColorDelta_impl (javaCast object_ :: PixelDelta))) ()

getColorDelta_super :: (JavaObjectClass this_) => this_ -> IO (ColorDelta.ColorDelta)
getColorDelta_super object_ = (getColorDelta_impl (javaCast object_ :: PixelDelta))

getColorDelta_impl :: PixelDelta -> IO (ColorDelta.ColorDelta)
getColorDelta_impl this = do
        pure ((jget (this).colorDelta))


setColorDelta :: (JavaObjectClass this_) => this_ -> ColorDelta.ColorDelta -> IO (())
setColorDelta object_ a1 = jmethod object_ "setColorDelta" (\() -> (setColorDelta_impl (javaCast object_ :: PixelDelta))) () a1

setColorDelta_super :: (JavaObjectClass this_) => this_ -> ColorDelta.ColorDelta -> IO (())
setColorDelta_super object_ a1 = (setColorDelta_impl (javaCast object_ :: PixelDelta)) a1

setColorDelta_impl :: PixelDelta -> ColorDelta.ColorDelta -> IO (())
setColorDelta_impl this colorDelta = do
        jset (this).colorDelta (colorDelta)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PixelDelta))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PixelDelta))

toString_impl :: PixelDelta -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "PixelDelta: Point: "))) (jio (GPoint.toString ((jget (this).point))))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jio (ColorDelta.toString ((jget (this).colorDelta))))))))


