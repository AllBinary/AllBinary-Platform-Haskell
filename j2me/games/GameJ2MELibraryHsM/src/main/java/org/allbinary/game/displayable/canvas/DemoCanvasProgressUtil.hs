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
-- package org.allbinary.game.displayable.canvas
module DemoCanvasProgressUtil where

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
import qualified DemoCanvas -- same package or java.lang
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified PaintableComposite -- org.allbinary.graphics.paint.PaintableComposite
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface

data DemoCanvasProgressUtil = DemoCanvasProgressUtil
    { header_ :: JavaHeader
    }

instance JavaNull DemoCanvasProgressUtil where
    javaNull = javaNullRecord "DemoCanvasProgressUtil"

instance JavaEquals DemoCanvasProgressUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoCanvasProgressUtil where
    (==) = jrecordEquals

instance JavaObjectClass DemoCanvasProgressUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoCanvasProgressUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = DemoCanvasProgressUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: DemoCanvasProgressUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DemoCanvasProgressUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DemoCanvasProgressUtil -> IO ()
init_ this = do
    initFields_ this


showProgress :: DemoCanvas.DemoCanvas -> IO (())
showProgress demoCanvas = do
        Control.Monad.void (DemoCanvasProgressUtil.showProgressOptionallyInTheBackground demoCanvas False)
        pure ()


showProgressOptionallyInTheBackground :: DemoCanvas.DemoCanvas -> Bool -> IO (())
showProgressOptionallyInTheBackground demoCanvas background = do
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.startBackground progressCanvas background)
        let paintableArray = (jnewArray (2) javaNull)
        jsetIndex paintableArray (0) ((javaCast progressCanvas :: PaintableInterface.PaintableInterface))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: PaintableInterface.PaintableInterface) (DemoCanvas.getDefaultPaintableInterface demoCanvas))
        jsetIndex paintableArray (1) (assignedValue)
        Control.Monad.void (DemoCanvas.setDefaultPaintableInterface demoCanvas (javaCast (jio (PaintableComposite.new_1 paintableArray))))
        Control.Monad.void (DemoCanvas.setPaintableInterface demoCanvas (javaCast (jio (DemoCanvas.getDefaultPaintableInterface demoCanvas))))
        pure ()


