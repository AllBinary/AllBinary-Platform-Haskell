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
-- package org.allbinary.game.ag.layer.hud.basic.score
module ScoreableAddOnlyForHud (module ScoreableAddOnlyForHud, module Scoreable) where

import Scoreable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, removePoints, removePoints_super, removePoints_impl, addPoints, addPoints_super, addPoints_impl, getScoreHudWidget, getScoreHudWidget_super, getScoreHudWidget_impl, scoreHudWidget)
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
import qualified ScoreHudWidget -- same package or java.lang
import qualified Scoreable -- org.allbinary.game.score.Scoreable

data ScoreableAddOnlyForHud = ScoreableAddOnlyForHud
    { header_ :: JavaHeader
    , base :: Scoreable.Scoreable
    , scoreHudWidget :: IORef (ScoreHudWidget.ScoreHudWidget)
    }

instance JavaNull ScoreableAddOnlyForHud where
    javaNull = javaNullRecord "ScoreableAddOnlyForHud"

instance JavaEquals ScoreableAddOnlyForHud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScoreableAddOnlyForHud where
    (==) = jrecordEquals

instance JavaObjectClass ScoreableAddOnlyForHud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScoreableAddOnlyForHud
newRecord_ = do
    base <- Scoreable.newRecord_
    let header_ = base.header_
    scoreHudWidget <- newIORef javaNull
    let this = ScoreableAddOnlyForHud header_ base scoreHudWidget
    jregisterLevel header_ this
    jregisterMethod header_ "removePoints" (\() -> removePoints_impl this)
    jregisterMethod header_ "addPoints" (\() -> addPoints_impl this)
    jregisterMethod header_ "getScoreHudWidget" (\() -> getScoreHudWidget_impl this)
    pure this

initFields_ :: ScoreableAddOnlyForHud -> IO ()
initFields_ this = do
    jset this.scoreHudWidget (javaNull)
    pure ()

new_1 :: ScoreHudWidget.ScoreHudWidget -> IO ScoreableAddOnlyForHud
new_1 scoreVectorGraphic = do
    this <- newRecord_
    init_1 this scoreVectorGraphic
    pure this

init_1 :: ScoreableAddOnlyForHud -> ScoreHudWidget.ScoreHudWidget -> IO ()
init_1 this scoreVectorGraphic = do
        Scoreable.init_1 this.base (0)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).scoreHudWidget (scoreVectorGraphic)
        Control.Monad.void (ScoreHudWidget.set ((jio (ScoreableAddOnlyForHud.getScoreHudWidget this))) 0)
        pure ()


removePoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints object_ a1 = jmethod object_ "removePoints" (\() -> (removePoints_impl (javaCast object_ :: ScoreableAddOnlyForHud))) () a1

removePoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints_super object_ a1 = (removePoints_impl (javaCast object_ :: ScoreableAddOnlyForHud)) a1

removePoints_impl :: ScoreableAddOnlyForHud -> Int -> IO (())
removePoints_impl this points = do
        pure ()


addPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: ScoreableAddOnlyForHud))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: ScoreableAddOnlyForHud)) a1

addPoints_impl :: ScoreableAddOnlyForHud -> Int -> IO (())
addPoints_impl this points = do
        Control.Monad.void (Scoreable.addPoints_super this.base points)
        Control.Monad.void (ScoreHudWidget.add ((jio (ScoreableAddOnlyForHud.getScoreHudWidget this))) points)
        pure ()


getScoreHudWidget :: (JavaObjectClass this_) => this_ -> IO (ScoreHudWidget.ScoreHudWidget)
getScoreHudWidget object_ = jmethod object_ "getScoreHudWidget" (\() -> (getScoreHudWidget_impl (javaCast object_ :: ScoreableAddOnlyForHud))) ()

getScoreHudWidget_super :: (JavaObjectClass this_) => this_ -> IO (ScoreHudWidget.ScoreHudWidget)
getScoreHudWidget_super object_ = (getScoreHudWidget_impl (javaCast object_ :: ScoreableAddOnlyForHud))

getScoreHudWidget_impl :: ScoreableAddOnlyForHud -> IO (ScoreHudWidget.ScoreHudWidget)
getScoreHudWidget_impl this = do
        pure ((jget (this).scoreHudWidget))


