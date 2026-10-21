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
-- package org.allbinary.game.combat.damage
module PtsDamageFloaters (module PtsDamageFloaters, module DamageFloaters) where

import DamageFloaters hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, add, add_super, add_impl, paint, paint_super, paint_impl, basicSetColorUtil, layerInterface, lastDamage, lastDamageString, lastDamageStringSizeArray, circularIndexUtil, primitiveLongUtil, basicColorArrayIndexer, myRandomFactory)
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
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorArrayIndexer -- org.allbinary.graphics.color.BasicColorArrayIndexer
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified CharArrayFactory -- org.allbinary.logic.java.character.CharArrayFactory
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified DamageFloaters

data PtsDamageFloaters = PtsDamageFloaters
    { header_ :: JavaHeader
    , base :: DamageFloaters.DamageFloaters
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , layerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , lastDamage :: IORef (JavaArray (Int))
    , lastDamageString :: IORef (JavaArray (JavaArray (Char)))
    , lastDamageStringSizeArray :: IORef (JavaArray (Int))
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    }

instance JavaNull PtsDamageFloaters where
    javaNull = javaNullRecord "PtsDamageFloaters"

instance JavaEquals PtsDamageFloaters where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PtsDamageFloaters where
    (==) = jrecordEquals

instance JavaObjectClass PtsDamageFloaters where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE basicColorArrayIndexer #-}
basicColorArrayIndexer = unsafePerformIO ((BasicColorArrayIndexer.new_1 (jarrayFromList [(jget ((jio (BasicColorFactory.getInstance))).wHITE), (jget ((jio (BasicColorFactory.getInstance))).rED), (jget ((jio (BasicColorFactory.getInstance))).yELLOW), (jget ((jio (BasicColorFactory.getInstance))).bLUE)])))

newRecord_ :: IO PtsDamageFloaters
newRecord_ = do
    base <- DamageFloaters.newRecord_
    let header_ = base.header_
    basicSetColorUtil <- newIORef javaNull
    layerInterface <- newIORef javaNull
    lastDamage <- newIORef javaNull
    lastDamageString <- newIORef javaNull
    lastDamageStringSizeArray <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    primitiveLongUtil <- newIORef javaNull
    myRandomFactory <- newIORef javaNull
    let this = PtsDamageFloaters header_ base basicSetColorUtil layerInterface lastDamage lastDamageString lastDamageStringSizeArray circularIndexUtil primitiveLongUtil myRandomFactory
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: PtsDamageFloaters -> IO ()
initFields_ this = do
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.layerInterface (javaNull)
    jset this.lastDamage ((jnewArray (5) 0))
    jset this.lastDamageString ((jnewArray2 (5) (0) '\0'))
    jset this.lastDamageStringSizeArray ((jnewArray (5) 0))
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstance 5)
    jset this.primitiveLongUtil (javaNull)
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    pure ()

new_1 :: AllBinaryLayer.AllBinaryLayer -> IO PtsDamageFloaters
new_1 layerInterface = do
    this <- newRecord_
    init_1 this layerInterface
    pure this

init_1 :: PtsDamageFloaters -> AllBinaryLayer.AllBinaryLayer -> IO ()
init_1 this layerInterface = do
        DamageFloaters.init_ this.base
        initFields_ this
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen 100000)
        jset (this).primitiveLongUtil (assignedValue)
        jset (this).layerInterface (layerInterface)
        cHAR_ARRAY <- (CharArrayFactory.getZeroCharArray ((jio (CharArrayFactory.getInstance))))
        forM_ [((jlength (jget (this).lastDamageString)) - 1), ((jlength (jget (this).lastDamageString)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).lastDamageString)) (index) (cHAR_ARRAY)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PtsDamageFloaters))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PtsDamageFloaters)) a1

add_impl :: PtsDamageFloaters -> Int -> IO (())
add_impl this damage = do
        index <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        jsetIndex ((jget (this).lastDamage)) (index) (damage)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jindex ((jget (this).lastDamage)) (index)))
        jsetIndex ((jget (this).lastDamageString)) (index) (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
        jsetIndex ((jget (this).lastDamageStringSizeArray)) (index) (assignedValue)
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PtsDamageFloaters))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PtsDamageFloaters)) a1

paint_impl :: PtsDamageFloaters -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        viewPosition <- (AllBinaryLayer.getViewPosition ((jget (this).layerInterface)))
        x <- (ViewPositionBase.getX viewPosition)
        y <- (ViewPositionBase.getY viewPosition)
        forM_ [((jlength (jget (this).lastDamage)) - 1), ((jlength (jget (this).lastDamage)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).lastDamage)) (index)) /= 0) $ do
                let delta = (10 * ((index + 2)))
                Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (get PtsDamageFloaters.basicColorArrayIndexer)))
                Control.Monad.void (Graphics.drawChars graphics (jindex ((jget (this).lastDamageString)) (index)) 0 (jindex ((jget (this).lastDamageStringSizeArray)) (index)) (x - (jio (MyRandomFactory.getNextInt ((jget (this).myRandomFactory)) delta))) (y - delta) 0)
                Control.Monad.void (next PtsDamageFloaters.basicColorArrayIndexer)
            jsetIndex ((jget (this).lastDamage)) (index) (0)
        pure ()


