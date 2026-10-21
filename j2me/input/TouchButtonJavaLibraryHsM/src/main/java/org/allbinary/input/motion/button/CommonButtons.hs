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
-- package org.allbinary.input.motion.button
module CommonButtons where

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
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton

data CommonButtons = CommonButtons
    { header_ :: JavaHeader
    , sTANDARD_BUTTON_SIZE :: IORef (Int)
    , nORMAL_BUTTON :: IORef (Rectangle.Rectangle)
    , lARGE_BUTTON :: IORef (Rectangle.Rectangle)
    }

instance JavaNull CommonButtons where
    javaNull = javaNullRecord "CommonButtons"

instance JavaEquals CommonButtons where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonButtons where
    (==) = jrecordEquals

instance JavaObjectClass CommonButtons where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonButtons
newRecord_ = do
    header_ <- newJavaHeader
    sTANDARD_BUTTON_SIZE <- newIORef 0
    nORMAL_BUTTON <- newIORef javaNull
    lARGE_BUTTON <- newIORef javaNull
    let this = CommonButtons header_ sTANDARD_BUTTON_SIZE nORMAL_BUTTON lARGE_BUTTON
    jregisterLevel header_ this
    pure this

initFields_ :: CommonButtons -> IO ()
initFields_ this = do
    jset this.sTANDARD_BUTTON_SIZE (0)
    jset this.nORMAL_BUTTON (javaNull)
    jset this.lARGE_BUTTON (javaNull)
    pure ()


getInstance :: IO (CommonButtons)
getInstance = do
        pure (CommonButtons.instance_)

new_ :: IO CommonButtons
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonButtons -> IO ()
init_ this = do
        initFields_ this
        displayInfo <- (DisplayInfoSingleton.getInstance)
        commonButtonSize <- newIORef (128)
        fix $ \loop -> when ((jget commonButtonSize) > 64) $ javaIteration (loop) $ do
            let totalColumns = ((jio (DisplayInfoSingleton.getLastWidth displayInfo)) `quot` (jget commonButtonSize))
            let totalRows = ((jio (DisplayInfoSingleton.getLastHeight displayInfo)) `quot` (jget commonButtonSize))
            max <- newIORef (totalColumns)
            when (totalRows > (jget max)) $ do
                jset max (totalRows)
            when ((jget max) > 9) $ do
                throwIO JavaBreak
            jset commonButtonSize (((jget commonButtonSize) `Data.Bits.shiftR` 1))
        jset (this).sTANDARD_BUTTON_SIZE ((jget commonButtonSize))
        assignedValue <- (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) (jget (this).sTANDARD_BUTTON_SIZE) (jget (this).sTANDARD_BUTTON_SIZE))
        jset (this).nORMAL_BUTTON (assignedValue)
        assignedValue <- (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) ((jget (this).sTANDARD_BUTTON_SIZE) `Data.Bits.shiftL` 1) ((jget (this).sTANDARD_BUTTON_SIZE) `Data.Bits.shiftL` 1))
        jset (this).lARGE_BUTTON (assignedValue)
        pure ()


