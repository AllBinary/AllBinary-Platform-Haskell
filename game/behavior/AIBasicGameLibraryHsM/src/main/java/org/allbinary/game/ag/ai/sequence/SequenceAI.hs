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
-- package org.allbinary.game.ag.ai.sequence
module SequenceAI (module SequenceAI, module ArrayAI) where

import ArrayAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, next, next_super, next_impl, getIndex, getIndex_super, getIndex_impl, setIndex, setIndex_super, setIndex_impl, getSelectedArtificialIntelligenceInterface, getSelectedArtificialIntelligenceInterface_super, getSelectedArtificialIntelligenceInterface_impl, getName, getName_super, getName_impl, toString, toString_super, toString_impl, sEQUENCE_AI, index)
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
import qualified ArtificialIntelligence -- org.allbinary.ai.ArtificialIntelligence
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified ArtificialIntelligenceTransitionInterface -- org.allbinary.ai.ArtificialIntelligenceTransitionInterface
import qualified ArrayAI -- org.allbinary.game.ag.ai.ArrayAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data SequenceAI = SequenceAI
    { header_ :: JavaHeader
    , base :: ArrayAI.ArrayAI
    , index :: IORef (Int)
    }

instance JavaNull SequenceAI where
    javaNull = javaNullRecord "SequenceAI"

instance JavaEquals SequenceAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SequenceAI where
    (==) = jrecordEquals

instance JavaObjectClass SequenceAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sEQUENCE_AI = "Sequence AI"

newRecord_ :: IO SequenceAI
newRecord_ = do
    base <- ArrayAI.newRecord_
    let header_ = base.header_
    index <- newIORef 0
    let this = SequenceAI header_ base index
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "next" (\() -> next_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    jregisterMethod header_ "setIndex" (\() -> setIndex_impl this)
    jregisterMethod header_ "getSelectedArtificialIntelligenceInterface" (\() -> getSelectedArtificialIntelligenceInterface_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: SequenceAI -> IO ()
initFields_ this = do
    jset this.index (0)
    pure ()

new_3 :: JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO SequenceAI
new_3 artificialIntelligenceInterfaceArray ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this artificialIntelligenceInterfaceArray ownerLayerInterface gameInput
    pure this

init_3 :: SequenceAI -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this artificialIntelligenceInterfaceArray ownerLayerInterface gameInput = do
        ArrayAI.init_3 this.base (artificialIntelligenceInterfaceArray) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: SequenceAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: SequenceAI)) a1

processAI_impl :: SequenceAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        Control.Monad.void (processAI ((jindex ((jio (ArrayAI.getArtificialIntelligenceInterface this))) ((jget (this).index)))) allBinaryLayerManager)
        pure ()


next :: (JavaObjectClass this_) => this_ -> IO (())
next object_ = jmethod object_ "next" (\() -> (next_impl (javaCast object_ :: SequenceAI))) ()

next_super :: (JavaObjectClass this_) => this_ -> IO (())
next_super object_ = (next_impl (javaCast object_ :: SequenceAI))

next_impl :: SequenceAI -> IO (())
next_impl this = do
        jset (this).index ((jget (this).index) + 1)
        artificialIntelligenceInterface <- (SequenceAI.getSelectedArtificialIntelligenceInterface this)
        when ((jio (ArtificialIntelligenceInterface.getId artificialIntelligenceInterface)) == ArtificialIntelligence.aI_ID) $ do
            let artificialIntelligenceTransitionInterface = (javaCast artificialIntelligenceInterface :: ArtificialIntelligenceTransitionInterface.ArtificialIntelligenceTransitionInterface)
            Control.Monad.void (ArtificialIntelligenceTransitionInterface.transition artificialIntelligenceTransitionInterface)
        pure ()


getIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex object_ = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: SequenceAI))) ()

getIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex_super object_ = (getIndex_impl (javaCast object_ :: SequenceAI))

getIndex_impl :: SequenceAI -> IO (Int)
getIndex_impl this = do
        pure ((jget (this).index))


setIndex :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setIndex object_ a1 = jmethod object_ "setIndex" (\() -> (setIndex_impl (javaCast object_ :: SequenceAI))) () a1

setIndex_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setIndex_super object_ a1 = (setIndex_impl (javaCast object_ :: SequenceAI)) a1

setIndex_impl :: SequenceAI -> Int -> IO (())
setIndex_impl this index = do
        jset (this).index (index)
        pure ()


getSelectedArtificialIntelligenceInterface :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getSelectedArtificialIntelligenceInterface object_ = jmethod object_ "getSelectedArtificialIntelligenceInterface" (\() -> (getSelectedArtificialIntelligenceInterface_impl (javaCast object_ :: SequenceAI))) ()

getSelectedArtificialIntelligenceInterface_super :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getSelectedArtificialIntelligenceInterface_super object_ = (getSelectedArtificialIntelligenceInterface_impl (javaCast object_ :: SequenceAI))

getSelectedArtificialIntelligenceInterface_impl :: SequenceAI -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getSelectedArtificialIntelligenceInterface_impl this = do
        pure ((jindex ((jio (ArrayAI.getArtificialIntelligenceInterface this))) ((jget (this).index))))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SequenceAI))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SequenceAI))

getName_impl :: SequenceAI -> IO (String)
getName_impl this = do
        pure (SequenceAI.sEQUENCE_AI)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: SequenceAI))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: SequenceAI))

toString_impl :: SequenceAI -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (ArrayAI.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer " Selected AI: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (SequenceAI.getSelectedArtificialIntelligenceInterface this)))))
        (StringMaker.toString stringBuffer)


