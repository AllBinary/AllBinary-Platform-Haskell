{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.game.layer.capital
module HudCapital (module HudCapital, module Capital) where

import Capital hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, removeMoney, removeMoney_super, removeMoney_impl, getTotalMoney, getTotalMoney_super, getTotalMoney_impl, addMoney, addMoney_super, addMoney_impl, capitalGraphic)
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
import qualified NumberStringHud -- org.allbinary.game.ag.layer.hud.basic.NumberStringHud
import qualified Capital

data HudCapital = HudCapital
    { header_ :: JavaHeader
    , base :: Capital.Capital
    , capitalGraphic :: IORef (NumberStringHud.NumberStringHud)
    }

instance JavaNull HudCapital where
    javaNull = javaNullRecord "HudCapital"

instance JavaEquals HudCapital where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HudCapital where
    (==) = jrecordEquals

instance JavaObjectClass HudCapital where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HudCapital
newRecord_ = do
    base <- Capital.newRecord_
    let header_ = base.header_
    capitalGraphic <- newIORef javaNull
    let this = HudCapital header_ base capitalGraphic
    jregisterLevel header_ this
    jregisterMethod header_ "removeMoney" (\() -> removeMoney_impl this)
    jregisterMethod header_ "getTotalMoney" (\() -> getTotalMoney_impl this)
    jregisterMethod header_ "addMoney" (\() -> addMoney_impl this)
    pure this

initFields_ :: HudCapital -> IO ()
initFields_ this = do
    jset this.capitalGraphic (javaNull)
    pure ()

new_1 :: NumberStringHud.NumberStringHud -> IO HudCapital
new_1 moneyGraphic = do
    this <- newRecord_
    init_1 this moneyGraphic
    pure this

init_1 :: HudCapital -> NumberStringHud.NumberStringHud -> IO ()
init_1 this moneyGraphic = do
        Capital.init_ this.base
        initFields_ this
        jset (this).capitalGraphic (moneyGraphic)
        pure ()


removeMoney :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeMoney object_ a1 = jmethod object_ "removeMoney" (\() -> (removeMoney_impl (javaCast object_ :: HudCapital))) () a1

removeMoney_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeMoney_super object_ a1 = (removeMoney_impl (javaCast object_ :: HudCapital)) a1

removeMoney_impl :: HudCapital -> Int -> IO (())
removeMoney_impl this points = do
        Control.Monad.void (Capital.removeMoney_super this.base points)
        Control.Monad.void (NumberStringHud.reduce ((jget (this).capitalGraphic)) points)
        pure ()


getTotalMoney :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMoney object_ = jmethod object_ "getTotalMoney" (\() -> (getTotalMoney_impl (javaCast object_ :: HudCapital))) ()

getTotalMoney_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMoney_super object_ = (getTotalMoney_impl (javaCast object_ :: HudCapital))

getTotalMoney_impl :: HudCapital -> IO (Int)
getTotalMoney_impl this = do
        (NumberStringHud.get ((jget (this).capitalGraphic)))


addMoney :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addMoney object_ a1 = jmethod object_ "addMoney" (\() -> (addMoney_impl (javaCast object_ :: HudCapital))) () a1

addMoney_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addMoney_super object_ a1 = (addMoney_impl (javaCast object_ :: HudCapital)) a1

addMoney_impl :: HudCapital -> Int -> IO (())
addMoney_impl this points = do
        Control.Monad.void (Capital.addMoney_super this.base points)
        Control.Monad.void (NumberStringHud.add ((jget (this).capitalGraphic)) points)
        pure ()


