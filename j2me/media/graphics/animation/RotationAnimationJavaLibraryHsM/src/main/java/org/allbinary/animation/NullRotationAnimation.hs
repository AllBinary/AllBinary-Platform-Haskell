{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module NullRotationAnimation (module NullRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createTotalAngle, createTotalAngle_super, createTotalAngle_impl, createQuarter, createQuarter_super, createQuarter_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified RotationAnimation

data NullRotationAnimation = NullRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    }

instance JavaNull NullRotationAnimation where
    javaNull = javaNullRecord "NullRotationAnimation"

instance JavaEquals NullRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass NullRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    let this = NullRotationAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    pure this

initFields_ :: NullRotationAnimation -> IO ()
initFields_ this = do
    pure ()


createTotalAngle :: AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO (NullRotationAnimation)
createTotalAngle angleInfo totalAngle animationBehavior = do
        (new_3 angleInfo (jio (CircularIndexUtil.createInstance (((Prelude.fromIntegral totalAngle) `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))))) :: Int))) animationBehavior)


createQuarter :: AnimationBehavior.AnimationBehavior -> IO (NullRotationAnimation)
createQuarter animationBehavior = do
        (new_3 (jio (AngleInfo.getInstance (jget ((jio (AngleFactory.getInstance))).qUARTER_TOTAL_ANGLE))) (jio (CircularIndexUtil.createInstance 4)) animationBehavior)

new_3 :: AngleInfo.AngleInfo -> CircularIndexUtil.CircularIndexUtil -> AnimationBehavior.AnimationBehavior -> IO NullRotationAnimation
new_3 angleInfo circularIndexUtil animationBehavior = do
    this <- newRecord_
    init_3 this angleInfo circularIndexUtil animationBehavior
    pure this

init_3 :: NullRotationAnimation -> AngleInfo.AngleInfo -> CircularIndexUtil.CircularIndexUtil -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this angleInfo circularIndexUtil animationBehavior = do
        RotationAnimation.init_3 this.base (angleInfo) (circularIndexUtil) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: NullRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: NullRotationAnimation))

getAnimationSize_impl :: NullRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        pure (0)


