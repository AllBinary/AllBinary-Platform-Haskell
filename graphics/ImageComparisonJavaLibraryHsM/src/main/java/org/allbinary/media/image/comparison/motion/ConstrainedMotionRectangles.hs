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
-- package org.allbinary.media.image.comparison.motion
module ConstrainedMotionRectangles (module ConstrainedMotionRectangles, module MotionRectangles) where

import MotionRectangles hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, applyMotionRectangleConstraints, applyMotionRectangleConstraints_super, applyMotionRectangleConstraints_impl, getMotionRectangleConstraintsInterface, getMotionRectangleConstraintsInterface_super, getMotionRectangleConstraintsInterface_impl, setMotionRectangleConstraintsInterface, setMotionRectangleConstraintsInterface_super, setMotionRectangleConstraintsInterface_impl, logUtil, nAME, motionRectangleConstraintsInterface)
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
import qualified MotionRectangleConstraintsInterface -- same package or java.lang
import qualified MotionRectangle -- same package or java.lang
import qualified Rectangle -- java.awt.Rectangle
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified MotionRectangles

data ConstrainedMotionRectangles = ConstrainedMotionRectangles
    { header_ :: JavaHeader
    , base :: MotionRectangles.MotionRectangles
    , logUtil :: IORef (LogUtil.LogUtil)
    , motionRectangleConstraintsInterface :: IORef (MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface)
    }

instance JavaNull ConstrainedMotionRectangles where
    javaNull = javaNullRecord "ConstrainedMotionRectangles"

instance JavaEquals ConstrainedMotionRectangles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ConstrainedMotionRectangles where
    (==) = jrecordEquals

instance JavaObjectClass ConstrainedMotionRectangles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "constrainedMotionRectangles_"

newRecord_ :: IO ConstrainedMotionRectangles
newRecord_ = do
    base <- MotionRectangles.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    motionRectangleConstraintsInterface <- newIORef javaNull
    let this = ConstrainedMotionRectangles header_ base logUtil motionRectangleConstraintsInterface
    jregisterLevel header_ this
    jregisterMethod header_ "applyMotionRectangleConstraints" (\() -> applyMotionRectangleConstraints_impl this)
    jregisterMethod header_ "getMotionRectangleConstraintsInterface" (\() -> getMotionRectangleConstraintsInterface_impl this)
    jregisterMethod header_ "setMotionRectangleConstraintsInterface" (\() -> setMotionRectangleConstraintsInterface_impl this)
    pure this

initFields_ :: ConstrainedMotionRectangles -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.motionRectangleConstraintsInterface (javaNull)
    pure ()

new_2 :: MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> MotionRectangles.MotionRectangles -> IO ConstrainedMotionRectangles
new_2 motionRectangleConstraintsInterface motionRectangles = do
    this <- newRecord_
    init_2 this motionRectangleConstraintsInterface motionRectangles
    pure this

init_2 :: ConstrainedMotionRectangles -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> MotionRectangles.MotionRectangles -> IO ()
init_2 this motionRectangleConstraintsInterface motionRectangles = do
        MotionRectangles.init_2 this.base (nAME) (jio (MotionRectangles.getImageComparisonResult motionRectangles))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ConstrainedMotionRectangles.setMotionRectangleConstraintsInterface this motionRectangleConstraintsInterface)
        pure ()


-- throws Exception
applyMotionRectangleConstraints :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
applyMotionRectangleConstraints object_ a1 = jmethod object_ "applyMotionRectangleConstraints" (\() -> (applyMotionRectangleConstraints_impl (javaCast object_ :: ConstrainedMotionRectangles))) () a1

applyMotionRectangleConstraints_super :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
applyMotionRectangleConstraints_super object_ a1 = (applyMotionRectangleConstraints_impl (javaCast object_ :: ConstrainedMotionRectangles)) a1

