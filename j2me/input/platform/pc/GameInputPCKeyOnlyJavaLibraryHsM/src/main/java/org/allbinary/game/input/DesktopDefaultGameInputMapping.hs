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
module DesktopDefaultGameInputMapping (module DesktopDefaultGameInputMapping, module PersistentInputMapping) where

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
import qualified PCKeyFactory -- same package or java.lang
import qualified GameKeyFactory -- same package or java.lang
import qualified GamePersistanceStrings -- org.allbinary.game.configuration.persistance.GamePersistanceStrings
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping

data DesktopDefaultGameInputMapping = DesktopDefaultGameInputMapping
    { header_ :: JavaHeader
    , base :: PersistentInputMapping.PersistentInputMapping
    }

instance JavaNull DesktopDefaultGameInputMapping where
    javaNull = javaNullRecord "DesktopDefaultGameInputMapping"

instance JavaEquals DesktopDefaultGameInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DesktopDefaultGameInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass DesktopDefaultGameInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DesktopDefaultGameInputMapping
newRecord_ = do
    base <- PersistentInputMapping.newRecord_
    let header_ = base.header_
    let this = DesktopDefaultGameInputMapping header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: DesktopDefaultGameInputMapping -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DesktopDefaultGameInputMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DesktopDefaultGameInputMapping -> IO ()
init_ this = do
        PersistentInputMapping.init_1 this.base (jget ((jio (GamePersistanceStrings.getInstance))).dEFAULT_INPUT_MAPPING_RECORD_ID)
        initFields_ this
        pure () -- super(...) is in the record above
        inputToGameKeyMapping <- (PersistentInputMapping.getInputMapping this)
        pcKeyFactory <- (PCKeyFactory.getInstance)
        gameKeyFactory <- (GameKeyFactory.getInstance)
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).fIRE) (jget (pcKeyFactory).eNTER))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (pcKeyFactory).fOUR))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (pcKeyFactory)._P))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (pcKeyFactory).p))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory).dPAD_UP))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory).dPAD_DOWN))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory).dPAD_LEFT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory).dPAD_RIGHT))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (pcKeyFactory).fIVE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (pcKeyFactory)._Y))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (pcKeyFactory)._I))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory)._U))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory)._H))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory)._J))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory)._N))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM5) (jget (pcKeyFactory)._M))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (pcKeyFactory).y))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (pcKeyFactory).i))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory).u))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory).h))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory).j))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory).n))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM5) (jget (pcKeyFactory).m))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (pcKeyFactory)._Q))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (pcKeyFactory)._E))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory)._W))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory)._A))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory)._D))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory)._S))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM5) (jget (pcKeyFactory)._X))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM7) (jget (pcKeyFactory).q))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM9) (jget (pcKeyFactory).e))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory).w))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory).a))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory).d))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory).s))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM5) (jget (pcKeyFactory).x))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM3) (jget (pcKeyFactory).tHREE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM0) (jget (pcKeyFactory).zERO))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM0) (jget (pcKeyFactory).oNE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM0) (jget (pcKeyFactory).sPACE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_POUND) (jget (pcKeyFactory).dEL))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_POUND) (jget (pcKeyFactory).tWO))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_STAR) (jget (pcKeyFactory).eSCAPE))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_STAR) (jget (pcKeyFactory).sTAR))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEVEL_DOWN) (jget (pcKeyFactory).cOMMA))
        Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEVEL_UP) (jget (pcKeyFactory).pERIOD))
        pure ()


