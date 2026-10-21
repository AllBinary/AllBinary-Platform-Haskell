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
-- package org.allbinary.game.ag.layer.pickup.health
module HealLayer (module HealLayer, module AllBinaryLayer) where

import AllBinaryLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, visit, visit_super, visit_impl)
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
import qualified LogUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified HealthInterface -- org.allbinary.game.health.HealthInterface
import qualified HealthVisitorInterface -- org.allbinary.game.health.HealthVisitorInterface
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition

-- implements HealthVisitorInterface
data HealLayer = HealLayer
    { header_ :: JavaHeader
    , base :: AllBinaryLayer.AllBinaryLayer
    }

instance JavaNull HealLayer where
    javaNull = javaNullRecord "HealLayer"

instance JavaEquals HealLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealLayer where
    (==) = jrecordEquals

instance JavaObjectClass HealLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealLayer
newRecord_ = do
    base <- AllBinaryLayer.newRecord_
    let header_ = base.header_
    let this = HealLayer header_ base
    jregisterLevel header_ this
    HealthVisitorInterface.registerInterface_ header_
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: HealLayer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HealLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealLayer -> IO ()
init_ this = do
        AllBinaryLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 0 0)) (jio (ViewPosition.getInstanceD))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HealLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HealLayer)) a1

paint_impl :: HealLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


visit :: (JavaObjectClass this_) => this_ -> HealthInterface.HealthInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: HealLayer))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> HealthInterface.HealthInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: HealLayer)) a1

visit_impl :: HealLayer -> HealthInterface.HealthInterface -> IO (())
visit_impl this healthInterface = do
        if (jio (HealthInterface.isAlive healthInterface)) then do
            Control.Monad.void (HealthInterface.healMax healthInterface)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Heal attempt on dead: Does not currently occur" this "visit")
        pure ()


