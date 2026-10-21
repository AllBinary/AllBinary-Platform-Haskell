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
module GraphicsItemInterfaceFactoryInterface where

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
import qualified GraphicItemInterface -- same package or java.lang
import qualified CanvasJPanel -- org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel

-- Java interface: the classes that implement it have these functions
data GraphicsItemInterfaceFactoryInterface = GraphicsItemInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull GraphicsItemInterfaceFactoryInterface where
    javaNull = javaNullRecord "GraphicsItemInterfaceFactoryInterface"

instance JavaEquals GraphicsItemInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsItemInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsItemInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GraphicsItemInterfaceFactoryInterface
fromHeader_ header = GraphicsItemInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GraphicsItemInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GraphicsItemInterfaceFactoryInterface))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: GraphicsItemInterfaceFactoryInterface)) a1

getInstance_impl :: GraphicsItemInterfaceFactoryInterface -> CanvasJPanel.CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance_impl this canvasJPanel = javaAbstractMethod "getInstance"


