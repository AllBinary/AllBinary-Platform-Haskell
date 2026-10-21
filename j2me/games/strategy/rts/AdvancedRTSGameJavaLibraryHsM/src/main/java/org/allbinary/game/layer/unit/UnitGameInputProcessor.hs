{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer.unit
module UnitGameInputProcessor (module UnitGameInputProcessor, module GameInputProcessor) where

import GameInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, unitLayer)
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
import qualified UnitLayer -- same package or java.lang
import qualified GameInputProcessor -- org.allbinary.game.input.GameInputProcessor

data UnitGameInputProcessor = UnitGameInputProcessor
    { header_ :: JavaHeader
    , base :: GameInputProcessor.GameInputProcessor
    , unitLayer :: IORef (UnitLayer.UnitLayer)
    }

instance JavaNull UnitGameInputProcessor where
    javaNull = javaNullRecord "UnitGameInputProcessor"

instance JavaEquals UnitGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass UnitGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UnitGameInputProcessor
newRecord_ = do
    base <- GameInputProcessor.newRecord_
    let header_ = base.header_
    unitLayer <- newIORef javaNull
    let this = UnitGameInputProcessor header_ base unitLayer
    jregisterLevel header_ this
    pure this

initFields_ :: UnitGameInputProcessor -> IO ()
initFields_ this = do
    jset this.unitLayer (javaNull)
    pure ()

new_1 :: UnitLayer.UnitLayer -> IO UnitGameInputProcessor
new_1 unitLayer = do
    this <- newRecord_
    init_1 this unitLayer
    pure this

init_1 :: UnitGameInputProcessor -> UnitLayer.UnitLayer -> IO ()
init_1 this unitLayer = do
        GameInputProcessor.init_ this.base
        initFields_ this
        jset (this).unitLayer (unitLayer)
        pure ()


