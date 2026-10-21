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
module ConsolidateMotionRectangles (module ConsolidateMotionRectangles, module MotionRectangles) where

import MotionRectangles hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, consolidateMotionRectangles, consolidateMotionRectangles_super, consolidateMotionRectangles_impl, remove, remove_super, remove_impl, logUtil, nAME)
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
import qualified MotionRectangle -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
-- import java.awt.*
import qualified MotionRectangles

data ConsolidateMotionRectangles = ConsolidateMotionRectangles
    { header_ :: JavaHeader
    , base :: MotionRectangles.MotionRectangles
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ConsolidateMotionRectangles where
    javaNull = javaNullRecord "ConsolidateMotionRectangles"

instance JavaEquals ConsolidateMotionRectangles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ConsolidateMotionRectangles where
    (==) = jrecordEquals

instance JavaObjectClass ConsolidateMotionRectangles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "consolidatedMotionRectangles_"

newRecord_ :: IO ConsolidateMotionRectangles
newRecord_ = do
    base <- MotionRectangles.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = ConsolidateMotionRectangles header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "consolidateMotionRectangles" (\() -> consolidateMotionRectangles_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: ConsolidateMotionRectangles -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: MotionRectangles.MotionRectangles -> IO ConsolidateMotionRectangles
new_1 motionRectangles = do
    this <- newRecord_
    init_1 this motionRectangles
    pure this

init_1 :: ConsolidateMotionRectangles -> MotionRectangles.MotionRectangles -> IO ()
init_1 this motionRectangles = do
        MotionRectangles.init_2 this.base (nAME) (jio (MotionRectangles.getImageComparisonResult motionRectangles))
        initFields_ this
        pure () -- super(...) is in the record above
        vector <- (MotionRectangles.getVector motionRectangles)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let motionRectangle = (javaCast (jio (BasicArrayList.get vector index)) :: MotionRectangle.MotionRectangle)
            Control.Monad.void (BasicArrayList.add vector (jio (MotionRectangle.clone motionRectangle)))
        Control.Monad.void (ConsolidateMotionRectangles.consolidateMotionRectangles this)
        pure ()


consolidateMotionRectangles :: (JavaObjectClass this_) => this_ -> IO (())
consolidateMotionRectangles object_ = jmethod object_ "consolidateMotionRectangles" (\() -> (consolidateMotionRectangles_impl (javaCast object_ :: ConsolidateMotionRectangles))) ()

consolidateMotionRectangles_super :: (JavaObjectClass this_) => this_ -> IO (())
consolidateMotionRectangles_super object_ = (consolidateMotionRectangles_impl (javaCast object_ :: ConsolidateMotionRectangles))

consolidateMotionRectangles_impl :: ConsolidateMotionRectangles -> IO (())
consolidateMotionRectangles_impl this = do
        vector <- (MotionRectangles.getVector this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Start - Size Before: " ++ javaToString (jio (BasicArrayList.size vector))) this "consolidateMotionRectangleConstraints")
        removeVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let motionRectangle = (javaCast (jio (BasicArrayList.get vector index)) :: MotionRectangle.MotionRectangle)
            forM_ [(index + 1) .. (jio (BasicArrayList.size vector)) - 1] $ \i -> javaIteration (pure ()) $ do
                let motionRectangle2 = (javaCast (jio (BasicArrayList.get vector i)) :: MotionRectangle.MotionRectangle)
                rectangle <- (MotionRectangle.getRectangle motionRectangle)
                rectangle2 <- (MotionRectangle.getRectangle motionRectangle2)
                let x2 = ((jget (rectangle).x) + (jget (rectangle).width))
                let y2 = ((jget (rectangle).y) + (jget (rectangle).height))
                let rightX = ((jget (rectangle2).x) + (jget (rectangle2).width))
                let bottomY = ((jget (rectangle2).y) + (jget (rectangle2).height))
                when (((((jget (rectangle).x) <= (jget (rectangle2).x)) && ((jget (rectangle).y) <= (jget (rectangle2).y))) && (x2 >= rightX)) && (y2 >= bottomY)) $ do
                    Control.Monad.void (BasicArrayList.add removeVector motionRectangle2)
        Control.Monad.void (ConsolidateMotionRectangles.remove this removeVector)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: ConsolidateMotionRectangles))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: ConsolidateMotionRectangles)) a1

remove_impl :: ConsolidateMotionRectangles -> BasicArrayList.BasicArrayList -> IO (())
remove_impl this removeVector = do
        vector <- (MotionRectangles.getVector this)
        size <- (BasicArrayList.size removeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.remove vector (jio (BasicArrayList.get removeVector index)))
        pure ()


