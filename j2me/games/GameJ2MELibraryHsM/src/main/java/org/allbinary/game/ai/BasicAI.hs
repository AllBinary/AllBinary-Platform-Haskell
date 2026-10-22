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
-- package org.allbinary.game.ai
module BasicAI (module BasicAI, module ArtificialIntelligence) where

import ArtificialIntelligence hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, processKeyAI, processKeyAI_super, processKeyAI_impl, setLastKey, setLastKey_super, setLastKey_impl, getLastKey, getLastKey_super, getLastKey_impl, getOwnerLayerInterface, getOwnerLayerInterface_super, getOwnerLayerInterface_impl, getGameInput, getGameInput_super, getGameInput_impl, getName, getName_super, getName_impl, toString, toString_super, toString_impl, getSourceId, getSourceId_super, getSourceId_impl, aI_VISITOR, iD, logUtil, commonStrings, gameKeyEventFactory, ownerLayerInterface, gameInput, lastKey)
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
import qualified Class -- same package or java.lang
import qualified ArtificialIntelligence -- org.allbinary.ai.ArtificialIntelligence
import qualified CanvasUtil -- org.allbinary.game.displayable.canvas.CanvasUtil
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements GameKeyEventSourceInterface
data BasicAI = BasicAI
    { header_ :: JavaHeader
    , base :: ArtificialIntelligence.ArtificialIntelligence
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , ownerLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , gameInput :: IORef (GameInput.GameInput)
    , lastKey :: IORef (Int)
    }

instance JavaNull BasicAI where
    javaNull = javaNullRecord "BasicAI"

instance JavaEquals BasicAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicAI where
    (==) = jrecordEquals

instance JavaObjectClass BasicAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE aI_VISITOR #-}
aI_VISITOR = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2))

{-# NOINLINE iD #-}
iD = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 1))

newRecord_ :: IO BasicAI
newRecord_ = do
    base <- ArtificialIntelligence.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    ownerLayerInterface <- newIORef javaNull
    gameInput <- newIORef javaNull
    lastKey <- newIORef 0
    let this = BasicAI header_ base logUtil commonStrings gameKeyEventFactory ownerLayerInterface gameInput lastKey
    jregisterLevel header_ this
    GameKeyEventSourceInterface.registerInterface_ header_
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "processKeyAI" (\() -> processKeyAI_impl this)
    jregisterMethod header_ "setLastKey" (\() -> setLastKey_impl this)
    jregisterMethod header_ "getLastKey" (\() -> getLastKey_impl this)
    jregisterMethod header_ "getOwnerLayerInterface" (\() -> getOwnerLayerInterface_impl this)
    jregisterMethod header_ "getGameInput" (\() -> getGameInput_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    pure this

initFields_ :: BasicAI -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.ownerLayerInterface (javaNull)
    jset this.gameInput (javaNull)
    jset this.lastKey ((Prelude.negate 1))
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO BasicAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: BasicAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        ArtificialIntelligence.init_ this.base
        initFields_ this
        jset (this).ownerLayerInterface (ownerLayerInterface)
        jset (this).gameInput (gameInput)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: BasicAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: BasicAI)) a1

processAI_impl :: BasicAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
processKeyAI :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processKeyAI object_ a1 = jmethod object_ "processKeyAI" (\() -> (processKeyAI_impl (javaCast object_ :: BasicAI))) () a1

processKeyAI_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processKeyAI_super object_ a1 = (processKeyAI_impl (javaCast object_ :: BasicAI)) a1

processKeyAI_impl :: BasicAI -> Int -> IO (())
processKeyAI_impl this key = do
        when (key /= (Prelude.negate 1)) $ do
            Control.Monad.void (GameInput.add ((jget (this).gameInput)) (jio (GameKeyEventFactory.getInstanceForKey ((jget (this).gameKeyEventFactory)) (javaCast this) key)))
        pure ()


setLastKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastKey object_ a1 = jmethod object_ "setLastKey" (\() -> (setLastKey_impl (javaCast object_ :: BasicAI))) () a1

setLastKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastKey_super object_ a1 = (setLastKey_impl (javaCast object_ :: BasicAI)) a1

setLastKey_impl :: BasicAI -> Int -> IO (())
setLastKey_impl this lastKey = do
        jset (this).lastKey (lastKey)
        pure ()


getLastKey :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastKey object_ = jmethod object_ "getLastKey" (\() -> (getLastKey_impl (javaCast object_ :: BasicAI))) ()

getLastKey_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastKey_super object_ = (getLastKey_impl (javaCast object_ :: BasicAI))

getLastKey_impl :: BasicAI -> IO (Int)
getLastKey_impl this = do
        pure ((jget (this).lastKey))


getOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface object_ = jmethod object_ "getOwnerLayerInterface" (\() -> (getOwnerLayerInterface_impl (javaCast object_ :: BasicAI))) ()

getOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_super object_ = (getOwnerLayerInterface_impl (javaCast object_ :: BasicAI))

getOwnerLayerInterface_impl :: BasicAI -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_impl this = do
        pure ((jget (this).ownerLayerInterface))


getGameInput :: (JavaObjectClass this_) => this_ -> IO (GameInput.GameInput)
getGameInput object_ = jmethod object_ "getGameInput" (\() -> (getGameInput_impl (javaCast object_ :: BasicAI))) ()

getGameInput_super :: (JavaObjectClass this_) => this_ -> IO (GameInput.GameInput)
getGameInput_super object_ = (getGameInput_impl (javaCast object_ :: BasicAI))

getGameInput_impl :: BasicAI -> IO (GameInput.GameInput)
getGameInput_impl this = do
        pure ((jget (this).gameInput))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicAI))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicAI))

getName_impl :: BasicAI -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicAI))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicAI))

toString_impl :: BasicAI -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicAI.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer " LastKey: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CanvasUtil.getKeyName (jio (BasicAI.getLastKey this)))))
        (StringMaker.toString stringBuffer)


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: BasicAI))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: BasicAI))

getSourceId_impl :: BasicAI -> IO (Int)
getSourceId_impl this = do
        pure (1)


