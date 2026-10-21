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
module ScoreHudWidget (module ScoreHudWidget, module NumberStringHud) where

import NumberStringHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NumberStringHud -- org.allbinary.game.ag.layer.hud.basic.NumberStringHud
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory

data ScoreHudWidget = ScoreHudWidget
    { header_ :: JavaHeader
    , base :: NumberStringHud.NumberStringHud
    }

instance JavaNull ScoreHudWidget where
    javaNull = javaNullRecord "ScoreHudWidget"

instance JavaEquals ScoreHudWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScoreHudWidget where
    (==) = jrecordEquals

instance JavaObjectClass ScoreHudWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScoreHudWidget
newRecord_ = do
    base <- NumberStringHud.newRecord_
    let header_ = base.header_
    let this = ScoreHudWidget header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    pure this

initFields_ :: ScoreHudWidget -> IO ()
initFields_ this = do
    pure ()


-- throws Exception
getInstance :: Int -> Int -> Int -> IO (ScoreHudWidget)
getInstance maxscore location direction = do
        (new_5 maxscore location direction 2 (jget ((jio (BasicColorFactory.getInstance))).gREY))

new_5 :: Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ScoreHudWidget
new_5 maxscore location direction bufferZone basicColor = do
    this <- newRecord_
    init_5 this maxscore location direction bufferZone basicColor
    pure this

init_5 :: ScoreHudWidget -> Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_5 this maxscore location direction bufferZone basicColor = do
        NumberStringHud.init_6 this.base ("Pts ") (maxscore) (location) (direction) (bufferZone) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).base.base.updateMaxHeight (14)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: ScoreHudWidget))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: ScoreHudWidget)) a1

updateMeasurement_impl :: ScoreHudWidget -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).base.base.updateMaxWidth (((jio (Font.getSize font)) * 5))
        Control.Monad.void (NumberStringHud.updateMeasurement_super this.base graphics)
        pure ()


