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
-- package org.allbinary.game.score
module NoHighScoresFactory (module NoHighScoresFactory, module HighScoresBase) where

import HighScoresBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, fetchHighScores, fetchHighScores_super, fetchHighScores_impl, createHighScoresHelper, createHighScoresHelper_super, createHighScoresHelper_impl, logUtil, instance_, nO_HIGH_SCORES)
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
import qualified HighScores -- same package or java.lang
import qualified HighScoresResultsListener -- same package or java.lang
import qualified HighScoresHelperBase -- same package or java.lang
import qualified HighScoresHelperBaseInterface -- same package or java.lang
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified HighScoresBase

data NoHighScoresFactory = NoHighScoresFactory
    { header_ :: JavaHeader
    , base :: HighScoresBase.HighScoresBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , nO_HIGH_SCORES :: IORef (JavaArray (HighScores.HighScores))
    }

instance JavaNull NoHighScoresFactory where
    javaNull = javaNullRecord "NoHighScoresFactory"

instance JavaEquals NoHighScoresFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoHighScoresFactory where
    (==) = jrecordEquals

instance JavaObjectClass NoHighScoresFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO NoHighScoresFactory
newRecord_ = do
    base <- HighScoresBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    nO_HIGH_SCORES <- newIORef javaNull
    let this = NoHighScoresFactory header_ base logUtil nO_HIGH_SCORES
    jregisterLevel header_ this
    jregisterMethod header_ "fetchHighScores" (\() -> fetchHighScores_impl this)
    jregisterMethod header_ "createHighScoresHelper" (\() -> createHighScoresHelper_impl this)
    pure this

initFields_ :: NoHighScoresFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nO_HIGH_SCORES ((jnewArray (0) javaNull))
    pure ()


getInstance :: IO (NoHighScoresFactory)
getInstance = do
        pure (NoHighScoresFactory.instance_)

new_ :: IO NoHighScoresFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoHighScoresFactory -> IO ()
init_ this = do
        HighScoresBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


fetchHighScores :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores object_ a1 a2 = jmethod object_ "fetchHighScores" (\() -> (fetchHighScores_impl (javaCast object_ :: NoHighScoresFactory))) () a1 a2

fetchHighScores_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_super object_ a1 a2 = (fetchHighScores_impl (javaCast object_ :: NoHighScoresFactory)) a1 a2

fetchHighScores_impl :: NoHighScoresFactory -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_impl this gameInfo highScoresResultsListener = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Getting No HighScores" this "fetchHighScores")
        Control.Monad.void (HighScoresResultsListener.setHighScoresArray highScoresResultsListener (jget (this).nO_HIGH_SCORES))
        pure ()


createHighScoresHelper :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper object_ = jmethod object_ "createHighScoresHelper" (\() -> (createHighScoresHelper_impl (javaCast object_ :: NoHighScoresFactory))) ()

createHighScoresHelper_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_super object_ = (createHighScoresHelper_impl (javaCast object_ :: NoHighScoresFactory))

createHighScoresHelper_impl :: NoHighScoresFactory -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_impl this = do
        (fmap (\value_ -> javaCast value_ :: HighScoresHelperBaseInterface.HighScoresHelperBaseInterface) (HighScoresHelperBase.new_))


