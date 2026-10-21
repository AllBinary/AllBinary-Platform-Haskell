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
-- package org.allbinary.game.ag.ai
module SpinnerAI (module SpinnerAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, isEven, direction)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data SpinnerAI = SpinnerAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , isEven :: IORef (Bool)
    , direction :: IORef (JavaArray (Int))
    }

instance JavaNull SpinnerAI where
    javaNull = javaNullRecord "SpinnerAI"

instance JavaEquals SpinnerAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpinnerAI where
    (==) = jrecordEquals

instance JavaObjectClass SpinnerAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SpinnerAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    isEven <- newIORef False
    direction <- newIORef javaNull
    let this = SpinnerAI header_ base isEven direction
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: SpinnerAI -> IO ()
initFields_ this = do
    jset this.isEven (False)
    jset this.direction (javaNull)
    pure ()

new_3 :: JavaArray (Int) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO SpinnerAI
new_3 direction ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this direction ownerLayerInterface gameInput
    pure this

init_3 :: SpinnerAI -> JavaArray (Int) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this direction ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).direction (direction)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: SpinnerAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: SpinnerAI)) a1

processAI_impl :: SpinnerAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        if (jget (this).isEven) then do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (jindex ((jget (this).direction)) (0)))
            jset (this).isEven (False)
        else do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
            jset (this).isEven (True)
        pure ()


