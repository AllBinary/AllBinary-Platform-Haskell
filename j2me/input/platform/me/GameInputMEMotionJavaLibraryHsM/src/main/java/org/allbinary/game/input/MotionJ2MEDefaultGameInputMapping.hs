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
-- package org.allbinary.game.input
module MotionJ2MEDefaultGameInputMapping (module MotionJ2MEDefaultGameInputMapping, module PersistentInputMapping) where

import PersistentInputMapping hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified GameKeyFactory -- same package or java.lang
import qualified GamePersistanceStrings -- org.allbinary.game.configuration.persistance.GamePersistanceStrings
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified BasicTouchInputFactory -- org.allbinary.input.motion.button.BasicTouchInputFactory
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory

data MotionJ2MEDefaultGameInputMapping = MotionJ2MEDefaultGameInputMapping
    { header_ :: JavaHeader
    , base :: PersistentInputMapping.PersistentInputMapping
    }

instance JavaNull MotionJ2MEDefaultGameInputMapping where
    javaNull = javaNullRecord "MotionJ2MEDefaultGameInputMapping"

instance JavaEquals MotionJ2MEDefaultGameInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionJ2MEDefaultGameInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass MotionJ2MEDefaultGameInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MotionJ2MEDefaultGameInputMapping
newRecord_ = do
    base <- PersistentInputMapping.newRecord_
    let header_ = base.header_
    let this = MotionJ2MEDefaultGameInputMapping header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: MotionJ2MEDefaultGameInputMapping -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionJ2MEDefaultGameInputMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionJ2MEDefaultGameInputMapping -> IO ()
init_ this = do
        PersistentInputMapping.init_1 this.base (jget ((jio (GamePersistanceStrings.getInstance))).dEFAULT_INPUT_MAPPING_RECORD_ID)
        initFields_ this
        pure () -- super(...) is in the record above
        inputToGameKeyMapping <- (PersistentInputMapping.getInputMapping this)
        gameKeyFactory <- (GameKeyFactory.getInstance)
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (gameKeyFactory).kEY_NUM2))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (gameKeyFactory).kEY_NUM4))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (gameKeyFactory).kEY_NUM6))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (gameKeyFactory).kEY_NUM8))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (gameKeyFactory).gAME_A))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM3) (jget (gameKeyFactory).gAME_B))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (gameKeyFactory).gAME_C))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (gameKeyFactory).gAME_D))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEVEL_DOWN) (jget (gameKeyFactory).lEVEL_DOWN))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEVEL_UP) (jget (gameKeyFactory).lEVEL_UP))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (gameKeyFactory).uP))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (gameKeyFactory).dOWN))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (gameKeyFactory).lEFT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (gameKeyFactory).rIGHT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_POUND) (jget (gameKeyFactory).kEY_POUND))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_STAR) (jget (gameKeyFactory).kEY_STAR))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (gameKeyFactory).kEY_NUM1))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM3) (jget (gameKeyFactory).kEY_NUM3))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM5) (jget (gameKeyFactory).kEY_NUM5))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (gameKeyFactory).kEY_NUM7))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (gameKeyFactory).kEY_NUM9))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM0) (jget (gameKeyFactory).kEY_NUM0))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (gameKeyFactory).fIRE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget ((jio (TouchMotionGestureFactory.getInstance))).uP))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget ((jio (TouchMotionGestureFactory.getInstance))).dOWN))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget ((jio (TouchMotionGestureFactory.getInstance))).lEFT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget ((jio (TouchMotionGestureFactory.getInstance))).rIGHT))
        basicTouchInputFactory <- (BasicTouchInputFactory.getInstance)
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (basicTouchInputFactory).uP))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (basicTouchInputFactory).lEFT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (basicTouchInputFactory).rIGHT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (basicTouchInputFactory).dOWN))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM0) (jget (basicTouchInputFactory).sPECIAL_BUTTON_FIVE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (basicTouchInputFactory).sPECIAL_BUTTON_FOUR))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (basicTouchInputFactory).sPECIAL_BUTTON_THREE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (basicTouchInputFactory).sPECIAL_BUTTON_TWO))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM3) (jget (basicTouchInputFactory).sPECIAL_BUTTON_ONE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM2) (jget (basicTouchInputFactory).sPECIAL_BUTTON_SIX))
        pure ()


