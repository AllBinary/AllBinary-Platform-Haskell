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
-- package org.allbinary.input.automation.module.game
module MeteredGameObject where

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
import qualified GraphicsAnalysisUtil -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified MeteredGameObjectInterface

-- implements MeteredGameObjectInterface
data MeteredGameObject = MeteredGameObject
    { header_ :: JavaHeader
    , ratios :: IORef (JavaArray (Double))
    , good :: IORef (Bool)
    , dropping :: IORef (Bool)
    , minX :: IORef (Int)
    , maxX :: IORef (Int)
    , y :: IORef (Int)
    , size :: IORef (Int)
    , rATIOS_LABEL :: IORef (String)
    , iS_GOOD_LABEL :: IORef (String)
    , iS_DROPPPING_LABEL :: IORef (String)
    }

instance JavaNull MeteredGameObject where
    javaNull = javaNullRecord "MeteredGameObject"

instance JavaEquals MeteredGameObject where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MeteredGameObject where
    (==) = jrecordEquals

instance JavaObjectClass MeteredGameObject where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MeteredGameObject
newRecord_ = do
    header_ <- newJavaHeader
    ratios <- newIORef javaNull
    good <- newIORef False
    dropping <- newIORef False
    minX <- newIORef javaNull
    maxX <- newIORef javaNull
    y <- newIORef javaNull
    size <- newIORef javaNull
    rATIOS_LABEL <- newIORef ""
    iS_GOOD_LABEL <- newIORef ""
    iS_DROPPPING_LABEL <- newIORef ""
    let this = MeteredGameObject header_ ratios good dropping minX maxX y size rATIOS_LABEL iS_GOOD_LABEL iS_DROPPPING_LABEL
    jregisterLevel header_ this
    MeteredGameObjectInterface.registerInterface_ header_
    jregisterMethod header_ "isGood" (\() -> isGood_impl this)
    jregisterMethod header_ "setGood" (\() -> setGood_impl this)
    jregisterMethod header_ "isDropping" (\() -> isDropping_impl this)
    jregisterMethod header_ "setDropping" (\() -> setDropping_impl this)
    jregisterMethod header_ "getRatios" (\() -> getRatios_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "setRatios" (\() -> setRatios_impl this)
    jregisterMethod header_ "getMinX" (\() -> getMinX_impl this)
    jregisterMethod header_ "setMinX" (\() -> setMinX_impl this)
    jregisterMethod header_ "getMaxX" (\() -> getMaxX_impl this)
    jregisterMethod header_ "setMaxX" (\() -> setMaxX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "setY" (\() -> setY_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSize" (\() -> setSize_impl this)
    pure this

initFields_ :: MeteredGameObject -> IO ()
initFields_ this = do
    jset this.ratios (javaNull)
    jset this.good (False)
    jset this.dropping (False)
    jset this.minX (javaNull)
    jset this.maxX (javaNull)
    jset this.y (javaNull)
    jset this.size (javaNull)
    jset this.rATIOS_LABEL ("Ratios: ")
    jset this.iS_GOOD_LABEL ("isGood: ")
    jset this.iS_DROPPPING_LABEL ("isDropping: ")
    pure ()

new_4 :: JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO MeteredGameObject
new_4 bufferedImage minX maxX y = do
    this <- newRecord_
    init_4 this bufferedImage minX maxX y
    pure this

init_4 :: MeteredGameObject -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO ()
init_4 this bufferedImage minX maxX y = do
        initFields_ this
        Control.Monad.void (MeteredGameObject.setRatios this (jnewArray ((jlength bufferedImage)) javaNull))
        Control.Monad.void (MeteredGameObject.setMinX this minX)
        Control.Monad.void (MeteredGameObject.setMaxX this maxX)
        Control.Monad.void (MeteredGameObject.setY this y)
        Control.Monad.void (MeteredGameObject.setSize this (maxX - minX))
        forM_ [0 .. (jlength bufferedImage) - 1] $ \index -> javaIteration (pure ()) $ do
            nominator <- (GraphicsAnalysisUtil.getNominator (jindex bufferedImage (index)) (jio (MeteredGameObject.getMinX this)) (jio (MeteredGameObject.getMaxX this)) (jio (MeteredGameObject.getY this)))
            jsetIndex ((jio (MeteredGameObject.getRatios this))) (index) ((nominator / (jio (MeteredGameObject.getSize this))))
        if ((jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (((jlength bufferedImage) - 1)))))) > (Prelude.realToFrac (0.93 :: Float))) then do
            Control.Monad.void (MeteredGameObject.setGood this True)
        else do
            Control.Monad.void (MeteredGameObject.setGood this False)
        if ((jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (((jlength bufferedImage) - 1)))))) < (jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (0)))))) then do
            Control.Monad.void (MeteredGameObject.setDropping this True)
        else do
            Control.Monad.void (MeteredGameObject.setDropping this False)
        pure ()


isGood :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGood object_ = jmethod object_ "isGood" (\() -> (isGood_impl (javaCast object_ :: MeteredGameObject))) ()

isGood_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGood_super object_ = (isGood_impl (javaCast object_ :: MeteredGameObject))

isGood_impl :: MeteredGameObject -> IO (Bool)
isGood_impl this = do
        pure ((jget (this).good))


setGood :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGood object_ a1 = jmethod object_ "setGood" (\() -> (setGood_impl (javaCast object_ :: MeteredGameObject))) () a1

setGood_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGood_super object_ a1 = (setGood_impl (javaCast object_ :: MeteredGameObject)) a1

