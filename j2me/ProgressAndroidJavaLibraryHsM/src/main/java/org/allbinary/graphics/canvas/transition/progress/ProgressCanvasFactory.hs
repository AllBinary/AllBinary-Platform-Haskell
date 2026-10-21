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
-- package org.allbinary.graphics.canvas.transition.progress
module ProgressCanvasFactory where

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
import qualified AndroidBasicTitleProgressBar -- same package or java.lang
import qualified ProgressCanvas -- same package or java.lang
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data ProgressCanvasFactory = ProgressCanvasFactory
    { header_ :: JavaHeader
    }

instance JavaNull ProgressCanvasFactory where
    javaNull = javaNullRecord "ProgressCanvasFactory"

instance JavaEquals ProgressCanvasFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressCanvasFactory where
    (==) = jrecordEquals

instance JavaObjectClass ProgressCanvasFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pROGRESS_FORM_SCREEN #-}
pROGRESS_FORM_SCREEN = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProgressCanvasFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProgressCanvasFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ProgressCanvasFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProgressCanvasFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProgressCanvasFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ProgressCanvas.ProgressCanvas)
getInstance = do
        when ((jget ProgressCanvasFactory.pROGRESS_FORM_SCREEN) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (AndroidBasicTitleProgressBar.new_3 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset ProgressCanvasFactory.pROGRESS_FORM_SCREEN (assignedValue)
        pure ((javaCast (jget ProgressCanvasFactory.pROGRESS_FORM_SCREEN) :: ProgressCanvas.ProgressCanvas))


getLazyInstance :: IO (PaintableInterface.PaintableInterface)
getLazyInstance = do
        (fmap (\value_ -> javaCast value_ :: PaintableInterface.PaintableInterface) (NullPaintable.getInstance))


