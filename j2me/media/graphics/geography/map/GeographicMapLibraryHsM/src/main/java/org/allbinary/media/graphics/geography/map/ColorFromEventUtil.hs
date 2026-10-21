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
-- package org.allbinary.media.graphics.geography.map
module ColorFromEventUtil where

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
import qualified GeographicMapCompositeInterface -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory

data ColorFromEventUtil = ColorFromEventUtil
    { header_ :: JavaHeader
    , yELLOW :: IORef (BasicColor.BasicColor)
    , cOLOR_INT :: IORef (Int)
    }

instance JavaNull ColorFromEventUtil where
    javaNull = javaNullRecord "ColorFromEventUtil"

instance JavaEquals ColorFromEventUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorFromEventUtil where
    (==) = jrecordEquals

instance JavaObjectClass ColorFromEventUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorFromEventUtil
newRecord_ = do
    header_ <- newJavaHeader
    yELLOW <- newIORef javaNull
    cOLOR_INT <- newIORef 0
    let this = ColorFromEventUtil header_ yELLOW cOLOR_INT
    jregisterLevel header_ this
    jregisterMethod header_ "getForegroundColor" (\() -> getForegroundColor_impl this)
    pure this

initFields_ :: ColorFromEventUtil -> IO ()
initFields_ this = do
    jset this.yELLOW ((jget ((jio (BasicColorFactory.getInstance))).yELLOW))
    jset this.cOLOR_INT =<< (BasicColor.intValue ((jget (this).yELLOW)))
    pure ()

new_ :: IO ColorFromEventUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorFromEventUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ColorFromEventUtil)
getInstance = do
        pure (ColorFromEventUtil.instance_)


getForegroundColor :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (BasicColor.BasicColor)
getForegroundColor object_ a1 = jmethod object_ "getForegroundColor" (\() -> (getForegroundColor_impl (javaCast object_ :: ColorFromEventUtil))) () a1

getForegroundColor_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (BasicColor.BasicColor)
getForegroundColor_super object_ a1 = (getForegroundColor_impl (javaCast object_ :: ColorFromEventUtil)) a1

getForegroundColor_impl :: ColorFromEventUtil -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (BasicColor.BasicColor)
getForegroundColor_impl this gameCanvasInterface = do
        color <- newIORef ((jget (this).yELLOW))
        let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvas.getLayerManager gameCanvasInterface)) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        when (geographicMapInterface /= javaNull) $ do
            foregroundBasicColor <- (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)
            jset color (foregroundBasicColor)
        pure ((jget color))


