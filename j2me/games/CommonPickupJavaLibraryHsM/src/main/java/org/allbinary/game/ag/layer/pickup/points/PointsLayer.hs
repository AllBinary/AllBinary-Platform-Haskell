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
-- package org.allbinary.game.ag.layer.pickup.points
module PointsLayer (module PointsLayer, module AllBinaryLayer) where

import AllBinaryLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, visit, visit_super, visit_impl, points)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition

data PointsLayer = PointsLayer
    { header_ :: JavaHeader
    , base :: AllBinaryLayer.AllBinaryLayer
    , points :: IORef (Int)
    }

instance JavaNull PointsLayer where
    javaNull = javaNullRecord "PointsLayer"

instance JavaEquals PointsLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsLayer where
    (==) = jrecordEquals

instance JavaObjectClass PointsLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PointsLayer
newRecord_ = do
    base <- AllBinaryLayer.newRecord_
    let header_ = base.header_
    points <- newIORef 0
    let this = PointsLayer header_ base points
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: PointsLayer -> IO ()
initFields_ this = do
    jset this.points (0)
    pure ()

new_1 :: Int -> IO PointsLayer
new_1 points = do
    this <- newRecord_
    init_1 this points
    pure this

init_1 :: PointsLayer -> Int -> IO ()
init_1 this points = do
        AllBinaryLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 0 0)) (jio (ViewPosition.getInstanceD))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).points (points)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PointsLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PointsLayer)) a1

paint_impl :: PointsLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


visit :: (JavaObjectClass this_) => this_ -> ScoreableInterface.ScoreableInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: PointsLayer))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> ScoreableInterface.ScoreableInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: PointsLayer)) a1

visit_impl :: PointsLayer -> ScoreableInterface.ScoreableInterface -> IO (())
visit_impl this scoreableInterface = do
        Control.Monad.void (ScoreableInterface.addPoints scoreableInterface (jget (this).points))
        pure ()


