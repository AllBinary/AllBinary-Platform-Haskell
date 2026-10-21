{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.layer
module RTSLayer2SelectedLogHelper (module RTSLayer2SelectedLogHelper, module RTSLayer2LogHelper) where

import RTSLayer2LogHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, steeringUp, steeringUp_super, steeringUp_impl, steeringFireOrStop, steeringFireOrStop_super, steeringFireOrStop_impl, buildingAbove, buildingAbove_super, buildingAbove_impl, buildingChaseLeft, buildingChaseLeft_super, buildingChaseLeft_impl, buildingChaseRight, buildingChaseRight_super, buildingChaseRight_impl, buildingDown, buildingDown_super, buildingDown_impl, buildingChaseDown, buildingChaseDown_super, buildingChaseDown_impl, buildingChaseUp, buildingChaseUp_super, buildingChaseUp_impl, buildingLeft, buildingLeft_super, buildingLeft_impl, buildingRight, buildingRight_super, buildingRight_impl, logUtil, instanceC, tRACK_TO_FIRE_OR_MOVE, bUILDING_CHASE)
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
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified RTSLayer2LogHelper

data RTSLayer2SelectedLogHelper = RTSLayer2SelectedLogHelper
    { header_ :: JavaHeader
    , base :: RTSLayer2LogHelper.RTSLayer2LogHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , tRACK_TO_FIRE_OR_MOVE :: IORef (String)
    , bUILDING_CHASE :: IORef (String)
    }

instance JavaNull RTSLayer2SelectedLogHelper where
    javaNull = javaNullRecord "RTSLayer2SelectedLogHelper"

instance JavaEquals RTSLayer2SelectedLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayer2SelectedLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayer2SelectedLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO RTSLayer2SelectedLogHelper
newRecord_ = do
    base <- RTSLayer2LogHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tRACK_TO_FIRE_OR_MOVE <- newIORef ""
    bUILDING_CHASE <- newIORef ""
    let this = RTSLayer2SelectedLogHelper header_ base logUtil tRACK_TO_FIRE_OR_MOVE bUILDING_CHASE
    jregisterLevel header_ this
    jregisterMethod header_ "steeringUp" (\() -> steeringUp_impl this)
    jregisterMethod header_ "steeringFireOrStop" (\() -> steeringFireOrStop_impl this)
    jregisterMethod header_ "buildingAbove" (\() -> buildingAbove_impl this)
    jregisterMethod header_ "buildingChaseLeft" (\() -> buildingChaseLeft_impl this)
    jregisterMethod header_ "buildingChaseRight" (\() -> buildingChaseRight_impl this)
    jregisterMethod header_ "buildingDown" (\() -> buildingDown_impl this)
    jregisterMethod header_ "buildingChaseDown" (\() -> buildingChaseDown_impl this)
    jregisterMethod header_ "buildingChaseUp" (\() -> buildingChaseUp_impl this)
    jregisterMethod header_ "buildingLeft" (\() -> buildingLeft_impl this)
    jregisterMethod header_ "buildingRight" (\() -> buildingRight_impl this)
    pure this

initFields_ :: RTSLayer2SelectedLogHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tRACK_TO_FIRE_OR_MOVE ("trackTo:fireOrMove")
    jset this.bUILDING_CHASE ("buildingChase")
    pure ()

new_ :: IO RTSLayer2SelectedLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayer2SelectedLogHelper -> IO ()
init_ this = do
    RTSLayer2LogHelper.init_ this.base
    initFields_ this


getInstance :: IO (RTSLayer2SelectedLogHelper)
getInstance = do
        pure (RTSLayer2SelectedLogHelper.instanceC)


steeringUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp object_ a1 = jmethod object_ "steeringUp" (\() -> (steeringUp_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

steeringUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp_super object_ a1 = (steeringUp_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

steeringUp_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Up"))))) this (jget (this).tRACK_TO_FIRE_OR_MOVE))
        pure ()


steeringFireOrStop :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop object_ a1 = jmethod object_ "steeringFireOrStop" (\() -> (steeringFireOrStop_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

steeringFireOrStop_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop_super object_ a1 = (steeringFireOrStop_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

steeringFireOrStop_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Fire/All Stop"))))) this (jget (this).tRACK_TO_FIRE_OR_MOVE))
        pure ()


buildingAbove :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove object_ a1 = jmethod object_ "buildingAbove" (\() -> (buildingAbove_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

buildingAbove_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove_super object_ a1 = (buildingAbove_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

buildingAbove_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " Building Above"))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingChaseLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft object_ a1 a2 = jmethod object_ "buildingChaseLeft" (\() -> (buildingChaseLeft_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1 a2

buildingChaseLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft_super object_ a1 a2 = (buildingChaseLeft_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1 a2

buildingChaseLeft_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft_impl this pathFindingLayerInterface angle = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Going Left: "))) angle))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingChaseRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight object_ a1 a2 = jmethod object_ "buildingChaseRight" (\() -> (buildingChaseRight_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1 a2

buildingChaseRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight_super object_ a1 a2 = (buildingChaseRight_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1 a2

buildingChaseRight_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight_impl this pathFindingLayerInterface angle = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Going Right: "))) angle))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown object_ a1 = jmethod object_ "buildingDown" (\() -> (buildingDown_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

buildingDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown_super object_ a1 = (buildingDown_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

buildingDown_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " Building Below"))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingChaseDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown object_ a1 a2 = jmethod object_ "buildingChaseDown" (\() -> (buildingChaseDown_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1 a2

buildingChaseDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown_super object_ a1 a2 = (buildingChaseDown_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1 a2

buildingChaseDown_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown_impl this pathFindingLayerInterface angle = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Going Down: "))) angle))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingChaseUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp object_ a1 a2 = jmethod object_ "buildingChaseUp" (\() -> (buildingChaseUp_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1 a2

buildingChaseUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp_super object_ a1 a2 = (buildingChaseUp_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1 a2

buildingChaseUp_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp_impl this pathFindingLayerInterface angle = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " steering - Going Up: "))) angle))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingLeft object_ a1 = jmethod object_ "buildingLeft" (\() -> (buildingLeft_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

buildingLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingLeft_super object_ a1 = (buildingLeft_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

buildingLeft_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingLeft_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " Building Left"))))) this (jget (this).bUILDING_CHASE))
        pure ()


buildingRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingRight object_ a1 = jmethod object_ "buildingRight" (\() -> (buildingRight_impl (javaCast object_ :: RTSLayer2SelectedLogHelper))) () a1

buildingRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingRight_super object_ a1 = (buildingRight_impl (javaCast object_ :: RTSLayer2SelectedLogHelper)) a1

buildingRight_impl :: RTSLayer2SelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingRight_impl this pathFindingLayerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName pathFindingLayerInterface))))) " Building Right"))))) this (jget (this).bUILDING_CHASE))
        pure ()


