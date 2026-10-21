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
-- package org.allbinary.game.ai.path
module BasicDirectionAIHelper where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified AngleIncrementInfo -- org.allbinary.math.AngleIncrementInfo
import qualified AngleInfo -- org.allbinary.math.AngleInfo

data BasicDirectionAIHelper = BasicDirectionAIHelper
    { header_ :: JavaHeader
    , name :: IORef (String)
    , angleInfo :: IORef (AngleInfo.AngleInfo)
    }

instance JavaNull BasicDirectionAIHelper where
    javaNull = javaNullRecord "BasicDirectionAIHelper"

instance JavaEquals BasicDirectionAIHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicDirectionAIHelper where
    (==) = jrecordEquals

instance JavaObjectClass BasicDirectionAIHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicDirectionAIHelper
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    angleInfo <- newIORef javaNull
    let this = BasicDirectionAIHelper header_ name angleInfo
    jregisterLevel header_ this
    jregisterMethod header_ "turnAI" (\() -> turnAI_impl this)
    jregisterMethod header_ "getAIKeyPressed" (\() -> getAIKeyPressed_impl this)
    jregisterMethod header_ "getAIKeyPressedFromDirection" (\() -> getAIKeyPressedFromDirection_impl this)
    jregisterMethod header_ "getAngleInfoP" (\() -> getAngleInfoP_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: BasicDirectionAIHelper -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.angleInfo (javaNull)
    pure ()

new_2 :: String -> AngleInfo.AngleInfo -> IO BasicDirectionAIHelper
new_2 name angleInfo = do
    this <- newRecord_
    init_2 this name angleInfo
    pure this

init_2 :: BasicDirectionAIHelper -> String -> AngleInfo.AngleInfo -> IO ()
init_2 this name angleInfo = do
        initFields_ this
        jset (this).name (name)
        jset (this).angleInfo (angleInfo)
        pure ()


turnAI :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
turnAI object_ a1 = jmethod object_ "turnAI" (\() -> (turnAI_impl (javaCast object_ :: BasicDirectionAIHelper))) () a1

turnAI_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
turnAI_super object_ a1 = (turnAI_impl (javaCast object_ :: BasicDirectionAIHelper)) a1

turnAI_impl :: BasicDirectionAIHelper -> Int -> IO (Int)
turnAI_impl this frame = do
        keyDirection <- newIORef ((Prelude.negate 1))
        directionAngle <- (AngleIncrementInfo.getFrameAngle ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).angleInfo))))) frame)
        angle <- (AngleInfo.getAngle ((jget (this).angleInfo)))
        let degrees = (Prelude.abs (directionAngle - (Prelude.fromIntegral angle)))
        if (degrees < 180) then do
            if ((Prelude.fromIntegral angle) > directionAngle) then do
                jset keyDirection (Canvas.lEFT)
            else when ((Prelude.fromIntegral angle) < directionAngle) $ do
                jset keyDirection (Canvas.rIGHT)
        else do
            if ((Prelude.fromIntegral angle) > directionAngle) then do
                jset keyDirection (Canvas.rIGHT)
            else when ((Prelude.fromIntegral angle) < directionAngle) $ do
                jset keyDirection (Canvas.lEFT)
        pure ((jget keyDirection))


getAIKeyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAIKeyPressed object_ a1 = jmethod object_ "getAIKeyPressed" (\() -> (getAIKeyPressed_impl (javaCast object_ :: BasicDirectionAIHelper))) () a1

getAIKeyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAIKeyPressed_super object_ a1 = (getAIKeyPressed_impl (javaCast object_ :: BasicDirectionAIHelper)) a1

getAIKeyPressed_impl :: BasicDirectionAIHelper -> Int -> IO (Int)
getAIKeyPressed_impl this frame = do
    javaCatchReturn $ do
        let angle = (Prelude.fromIntegral (jio (AngleIncrementInfo.getFrameAngle ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).angleInfo))))) (frame))))
        if ((jio (AngleInfo.getAngle ((jget (this).angleInfo)))) /= angle) then do
            javaReturn =<< (BasicDirectionAIHelper.turnAI this (frame))
        else do
            javaReturn (Canvas.uP)


getAIKeyPressedFromDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Int)
getAIKeyPressedFromDirection object_ a1 = jmethod object_ "getAIKeyPressedFromDirection" (\() -> (getAIKeyPressedFromDirection_impl (javaCast object_ :: BasicDirectionAIHelper))) () a1

getAIKeyPressedFromDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (Int)
getAIKeyPressedFromDirection_super object_ a1 = (getAIKeyPressedFromDirection_impl (javaCast object_ :: BasicDirectionAIHelper)) a1

getAIKeyPressedFromDirection_impl :: BasicDirectionAIHelper -> Direction.Direction -> IO (Int)
getAIKeyPressedFromDirection_impl this geographicMapDirectionData = do
        keyDirection <- newIORef ((Prelude.negate 1))
        angleIncrementInfo <- (AngleInfo.getAngleIncrementInfo ((jget (this).angleInfo)))
        directionFactory <- (DirectionFactory.getInstance)
        if (geographicMapDirectionData == (jget (directionFactory).dOWN)) then do
            assignedValue <- (BasicDirectionAIHelper.getAIKeyPressed this (jget (angleIncrementInfo).dOWN_FRAME))
            jset keyDirection (assignedValue)
        else if (geographicMapDirectionData == (jget (directionFactory).uP)) then do
            assignedValue <- (BasicDirectionAIHelper.getAIKeyPressed this (jget (angleIncrementInfo).uP_FRAME))
            jset keyDirection (assignedValue)
        else if (geographicMapDirectionData == (jget (directionFactory).lEFT)) then do
            assignedValue <- (BasicDirectionAIHelper.getAIKeyPressed this (jget (angleIncrementInfo).lEFT_FRAME))
            jset keyDirection (assignedValue)
        else when (geographicMapDirectionData == (jget (directionFactory).rIGHT)) $ do
            assignedValue <- (BasicDirectionAIHelper.getAIKeyPressed this (jget (angleIncrementInfo).rIGHT_FRAME))
            jset keyDirection (assignedValue)
        pure ((jget keyDirection))


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: BasicDirectionAIHelper))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: BasicDirectionAIHelper))

getAngleInfoP_impl :: BasicDirectionAIHelper -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = do
        pure ((jget (this).angleInfo))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicDirectionAIHelper))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicDirectionAIHelper))

getName_impl :: BasicDirectionAIHelper -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


