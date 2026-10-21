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
-- package org.allbinary.graphics.j2me.workarea.tools
module LinesGraphicItemFactory where

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
import qualified LinesGraphicItem -- same package or java.lang
import qualified GraphicItemInterface -- same package or java.lang
import qualified CanvasJPanel -- org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel
import qualified GraphicsItemInterfaceFactoryInterface

-- implements GraphicsItemInterfaceFactoryInterface
data LinesGraphicItemFactory = LinesGraphicItemFactory
    { header_ :: JavaHeader
    }

instance JavaNull LinesGraphicItemFactory where
    javaNull = javaNullRecord "LinesGraphicItemFactory"

instance JavaEquals LinesGraphicItemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinesGraphicItemFactory where
    (==) = jrecordEquals

instance JavaObjectClass LinesGraphicItemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LinesGraphicItemFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = LinesGraphicItemFactory header_
    jregisterLevel header_ this
    GraphicsItemInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: LinesGraphicItemFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LinesGraphicItemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinesGraphicItemFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LinesGraphicItemFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: LinesGraphicItemFactory)) a1

getInstance_impl :: LinesGraphicItemFactory -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance_impl this canvasJPanel = do
        (fmap (\value_ -> javaCast value_ :: GraphicItemInterface.GraphicItemInterface) (LinesGraphicItem.new_))


