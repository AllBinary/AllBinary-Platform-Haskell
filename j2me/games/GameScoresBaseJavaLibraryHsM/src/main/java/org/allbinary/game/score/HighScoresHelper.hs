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
module HighScoresHelper (module HighScoresHelper, module HighScoresHelperBase) where

import HighScoresHelperBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setHighScoresArray, setHighScoresArray_super, setHighScoresArray_impl, getNextHighScores, getNextHighScores_super, getNextHighScores_impl, isAnyHighScores, isAnyHighScores_super, isAnyHighScores_impl, circularIndexUtil, lastIndex)
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
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified HighScoresHelperBase

data HighScoresHelper = HighScoresHelper
    { header_ :: JavaHeader
    , base :: HighScoresHelperBase.HighScoresHelperBase
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , lastIndex :: IORef (Int)
    }

instance JavaNull HighScoresHelper where
    javaNull = javaNullRecord "HighScoresHelper"

instance JavaEquals HighScoresHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresHelper where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoresHelper
newRecord_ = do
    base <- HighScoresHelperBase.newRecord_
    let header_ = base.header_
    circularIndexUtil <- newIORef javaNull
    lastIndex <- newIORef 0
    let this = HighScoresHelper header_ base circularIndexUtil lastIndex
    jregisterLevel header_ this
    jregisterMethod header_ "setHighScoresArray" (\() -> setHighScoresArray_impl this)
    jregisterMethod header_ "getNextHighScores" (\() -> getNextHighScores_impl this)
    jregisterMethod header_ "isAnyHighScores" (\() -> isAnyHighScores_impl this)
    pure this

initFields_ :: HighScoresHelper -> IO ()
initFields_ this = do
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstanceAt 0 0)
    jset this.lastIndex ((Prelude.negate 1))
    pure ()

new_ :: IO HighScoresHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresHelper -> IO ()
init_ this = do
    HighScoresHelperBase.init_ this.base
    initFields_ this


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoresHelper))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoresHelper)) a1

setHighScoresArray_impl :: HighScoresHelper -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArrayP = do
        Control.Monad.void (HighScoresHelperBase.setHighScoresArray_super this.base highScoresArrayP)
        Control.Monad.void (CircularIndexUtil.setSize ((jget (this).circularIndexUtil)) (jlength (jget (this).base.highScoresArrayP)))
        pure ()


getNextHighScores :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getNextHighScores object_ = jmethod object_ "getNextHighScores" (\() -> (getNextHighScores_impl (javaCast object_ :: HighScoresHelper))) ()

getNextHighScores_super :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getNextHighScores_super object_ = (getNextHighScores_impl (javaCast object_ :: HighScoresHelper))

getNextHighScores_impl :: HighScoresHelper -> IO (HighScores.HighScores)
getNextHighScores_impl this = do
        highScores <- newIORef ((jindex ((jget (this).base.highScoresArrayP)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))))
        index <- newIORef (0)
        fix $ \loop -> when (((((jio (HighScores.getTotal ((jget highScores)))) < 1) || ((jget (this).lastIndex) == (jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))) && ((jget index) < (jlength (jget (this).base.highScoresArrayP)))) $ javaIteration (loop) $ do
            Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
            jset highScores ((jindex ((jget (this).base.highScoresArrayP)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))))
            jset index ((jget index) + 1)
        assignedValue <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        jset (this).lastIndex (assignedValue)
        pure ((jget highScores))


isAnyHighScores :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyHighScores object_ = jmethod object_ "isAnyHighScores" (\() -> (isAnyHighScores_impl (javaCast object_ :: HighScoresHelper))) ()

isAnyHighScores_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyHighScores_super object_ = (isAnyHighScores_impl (javaCast object_ :: HighScoresHelper))

isAnyHighScores_impl :: HighScoresHelper -> IO (Bool)
isAnyHighScores_impl this = do
    javaCatchReturn $ do
        when ((jlength (jget (this).base.highScoresArrayP)) < 1) $ do
            javaReturn (False)
        anyScores <- newIORef (False)
        highScores <- newIORef (javaNull)
        forM_ [((jlength (jget (this).base.highScoresArrayP)) - 1), ((jlength (jget (this).base.highScoresArrayP)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset highScores ((jindex ((jget (this).base.highScoresArrayP)) (index)))
            when ((jio (HighScores.getTotal ((jget highScores)))) > 0) $ do
                jset anyScores (True)
        pure ((jget anyScores))


