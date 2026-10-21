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
-- package org.allbinary.game.health
module HealthBarAnimation (module HealthBarAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onHealthChange, onHealthChange_super, onHealthChange_impl, getY, getY_super, getY_impl, basicColorFactory, x2, thickness, location, allbinaryLayer)
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
import qualified BasicColor -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data HealthBarAnimation = HealthBarAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , x2 :: IORef (Int)
    , thickness :: IORef (Int)
    , location :: IORef (Int)
    , allbinaryLayer :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull HealthBarAnimation where
    javaNull = javaNullRecord "HealthBarAnimation"

instance JavaEquals HealthBarAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBarAnimation where
    (==) = jrecordEquals

instance JavaObjectClass HealthBarAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthBarAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    basicColorFactory <- newIORef javaNull
    x2 <- newIORef 0
    thickness <- newIORef 0
    location <- newIORef 0
    allbinaryLayer <- newIORef javaNull
    let this = HealthBarAnimation header_ base basicColorFactory x2 thickness location allbinaryLayer
    jregisterLevel header_ this
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    pure this

initFields_ :: HealthBarAnimation -> IO ()
initFields_ this = do
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.x2 (0)
    jset this.thickness (0)
    jset this.location (0)
    jset this.allbinaryLayer (javaNull)
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> Int -> IO HealthBarAnimation
new_2 layerInterface location = do
    this <- newRecord_
    init_2 this layerInterface location
    pure this

init_2 :: HealthBarAnimation -> AllBinaryLayer.AllBinaryLayer -> Int -> IO ()
init_2 this layerInterface location = do
        Animation.init_ this.base
        initFields_ this
        jset (this).allbinaryLayer (layerInterface)
        jset (this).location (location)
        basicHudFactory <- (BasicHudFactory.getInstance)
        when (((jget (this).location) /= (jget (basicHudFactory).tOPLEFT)) && ((jget (this).location) /= (jget (basicHudFactory).bOTTOMLEFT))) $ do
            javaThrow ((JavaException "Exception" "Location Not Valid"))
        if ((jio (AllBinaryLayer.getWidth layerInterface)) > 40) then do
            jset (this).thickness (3)
        else if ((jio (AllBinaryLayer.getWidth layerInterface)) > 20) then do
            jset (this).thickness (2)
        else do
            jset (this).thickness (1)
        pure ()


onHealthChange :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onHealthChange object_ a1 = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthBarAnimation))) () a1

onHealthChange_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onHealthChange_super object_ a1 = (onHealthChange_impl (javaCast object_ :: HealthBarAnimation)) a1

onHealthChange_impl :: HealthBarAnimation -> Int -> IO (())
onHealthChange_impl this newX2 = do
        jset (this).x2 (newX2)
        let quarter = (((jio (AllBinaryLayer.getWidth ((jget (this).allbinaryLayer)))) `Data.Bits.shiftR` 2))
        if ((jget (this).x2) > (quarter * 3)) then do
            jset (this).base.basicColor ((jget ((jget (this).basicColorFactory)).gREEN))
            assignedValue <- (BasicColor.intValue ((jget (this).base.basicColor)))
            jset (this).base.colorP (assignedValue)
        else if ((jget (this).x2) > (quarter * 2)) then do
            jset (this).base.basicColor ((jget ((jget (this).basicColorFactory)).yELLOW))
            assignedValue <- (BasicColor.intValue ((jget (this).base.basicColor)))
            jset (this).base.colorP (assignedValue)
        else if ((jget (this).x2) > quarter) then do
            jset (this).base.basicColor ((jget ((jget (this).basicColorFactory)).oRANGE))
            assignedValue <- (BasicColor.intValue ((jget (this).base.basicColor)))
            jset (this).base.colorP (assignedValue)
        else do
            jset (this).base.basicColor ((jget ((jget (this).basicColorFactory)).rED))
            assignedValue <- (BasicColor.intValue ((jget (this).base.basicColor)))
            jset (this).base.colorP (assignedValue)
        pure ()


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: HealthBarAnimation))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: HealthBarAnimation))

getY_impl :: HealthBarAnimation -> IO (Int)
getY_impl this = do
    javaCatchReturn $ do
        basicHudFactory <- (BasicHudFactory.getInstance)
        if ((jget (this).location) == (jget (basicHudFactory).tOPLEFT)) then do
            javaReturn (((jio (ViewPositionBase.getY ((jio (AllBinaryLayer.getViewPosition ((jget (this).allbinaryLayer))))))) - 4))
        else when ((jget (this).location) == (jget (basicHudFactory).bOTTOMLEFT)) $ do
            javaReturn (((jio (ViewPositionBase.getY2 ((jio (AllBinaryLayer.getViewPosition ((jget (this).allbinaryLayer))))))) + 4))
        pure ((Prelude.negate 1))


