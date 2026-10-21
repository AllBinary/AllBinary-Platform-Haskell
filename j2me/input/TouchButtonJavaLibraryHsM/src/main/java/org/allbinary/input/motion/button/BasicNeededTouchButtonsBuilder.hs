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
-- package org.allbinary.input.motion.button
module BasicNeededTouchButtonsBuilder (module BasicNeededTouchButtonsBuilder, module BaseTouchInput) where

import BaseTouchInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getList, getList_super, getList_impl, logUtil)
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
import qualified TouchButtonLocationHelper -- same package or java.lang
import qualified BasicTouchButtonCellPositionFactory -- same package or java.lang
import qualified CommonButtons -- same package or java.lang
import qualified TouchButton -- same package or java.lang
import qualified BasicTouchInputFactory -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified BaseTouchInput

data BasicNeededTouchButtonsBuilder = BasicNeededTouchButtonsBuilder
    { header_ :: JavaHeader
    , base :: BaseTouchInput.BaseTouchInput
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicNeededTouchButtonsBuilder where
    javaNull = javaNullRecord "BasicNeededTouchButtonsBuilder"

instance JavaEquals BasicNeededTouchButtonsBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicNeededTouchButtonsBuilder where
    (==) = jrecordEquals

instance JavaObjectClass BasicNeededTouchButtonsBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicNeededTouchButtonsBuilder
newRecord_ = do
    base <- BaseTouchInput.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = BasicNeededTouchButtonsBuilder header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: BasicNeededTouchButtonsBuilder -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasicNeededTouchButtonsBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicNeededTouchButtonsBuilder -> IO ()
init_ this = do
    BaseTouchInput.init_ this.base
    initFields_ this


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: BasicNeededTouchButtonsBuilder))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: BasicNeededTouchButtonsBuilder))

getList_impl :: BasicNeededTouchButtonsBuilder -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).gET_LIST) e)
            (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
            list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            touchButtonLocationHelper <- (TouchButtonLocationHelper.new_)
            basicTouchButtonCellPositionFactory <- (BasicTouchButtonCellPositionFactory.new_)
            commonButtons <- (CommonButtons.getInstance)
            animationInterface <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
            uP <- (TouchButton.new_7 (jget ((jio (BasicTouchInputFactory.getInstance))).uP) animationInterface animationInterface (jget (commonButtons).nORMAL_BUTTON) (jget (basicTouchButtonCellPositionFactory).sECOND_FROM_BOTTOM_LEFT) (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper)) (jio (TouchButtonLocationHelper.getRowsRemainderHalf touchButtonLocationHelper)))
            dOWN <- (TouchButton.new_7 (jget ((jio (BasicTouchInputFactory.getInstance))).dOWN) animationInterface animationInterface (jget (commonButtons).nORMAL_BUTTON) (jget (basicTouchButtonCellPositionFactory).bOTTOM_LEFT) (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper)) (jio (TouchButtonLocationHelper.getRowsRemainderHalf touchButtonLocationHelper)))
            lEFT <- (TouchButton.new_7 (jget ((jio (BasicTouchInputFactory.getInstance))).lEFT) animationInterface animationInterface (jget (commonButtons).nORMAL_BUTTON) (jget (basicTouchButtonCellPositionFactory).bOTTOM_SECOND_FROM_RIGHT) (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper)) (jio (TouchButtonLocationHelper.getRowsRemainderHalf touchButtonLocationHelper)))
            rIGHT <- (TouchButton.new_7 (jget ((jio (BasicTouchInputFactory.getInstance))).rIGHT) animationInterface animationInterface (jget (commonButtons).nORMAL_BUTTON) (jget (basicTouchButtonCellPositionFactory).bOTTOM_RIGHT) (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper)) (jio (TouchButtonLocationHelper.getRowsRemainderHalf touchButtonLocationHelper)))
            Control.Monad.void (BasicArrayList.add list uP)
            Control.Monad.void (BasicArrayList.add list dOWN)
            Control.Monad.void (BasicArrayList.add list lEFT)
            Control.Monad.void (BasicArrayList.add list rIGHT)
            pure (list)


