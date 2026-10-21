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
-- package org.allbinary.game.ag.ai.tactical
module BasicRandomAI (module BasicRandomAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, i_random, inputProbability, visitor, keyArray, myRandomFactory)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified InputProbability -- org.allbinary.game.ag.ai.InputProbability
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory

data BasicRandomAI = BasicRandomAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , i_random :: IORef (Int)
    , inputProbability :: IORef (InputProbability.InputProbability)
    , visitor :: IORef (Visitor.Visitor)
    , keyArray :: IORef (JavaArray (Int))
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    }

instance JavaNull BasicRandomAI where
    javaNull = javaNullRecord "BasicRandomAI"

instance JavaEquals BasicRandomAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicRandomAI where
    (==) = jrecordEquals

instance JavaObjectClass BasicRandomAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicRandomAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    i_random <- newIORef 0
    inputProbability <- newIORef javaNull
    visitor <- newIORef javaNull
    keyArray <- newIORef javaNull
    myRandomFactory <- newIORef javaNull
    let this = BasicRandomAI header_ base i_random inputProbability visitor keyArray myRandomFactory
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: BasicRandomAI -> IO ()
initFields_ this = do
    jset this.i_random (0)
    jset this.inputProbability (javaNull)
    jset this.visitor (javaNull)
    jset this.keyArray ((jarrayFromList [Canvas.uP, Canvas.dOWN, Canvas.lEFT, Canvas.rIGHT, Canvas.kEY_NUM1, Canvas.kEY_NUM7, Canvas.kEY_NUM9]))
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    pure ()

new_4 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> InputProbability.InputProbability -> Visitor.Visitor -> IO BasicRandomAI
new_4 ownerLayerInterface gameInput inputProbability visitor = do
    this <- newRecord_
    init_4 this ownerLayerInterface gameInput inputProbability visitor
    pure this

init_4 :: BasicRandomAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> InputProbability.InputProbability -> Visitor.Visitor -> IO ()
init_4 this ownerLayerInterface gameInput inputProbability visitor = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).inputProbability (inputProbability)
        jset (this).visitor (visitor)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: BasicRandomAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: BasicRandomAI)) a1

processAI_impl :: BasicRandomAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        when (jio (TimeDelayHelper.isTime ((jio (InputProbability.getTimeDelayHelper ((jget (this).inputProbability))))) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            assignedValue <- (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) (jio (InputProbability.getMax ((jget (this).inputProbability)))))
            jset (this).i_random (assignedValue)
            repeat <- newIORef (False)
            repeatLikelyhoodIntegerArray <- (InputProbability.getRepeatLikelyhoodIntegerArray ((jget (this).inputProbability)))
            when (((jio (BasicAI.getLastKey this)) /= (Prelude.negate 1)) && ((jio (intValue ((jindex repeatLikelyhoodIntegerArray ((jio (BasicAI.getLastKey this))))))) >= (jget (this).i_random))) $ do
                jset repeat (True)
            when (Prelude.not (jget repeat)) $ do
                likelyhoodIntegerArray <- (InputProbability.getLikelyhoodIntegerArray ((jget (this).inputProbability)))
                assignedValue <- (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) (jio (InputProbability.getMax ((jget (this).inputProbability)))))
                jset (this).i_random (assignedValue)
                let size = (jlength (jget (this).keyArray))
                likelyhoodIntegerKeyArray <- newIORef (javaNull)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let key = (jindex ((jget (this).keyArray)) (index))
                    jset likelyhoodIntegerKeyArray ((jindex likelyhoodIntegerArray (key)))
                    when (((jlength likelyhoodIntegerArray) >= key) && ((jindex ((jget likelyhoodIntegerKeyArray)) (0)) /= javaNull)) $ do
                        when (((jget (this).i_random) >= (jio (intValue ((jindex ((jget likelyhoodIntegerKeyArray)) (0)))))) && ((jget (this).i_random) < (jio (intValue ((jindex ((jget likelyhoodIntegerKeyArray)) (1))))))) $ do
                            Control.Monad.void (BasicAI.setLastKey this key)
                            throwIO JavaBreak
            Control.Monad.void (Visitor.visit ((jget (this).visitor)) this)
        pure ()


