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
-- package org.allbinary.game.layer.building
module BuildingInfoHudPaintable (module BuildingInfoHudPaintable, module SelectionHudPaintable) where

import SelectionHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, paint, paint_super, paint_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, setRtsLayer, setRtsLayer_super, setRtsLayer_impl, logUtil, instance_, hEALTH, productivityHud, efficiencyHud, healthHud, maxHealthHud, rtsLayer, currentHealth)
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
import qualified BuildingLayer -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NumberStringHud -- org.allbinary.game.ag.layer.hud.basic.NumberStringHud
import qualified NumberStringHudFactory -- org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory
import qualified SelectionHudPaintable -- org.allbinary.game.layer.SelectionHudPaintable
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified MathUtil -- org.allbinary.logic.math.MathUtil

data BuildingInfoHudPaintable = BuildingInfoHudPaintable
    { header_ :: JavaHeader
    , base :: SelectionHudPaintable.SelectionHudPaintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , hEALTH :: IORef (String)
    , productivityHud :: IORef (NumberStringHud.NumberStringHud)
    , efficiencyHud :: IORef (NumberStringHud.NumberStringHud)
    , healthHud :: IORef (NumberStringHud.NumberStringHud)
    , maxHealthHud :: IORef (NumberStringHud.NumberStringHud)
    , rtsLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , currentHealth :: IORef (Int)
    }

instance JavaNull BuildingInfoHudPaintable where
    javaNull = javaNullRecord "BuildingInfoHudPaintable"

instance JavaEquals BuildingInfoHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingInfoHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass BuildingInfoHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO BuildingInfoHudPaintable
newRecord_ = do
    base <- SelectionHudPaintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    hEALTH <- newIORef ""
    productivityHud <- newIORef javaNull
    efficiencyHud <- newIORef javaNull
    healthHud <- newIORef javaNull
    maxHealthHud <- newIORef javaNull
    rtsLayer <- newIORef javaNull
    currentHealth <- newIORef 0
    let this = BuildingInfoHudPaintable header_ base logUtil hEALTH productivityHud efficiencyHud healthHud maxHealthHud rtsLayer currentHealth
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "setRtsLayer" (\() -> setRtsLayer_impl this)
    pure this

initFields_ :: BuildingInfoHudPaintable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hEALTH ("Health:")
    jset this.productivityHud (javaNull)
    jset this.efficiencyHud (javaNull)
    jset this.healthHud (javaNull)
    jset this.maxHealthHud (javaNull)
    jset this.rtsLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    jset this.currentHealth (0)
    pure ()


getInstance :: IO (BuildingInfoHudPaintable)
getInstance = do
        pure (BuildingInfoHudPaintable.instance_)

new_ :: IO BuildingInfoHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BuildingInfoHudPaintable -> IO ()
init_ this = do
        SelectionHudPaintable.init_ this.base
        initFields_ this
        numberStringHudFactory <- (NumberStringHudFactory.getInstance)
        productivityHud <- newIORef ((jget (numberStringHudFactory).nULL_NUMBER_STRING_HUD))
        efficiencyHud <- newIORef ((jget (numberStringHudFactory).nULL_NUMBER_STRING_HUD))
        healthHud <- newIORef ((jget (numberStringHudFactory).nULL_NUMBER_STRING_HUD))
        maxHealthHud <- newIORef ((jget (numberStringHudFactory).nULL_NUMBER_STRING_HUD))
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            index <- newIORef (0)
            basicHudFactory <- (BasicHudFactory.getInstance)
            basicColor <- (SelectionHudPaintable.getBasicColorP this)
            let textX = (jget (this).base.textX)
            let y = (jget (this).base.y)
            let firstIndex = (jget index)
            -- Java nested class ProductivityNumberStringHud: move it to its own module

            assignedValue <- (fmap (\value_ -> javaCast value_ :: NumberStringHud.NumberStringHud) (ProductivityNumberStringHud.new_))
            jset productivityHud (assignedValue)
            jset index ((jget index) + 1)
            let secondIndex = (jget index)
            -- Java nested class EfficiencyNumberStringHud: move it to its own module

            assignedValue <- (fmap (\value_ -> javaCast value_ :: NumberStringHud.NumberStringHud) (EfficiencyNumberStringHud.new_))
            jset efficiencyHud (assignedValue)
            jset index ((jget index) + 1)
            let hEALTH = (jget (this).hEALTH)
            let thirdIndex = (jget index)
            -- Java nested class HealthNumberStringHud: move it to its own module

            let totalLength = ((Prelude.length hEALTH) + 1)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: NumberStringHud.NumberStringHud) (HealthNumberStringHud.new_))
            jset healthHud (assignedValue)
            let fourthIndex = (jget index)
            -- Java nested class MaxHealthNumberStringHud: move it to its own module

            assignedValue <- (fmap (\value_ -> javaCast value_ :: NumberStringHud.NumberStringHud) (MaxHealthNumberStringHud.new_))
            jset maxHealthHud (assignedValue)
        jset (this).productivityHud ((jget productivityHud))
        jset (this).efficiencyHud ((jget efficiencyHud))
        jset (this).healthHud ((jget healthHud))
        jset (this).maxHealthHud ((jget maxHealthHud))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: BuildingInfoHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: BuildingInfoHudPaintable)) a1

