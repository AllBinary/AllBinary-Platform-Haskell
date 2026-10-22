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
-- package org.allbinary.game.paint
module ColorFillPaintableFactory where

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
import qualified ColorFillPaintable -- same package or java.lang
import qualified OverScanColorFillPaintable -- same package or java.lang
import qualified ColorFillBasePaintable -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory

data ColorFillPaintableFactory = ColorFillPaintableFactory
    { header_ :: JavaHeader
    }

instance JavaNull ColorFillPaintableFactory where
    javaNull = javaNullRecord "ColorFillPaintableFactory"

instance JavaEquals ColorFillPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorFillPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass ColorFillPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorFillPaintableFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ColorFillPaintableFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: ColorFillPaintableFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ColorFillPaintableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorFillPaintableFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ColorFillPaintableFactory)
getInstance = do
        pure (ColorFillPaintableFactory.instance_)


getInstance_2 :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> Bool -> IO (ColorFillBasePaintable.ColorFillBasePaintable)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: ColorFillPaintableFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> Bool -> IO (ColorFillBasePaintable.ColorFillBasePaintable)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: ColorFillPaintableFactory)) a1 a2

getInstance_2_impl :: ColorFillPaintableFactory -> BasicColor.BasicColor -> Bool -> IO (ColorFillBasePaintable.ColorFillBasePaintable)
getInstance_2_impl this basicColor forThreedCanvas = do
    javaCatchReturn $ do
        operatingSystem <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
        if (jio (GenericOperatingSystem.isOverScan operatingSystem)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ColorFillBasePaintable.ColorFillBasePaintable) (OverScanColorFillPaintable.new_1 basicColor))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ColorFillBasePaintable.ColorFillBasePaintable) (ColorFillPaintable.new_1 basicColor))


