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
-- package org.allbinary.game.ag.ai
module NumberOnOwnGroupSequenceAIFactory where

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
import qualified NumberInSameGroupSequence -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified NumberOnOwnGroupSequenceAI -- same package or java.lang
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data NumberOnOwnGroupSequenceAIFactory = NumberOnOwnGroupSequenceAIFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NumberOnOwnGroupSequenceAIFactory where
    javaNull = javaNullRecord "NumberOnOwnGroupSequenceAIFactory"

instance JavaEquals NumberOnOwnGroupSequenceAIFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberOnOwnGroupSequenceAIFactory where
    (==) = jrecordEquals

instance JavaObjectClass NumberOnOwnGroupSequenceAIFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NumberOnOwnGroupSequenceAIFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = NumberOnOwnGroupSequenceAIFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: NumberOnOwnGroupSequenceAIFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO NumberOnOwnGroupSequenceAIFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NumberOnOwnGroupSequenceAIFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: NumberOnOwnGroupSequenceAIFactory))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: NumberOnOwnGroupSequenceAIFactory)) a1 a2 a3 a4

getInstance_impl :: NumberOnOwnGroupSequenceAIFactory -> ABHashtable.ABHashtable -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_impl this hashtable artificialIntelligenceInterface ownerLayerInterface gameInput = do
        let integerArray = (jget ((jio (NumberInSameGroupSequence.getInstance))).nUMBER_ON_SAME_TEAM_SEQUENCE)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        forM_ [0 .. (jlength integerArray) - 1] $ \index -> javaIteration (pure ()) $ do
            integerCanBeNull <- (ABHashtable.get hashtable (javaCast (jindex integerArray (index)) :: Any.Any))
            when (integerCanBeNull == javaNull) $ do
                throwIO JavaBreak
            Control.Monad.void (BasicArrayList.add list integerCanBeNull)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Total AI Properties: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size list)))
        Control.Monad.void (StringMaker.append stringBuffer " == Total AI: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jlength artificialIntelligenceInterface))
        Control.Monad.void (StringMaker.append stringBuffer " + 1")
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).gET_INSTANCE))
        when (((jlength artificialIntelligenceInterface) - 1) > (jio (BasicArrayList.size list))) $ do
            javaThrow ((JavaException "Exception" "Not enough AI properties."))
        when (((jlength artificialIntelligenceInterface) - 1) < (jio (BasicArrayList.size list))) $ do
            javaThrow ((JavaException "Exception" "Too Many AI properties."))
        let numberOnSameTeam = (jnewArray ((jio (BasicArrayList.size list))) javaNull)
        forM_ [0 .. (jlength numberOnSameTeam) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex numberOnSameTeam (index) ((javaCast (jindex ((jget (list).objectArray)) (index)) :: Int))
        (fmap (\value_ -> javaCast value_ :: ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) (NumberOnOwnGroupSequenceAI.new_4 numberOnSameTeam artificialIntelligenceInterface ownerLayerInterface gameInput))


