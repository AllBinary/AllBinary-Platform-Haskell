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
module HighScoresHelper2 (module HighScoresHelper2, module HighScoresHelperBase) where

import HighScoresHelperBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setSelectedHighScores, setSelectedHighScores_super, setSelectedHighScores_impl, getSelectedHighScores, getSelectedHighScores_super, getSelectedHighScores_impl, setHighScoresArray, setHighScoresArray_super, setHighScoresArray_impl, selectHighScores, selectHighScores_super, selectHighScores_impl, circularIndexUtil, selectedHighScores)
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
import qualified NullHighScoresSingletonFactory -- same package or java.lang
import qualified HighScores -- same package or java.lang
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified HighScoresHelperBase

data HighScoresHelper2 = HighScoresHelper2
    { header_ :: JavaHeader
    , base :: HighScoresHelperBase.HighScoresHelperBase
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , selectedHighScores :: IORef (HighScores.HighScores)
    }

instance JavaNull HighScoresHelper2 where
    javaNull = javaNullRecord "HighScoresHelper2"

instance JavaEquals HighScoresHelper2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresHelper2 where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresHelper2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoresHelper2
newRecord_ = do
    base <- HighScoresHelperBase.newRecord_
    let header_ = base.header_
    circularIndexUtil <- newIORef javaNull
    selectedHighScores <- newIORef javaNull
    let this = HighScoresHelper2 header_ base circularIndexUtil selectedHighScores
    jregisterLevel header_ this
    jregisterMethod header_ "setSelectedHighScores" (\() -> setSelectedHighScores_impl this)
    jregisterMethod header_ "getSelectedHighScores" (\() -> getSelectedHighScores_impl this)
    jregisterMethod header_ "setHighScoresArray" (\() -> setHighScoresArray_impl this)
    jregisterMethod header_ "selectHighScores" (\() -> selectHighScores_impl this)
    pure this

initFields_ :: HighScoresHelper2 -> IO ()
initFields_ this = do
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstanceAt 0 0)
    jset this.selectedHighScores =<< (NullHighScoresSingletonFactory.getInstance)
    pure ()

new_ :: IO HighScoresHelper2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresHelper2 -> IO ()
init_ this = do
    HighScoresHelperBase.init_ this.base
    initFields_ this


setSelectedHighScores :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores object_ a1 = jmethod object_ "setSelectedHighScores" (\() -> (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelper2))) () a1

setSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores_super object_ a1 = (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelper2)) a1

setSelectedHighScores_impl :: HighScoresHelper2 -> HighScores.HighScores -> IO (())
setSelectedHighScores_impl this selectedHighScores = do
        jset (this).selectedHighScores (selectedHighScores)
        pure ()


getSelectedHighScores :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores object_ = jmethod object_ "getSelectedHighScores" (\() -> (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelper2))) ()

getSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores_super object_ = (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelper2))

getSelectedHighScores_impl :: HighScoresHelper2 -> IO (HighScores.HighScores)
getSelectedHighScores_impl this = do
        pure ((jget (this).selectedHighScores))


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoresHelper2))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoresHelper2)) a1

setHighScoresArray_impl :: HighScoresHelper2 -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArrayP = do
        Control.Monad.void (HighScoresHelperBase.setHighScoresArray_super this.base highScoresArrayP)
        Control.Monad.void (CircularIndexUtil.setSize ((jget (this).circularIndexUtil)) (jlength (jget (this).base.highScoresArrayP)))
        Control.Monad.void (HighScoresHelper2.selectHighScores this)
        pure ()


selectHighScores :: (JavaObjectClass this_) => this_ -> IO (())
selectHighScores object_ = jmethod object_ "selectHighScores" (\() -> (selectHighScores_impl (javaCast object_ :: HighScoresHelper2))) ()

selectHighScores_super :: (JavaObjectClass this_) => this_ -> IO (())
selectHighScores_super object_ = (selectHighScores_impl (javaCast object_ :: HighScoresHelper2))

selectHighScores_impl :: HighScoresHelper2 -> IO (())
selectHighScores_impl this = do
    javaCatchReturn $ do
        when ((jlength (jget (this).base.highScoresArrayP)) == 0) $ do
            Control.Monad.void (HighScoresHelper2.setSelectedHighScores this (jio (NullHighScoresSingletonFactory.getInstance)))
            javaReturn (())
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        highScores <- newIORef ((jindex ((jget (this).base.highScoresArrayP)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))))
        index <- newIORef (0)
        fix $ \loop -> when (((jio (HighScores.getTotal ((jget highScores)))) < 1) && ((jget index) < (jlength (jget (this).base.highScoresArrayP)))) $ javaIteration (loop) $ do
            jset highScores ((jindex ((jget (this).base.highScoresArrayP)) ((jio (CircularIndexUtil.next ((jget (this).circularIndexUtil)))))))
            jset index ((jget index) + 1)
        Control.Monad.void (HighScoresHelper2.setSelectedHighScores this (jget highScores))
    pure ()


