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
-- package org.allbinary.graphics.pipeline
module RandomRotationFactory where

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
import qualified BasicGraphicsPipeline -- same package or java.lang
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data RandomRotationFactory = RandomRotationFactory
    { header_ :: JavaHeader
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    , angleFactory :: IORef (AngleFactory.AngleFactory)
    }

instance JavaNull RandomRotationFactory where
    javaNull = javaNullRecord "RandomRotationFactory"

instance JavaEquals RandomRotationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RandomRotationFactory where
    (==) = jrecordEquals

instance JavaObjectClass RandomRotationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RandomRotationFactory
newRecord_ = do
    header_ <- newJavaHeader
    myRandomFactory <- newIORef javaNull
    angleFactory <- newIORef javaNull
    let this = RandomRotationFactory header_ myRandomFactory angleFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceList" (\() -> getInstanceList_impl this)
    jregisterMethod header_ "getNextRandomAngle" (\() -> getNextRandomAngle_impl this)
    pure this

initFields_ :: RandomRotationFactory -> IO ()
initFields_ this = do
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    jset this.angleFactory =<< (AngleFactory.getInstance)
    pure ()

new_ :: IO RandomRotationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RandomRotationFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RandomRotationFactory)
getInstance = do
        pure (RandomRotationFactory.instance_)


-- throws Exception
getInstanceList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceList object_ a1 a2 = jmethod object_ "getInstanceList" (\() -> (getInstanceList_impl (javaCast object_ :: RandomRotationFactory))) () a1 a2

getInstanceList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceList_super object_ a1 a2 = (getInstanceList_impl (javaCast object_ :: RandomRotationFactory)) a1 a2

getInstanceList_impl :: RandomRotationFactory -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceList_impl this vector howMuch = do
        graphicsPipe <- (BasicGraphicsPipeline.new_1 vector)
        Control.Monad.void (BasicGraphicsPipeline.createMatrix graphicsPipe)
        Control.Monad.void (BasicGraphicsPipeline.rotateToAngle graphicsPipe (jio (AngleFactory.getAt ((jget (this).angleFactory)) (jio (RandomRotationFactory.getNextRandomAngle this howMuch)))))
        (BasicGraphicsPipeline.getMatrix graphicsPipe)


getNextRandomAngle :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getNextRandomAngle object_ a1 = jmethod object_ "getNextRandomAngle" (\() -> (getNextRandomAngle_impl (javaCast object_ :: RandomRotationFactory))) () a1

getNextRandomAngle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getNextRandomAngle_super object_ a1 = (getNextRandomAngle_impl (javaCast object_ :: RandomRotationFactory)) a1

getNextRandomAngle_impl :: RandomRotationFactory -> Int -> IO (Int)
getNextRandomAngle_impl this howMuch = do
        (MyRandomFactory.getNextInt ((jget (this).myRandomFactory)) (howMuch * 10))