setGood_impl :: MeteredGameObject -> Bool -> IO (())
setGood_impl this good = do
        jset (this).good (good)
        pure ()


isDropping :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDropping object_ = jmethod object_ "isDropping" (\() -> (isDropping_impl (javaCast object_ :: MeteredGameObject))) ()

isDropping_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDropping_super object_ = (isDropping_impl (javaCast object_ :: MeteredGameObject))

isDropping_impl :: MeteredGameObject -> IO (Bool)
isDropping_impl this = do
        pure ((jget (this).dropping))


setDropping :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDropping object_ a1 = jmethod object_ "setDropping" (\() -> (setDropping_impl (javaCast object_ :: MeteredGameObject))) () a1

setDropping_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDropping_super object_ a1 = (setDropping_impl (javaCast object_ :: MeteredGameObject)) a1

setDropping_impl :: MeteredGameObject -> Bool -> IO (())
setDropping_impl this dropping = do
        jset (this).dropping (dropping)
        pure ()


getRatios :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Double))
getRatios object_ = jmethod object_ "getRatios" (\() -> (getRatios_impl (javaCast object_ :: MeteredGameObject))) ()

getRatios_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Double))
getRatios_super object_ = (getRatios_impl (javaCast object_ :: MeteredGameObject))

getRatios_impl :: MeteredGameObject -> IO (JavaArray (Double))
getRatios_impl this = do
        pure ((jget (this).ratios))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MeteredGameObject))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MeteredGameObject))

toString_impl :: MeteredGameObject -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).rATIOS_LABEL))
        forM_ [0 .. (jlength (jio (MeteredGameObject.getRatios this))) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (toString ((jindex ((jio (MeteredGameObject.getRatios this))) (index))))))
            when (index < ((jlength (jio (MeteredGameObject.getRatios this))) - 1)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS_GOOD_LABEL))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (MeteredGameObject.isGood this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS_DROPPPING_LABEL))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (MeteredGameObject.isDropping this)))
        (StringMaker.toString stringBuffer)


setRatios :: (JavaObjectClass this_) => this_ -> JavaArray (Double) -> IO (())
setRatios object_ a1 = jmethod object_ "setRatios" (\() -> (setRatios_impl (javaCast object_ :: MeteredGameObject))) () a1

setRatios_super :: (JavaObjectClass this_) => this_ -> JavaArray (Double) -> IO (())
setRatios_super object_ a1 = (setRatios_impl (javaCast object_ :: MeteredGameObject)) a1

setRatios_impl :: MeteredGameObject -> JavaArray (Double) -> IO (())
setRatios_impl this ratios = do
        jset (this).ratios (ratios)
        pure ()


getMinX :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinX object_ = jmethod object_ "getMinX" (\() -> (getMinX_impl (javaCast object_ :: MeteredGameObject))) ()

getMinX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinX_super object_ = (getMinX_impl (javaCast object_ :: MeteredGameObject))

getMinX_impl :: MeteredGameObject -> IO (Int)
getMinX_impl this = do
        pure ((jget (this).minX))


setMinX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinX object_ a1 = jmethod object_ "setMinX" (\() -> (setMinX_impl (javaCast object_ :: MeteredGameObject))) () a1

setMinX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinX_super object_ a1 = (setMinX_impl (javaCast object_ :: MeteredGameObject)) a1

setMinX_impl :: MeteredGameObject -> Int -> IO (())
setMinX_impl this minX = do
        jset (this).minX (minX)
        pure ()


getMaxX :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxX object_ = jmethod object_ "getMaxX" (\() -> (getMaxX_impl (javaCast object_ :: MeteredGameObject))) ()

getMaxX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxX_super object_ = (getMaxX_impl (javaCast object_ :: MeteredGameObject))

getMaxX_impl :: MeteredGameObject -> IO (Int)
getMaxX_impl this = do
        pure ((jget (this).maxX))


setMaxX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxX object_ a1 = jmethod object_ "setMaxX" (\() -> (setMaxX_impl (javaCast object_ :: MeteredGameObject))) () a1

setMaxX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxX_super object_ a1 = (setMaxX_impl (javaCast object_ :: MeteredGameObject)) a1

setMaxX_impl :: MeteredGameObject -> Int -> IO (())
setMaxX_impl this maxX = do
        jset (this).maxX (maxX)
        pure ()


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: MeteredGameObject))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: MeteredGameObject))

getY_impl :: MeteredGameObject -> IO (Int)
getY_impl this = do
        pure ((jget (this).y))


setY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY object_ a1 = jmethod object_ "setY" (\() -> (setY_impl (javaCast object_ :: MeteredGameObject))) () a1

setY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY_super object_ a1 = (setY_impl (javaCast object_ :: MeteredGameObject)) a1

setY_impl :: MeteredGameObject -> Int -> IO (())
setY_impl this y = do
        jset (this).y (y)
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: MeteredGameObject))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: MeteredGameObject))

getSize_impl :: MeteredGameObject -> IO (Int)
getSize_impl this = do
        pure ((jget (this).size))


setSize :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize object_ a1 = jmethod object_ "setSize" (\() -> (setSize_impl (javaCast object_ :: MeteredGameObject))) () a1

setSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize_super object_ a1 = (setSize_impl (javaCast object_ :: MeteredGameObject)) a1

setSize_impl :: MeteredGameObject -> Int -> IO (())
setSize_impl this size = do
        jset (this).size (size)
        pure ()