applyMotionRectangleConstraints_impl :: ConstrainedMotionRectangles -> MotionRectangles.MotionRectangles -> IO (())
applyMotionRectangleConstraints_impl this motionRectangles = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Start - Size Before: " ++ javaToString (jio (BasicArrayList.size ((jio (MotionRectangles.getVector motionRectangles)))))) this "applyMotionRectangleConstraints")
        bufferedImageArray <- (ImageComparisonResult.getBufferedImages ((jio (MotionRectangles.getImageComparisonResult motionRectangles))))
        let bufferedImage = (jindex bufferedImageArray (1))
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        vector2 <- (MotionRectangles.getVector motionRectangles)
        size <- (BasicArrayList.size vector2)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let motionRectangle = (javaCast (jio (BasicArrayList.get vector2 index)) :: MotionRectangle.MotionRectangle)
            rectangle <- (MotionRectangle.getRectangle motionRectangle)
            isTooSmall <- (MotionRectangleConstraintsInterface.isTooSmall ((jio (ConstrainedMotionRectangles.getMotionRectangleConstraintsInterface this))) rectangle)
            when isTooSmall $ do
                throwIO JavaContinue
            isAreaTooSmall <- (MotionRectangleConstraintsInterface.isAreaTooSmall ((jio (ConstrainedMotionRectangles.getMotionRectangleConstraintsInterface this))) rectangle)
            when isAreaTooSmall $ do
                throwIO JavaContinue
            isTooBig <- (MotionRectangleConstraintsInterface.isTooBig ((jio (ConstrainedMotionRectangles.getMotionRectangleConstraintsInterface this))) rectangle)
            when isTooBig $ do
                throwIO JavaContinue
            isValid <- (MotionRectangleConstraintsInterface.isValid ((jio (ConstrainedMotionRectangles.getMotionRectangleConstraintsInterface this))) (jio (ImageComparisonResult.getFrameTwo ((jio (MotionRectangles.getImageComparisonResult this))))) bufferedImage (jio (MotionRectangle.getRectangle motionRectangle)))
            when (Prelude.not isValid) $ do
                throwIO JavaContinue
            when ((((Prelude.not isTooSmall) && (Prelude.not isAreaTooSmall)) && (Prelude.not isTooBig)) && isValid) $ do
                Control.Monad.void (jio (BasicArrayList.add vector motionRectangle))
        Control.Monad.void (MotionRectangles.setVector this vector)
        pure ()


getMotionRectangleConstraintsInterface :: (JavaObjectClass this_) => this_ -> IO (MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface)
getMotionRectangleConstraintsInterface object_ = jmethod object_ "getMotionRectangleConstraintsInterface" (\() -> (getMotionRectangleConstraintsInterface_impl (javaCast object_ :: ConstrainedMotionRectangles))) ()

getMotionRectangleConstraintsInterface_super :: (JavaObjectClass this_) => this_ -> IO (MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface)
getMotionRectangleConstraintsInterface_super object_ = (getMotionRectangleConstraintsInterface_impl (javaCast object_ :: ConstrainedMotionRectangles))

getMotionRectangleConstraintsInterface_impl :: ConstrainedMotionRectangles -> IO (MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface)
getMotionRectangleConstraintsInterface_impl this = do
        pure ((jget (this).motionRectangleConstraintsInterface))


setMotionRectangleConstraintsInterface :: (JavaObjectClass this_) => this_ -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO (())
setMotionRectangleConstraintsInterface object_ a1 = jmethod object_ "setMotionRectangleConstraintsInterface" (\() -> (setMotionRectangleConstraintsInterface_impl (javaCast object_ :: ConstrainedMotionRectangles))) () a1

setMotionRectangleConstraintsInterface_super :: (JavaObjectClass this_) => this_ -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO (())
setMotionRectangleConstraintsInterface_super object_ a1 = (setMotionRectangleConstraintsInterface_impl (javaCast object_ :: ConstrainedMotionRectangles)) a1

setMotionRectangleConstraintsInterface_impl :: ConstrainedMotionRectangles -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO (())
setMotionRectangleConstraintsInterface_impl this motionRectangleConstraintsInterface = do
        jset (this).motionRectangleConstraintsInterface (motionRectangleConstraintsInterface)
        pure ()


