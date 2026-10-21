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
module RTSLayer2LogHelper where

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

data RTSLayer2LogHelper = RTSLayer2LogHelper
    { header_ :: JavaHeader
    }

instance JavaNull RTSLayer2LogHelper where
    javaNull = javaNullRecord "RTSLayer2LogHelper"

instance JavaEquals RTSLayer2LogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayer2LogHelper where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayer2LogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSLayer2LogHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = RTSLayer2LogHelper header_
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

initFields_ :: RTSLayer2LogHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RTSLayer2LogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayer2LogHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RTSLayer2LogHelper)
getInstance = do
        pure (RTSLayer2LogHelper.instance_)


steeringUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp object_ a1 = jmethod object_ "steeringUp" (\() -> (steeringUp_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1

steeringUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp_super object_ a1 = (steeringUp_impl (javaCast object_ :: RTSLayer2LogHelper)) a1

steeringUp_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringUp_impl this pathFindingLayerInterface = do
        pure ()


steeringFireOrStop :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop object_ a1 = jmethod object_ "steeringFireOrStop" (\() -> (steeringFireOrStop_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1

steeringFireOrStop_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop_super object_ a1 = (steeringFireOrStop_impl (javaCast object_ :: RTSLayer2LogHelper)) a1

steeringFireOrStop_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
steeringFireOrStop_impl this pathFindingLayerInterface = do
        pure ()


buildingAbove :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove object_ a1 = jmethod object_ "buildingAbove" (\() -> (buildingAbove_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1

buildingAbove_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove_super object_ a1 = (buildingAbove_impl (javaCast object_ :: RTSLayer2LogHelper)) a1

buildingAbove_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingAbove_impl this pathFindingLayerInterface = do
        pure ()


buildingChaseLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft object_ a1 a2 = jmethod object_ "buildingChaseLeft" (\() -> (buildingChaseLeft_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1 a2

buildingChaseLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft_super object_ a1 a2 = (buildingChaseLeft_impl (javaCast object_ :: RTSLayer2LogHelper)) a1 a2

buildingChaseLeft_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseLeft_impl this pathFindingLayerInterface angle = do
        pure ()


buildingChaseRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight object_ a1 a2 = jmethod object_ "buildingChaseRight" (\() -> (buildingChaseRight_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1 a2

buildingChaseRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight_super object_ a1 a2 = (buildingChaseRight_impl (javaCast object_ :: RTSLayer2LogHelper)) a1 a2

buildingChaseRight_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseRight_impl this pathFindingLayerInterface angle = do
        pure ()


buildingDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown object_ a1 = jmethod object_ "buildingDown" (\() -> (buildingDown_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1

buildingDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown_super object_ a1 = (buildingDown_impl (javaCast object_ :: RTSLayer2LogHelper)) a1

buildingDown_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
buildingDown_impl this pathFindingLayerInterface = do
        pure ()


buildingChaseDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown object_ a1 a2 = jmethod object_ "buildingChaseDown" (\() -> (buildingChaseDown_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1 a2

buildingChaseDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown_super object_ a1 a2 = (buildingChaseDown_impl (javaCast object_ :: RTSLayer2LogHelper)) a1 a2

buildingChaseDown_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseDown_impl this pathFindingLayerInterface angle = do
        pure ()


buildingChaseUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp object_ a1 a2 = jmethod object_ "buildingChaseUp" (\() -> (buildingChaseUp_impl (javaCast object_ :: RTSLayer2LogHelper))) () a1 a2

buildingChaseUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp_super object_ a1 a2 = (buildingChaseUp_impl (javaCast object_ :: RTSLayer2LogHelper)) a1 a2

buildingChaseUp_impl :: RTSLayer2LogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> IO (())
buildingChaseUp_impl this pathFindingLayerInterface angle = do
        pure ()


buildingLeft :: (JavaObjectClass this_) => this_ -> IO (())
buildingLeft object_ = jmethod object_ "buildingLeft" (\() -> (buildingLeft_impl (javaCast object_ :: RTSLayer2LogHelper))) ()

buildingLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
buildingLeft_super object_ = (buildingLeft_impl (javaCast object_ :: RTSLayer2LogHelper))

buildingLeft_impl :: RTSLayer2LogHelper -> IO (())
buildingLeft_impl this = do
        pure ()


buildingRight :: (JavaObjectClass this_) => this_ -> IO (())
buildingRight object_ = jmethod object_ "buildingRight" (\() -> (buildingRight_impl (javaCast object_ :: RTSLayer2LogHelper))) ()

buildingRight_super :: (JavaObjectClass this_) => this_ -> IO (())
buildingRight_super object_ = (buildingRight_impl (javaCast object_ :: RTSLayer2LogHelper))

buildingRight_impl :: RTSLayer2LogHelper -> IO (())
buildingRight_impl this = do
        pure ()