updateMeasurement_impl :: BuildingInfoHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        let totalLength = ((Prelude.length (jget (this).hEALTH)) + (jio (MathUtil.getTotalDigits ((jio (MathUtil.getInstance))) (jget (this).currentHealth))))
        Control.Monad.void (NumberStringHud.setX ((jget (this).maxHealthHud)) ((jget (this).base.textX) + (jio (MyFontProcessor.defaultStringWidth font totalLength))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).base.myFontProcessor (assignedValue)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: BuildingInfoHudPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: BuildingInfoHudPaintable)) a1

setBasicColorP_impl :: BuildingInfoHudPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        Control.Monad.void (SelectionHudPaintable.setBasicColorP_super this.base basicColor)
        Control.Monad.void (NumberStringHud.setBasicColorP ((jget (this).productivityHud)) basicColor)
        Control.Monad.void (NumberStringHud.setBasicColorP ((jget (this).efficiencyHud)) basicColor)
        Control.Monad.void (NumberStringHud.setBasicColorP ((jget (this).healthHud)) basicColor)
        Control.Monad.void (NumberStringHud.setBasicColorP ((jget (this).maxHealthHud)) basicColor)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BuildingInfoHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BuildingInfoHudPaintable)) a1

paint_impl :: BuildingInfoHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.paint_super this.base graphics)
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        Control.Monad.void (NumberStringHud.paint ((jget (this).productivityHud)) graphics)
        Control.Monad.void (NumberStringHud.paint ((jget (this).efficiencyHud)) graphics)
        Control.Monad.void (NumberStringHud.paint ((jget (this).healthHud)) graphics)
        Control.Monad.void (NumberStringHud.paint ((jget (this).maxHealthHud)) graphics)
        Control.Monad.void (Animation.paintXY ((jio (SelectionHudPaintable.getAnimationInterface this))) graphics (jget (this).base.imageX) (jget (this).base.y))
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: BuildingInfoHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: BuildingInfoHudPaintable))

updateSelectionInfo_impl :: BuildingInfoHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        let buildingLayer = (javaCast (jget (this).rtsLayer) :: BuildingLayer.BuildingLayer)
        Control.Monad.void (SelectionHudPaintable.setName this (jio (BuildingLayer.getName buildingLayer)))
        Control.Monad.void (SelectionHudPaintable.setAnimationInterface this (jio (BuildingLayer.getVerticleBuildAnimationInterface buildingLayer)))
        Control.Monad.void (NumberStringHud.set ((jget (this).productivityHud)) (jio (BuildingLayer.getProductivity buildingLayer)))
        Control.Monad.void (NumberStringHud.set ((jget (this).efficiencyHud)) ((jio (BuildingLayer.getEfficiency buildingLayer)) `quot` 100))
        assignedValue <- (Health.getHealth ((jio (BuildingLayer.getHealthInterface buildingLayer))))
        jset (this).currentHealth (assignedValue)
        Control.Monad.void (NumberStringHud.set ((jget (this).healthHud)) (jget (this).currentHealth))
        jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        Control.Monad.void (NumberStringHud.set ((jget (this).maxHealthHud)) (jio (Health.getMaxHealth ((jio (BuildingLayer.getHealthInterface buildingLayer))))))
        pure ()


setRtsLayer :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer object_ a1 = jmethod object_ "setRtsLayer" (\() -> (setRtsLayer_impl (javaCast object_ :: BuildingInfoHudPaintable))) () a1

setRtsLayer_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer_super object_ a1 = (setRtsLayer_impl (javaCast object_ :: BuildingInfoHudPaintable)) a1

setRtsLayer_impl :: BuildingInfoHudPaintable -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer_impl this rtsLayer = do
        jset (this).rtsLayer (rtsLayer)
        pure ()


