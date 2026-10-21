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
-- package org.allbinary.media.audio
module Sounds where

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
import qualified SoundStrings -- same package or java.lang
import qualified SoundsFactoryInterface -- same package or java.lang
import qualified Sound -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Player -- javax.microedition.media.Player
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Sounds = Sounds
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , soundStrings :: IORef (SoundStrings.SoundStrings)
    , soundsFactoryInterface :: IORef (SoundsFactoryInterface.SoundsFactoryInterface)
    }

instance JavaNull Sounds where
    javaNull = javaNullRecord "Sounds"

instance JavaEquals Sounds where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Sounds where
    (==) = jrecordEquals

instance JavaObjectClass Sounds where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Sounds
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    soundStrings <- newIORef javaNull
    soundsFactoryInterface <- newIORef javaNull
    let this = Sounds header_ logUtil commonStrings soundStrings soundsFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "stopAll" (\() -> stopAll_impl this)
    jregisterMethod header_ "closeAll" (\() -> closeAll_impl this)
    pure this

initFields_ :: Sounds -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.soundStrings =<< (SoundStrings.getInstance)
    jset this.soundsFactoryInterface (javaNull)
    pure ()

new_1 :: SoundsFactoryInterface.SoundsFactoryInterface -> IO Sounds
new_1 soundsFactoryInterface = do
    this <- newRecord_
    init_1 this soundsFactoryInterface
    pure this

init_1 :: Sounds -> SoundsFactoryInterface.SoundsFactoryInterface -> IO ()
init_1 this soundsFactoryInterface = do
        initFields_ this
        jset (this).soundsFactoryInterface (soundsFactoryInterface)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Sounds))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: Sounds))

init_impl :: Sounds -> IO (())
init_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).iNIT))
        commonLabels <- (CommonLabels.getInstance)
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (SoundsFactoryInterface.init ((jget (this).soundsFactoryInterface)))
        soundInterfaceArray <- (SoundsFactoryInterface.getSoundInterfaceArray ((jget (this).soundsFactoryInterface)))
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        indexInteger <- newIORef (javaNull)
        indexString <- newIORef ("")
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jlength soundInterfaceArray) - 1] $ \i -> javaIteration (pure ()) $ do
            let soundInterface = (jindex soundInterfaceArray (i))
            when (soundInterface /= javaNull) $ do
                assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory i)
                jset indexInteger (assignedValue)
                jset indexString ((javaToString (jget indexInteger)))
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).iNDEX_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer (jget indexString))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).soundStrings)).sOUND))
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass soundInterface))))))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).iNIT))
                Control.Monad.void (Sound.init soundInterface)
                Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 100 (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).soundStrings)).iNIT_SOUND)))) (jget indexString)))))))
        Control.Monad.void (SoundsFactoryInterface.setInitialized ((jget (this).soundsFactoryInterface)) True)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).iNIT))
        pure ()


-- throws Exception
stopAll :: (JavaObjectClass this_) => this_ -> IO (())
stopAll object_ = jmethod object_ "stopAll" (\() -> (stopAll_impl (javaCast object_ :: Sounds))) ()

stopAll_super :: (JavaObjectClass this_) => this_ -> IO (())
stopAll_super object_ = (stopAll_impl (javaCast object_ :: Sounds))

stopAll_impl :: Sounds -> IO (())
stopAll_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).soundStrings)).sTOP_ALL))
        soundInterfaceArray <- (SoundsFactoryInterface.getSoundInterfaceArray ((jget (this).soundsFactoryInterface)))
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        player <- newIORef (javaNull)
        forM_ [0 .. (jlength soundInterfaceArray) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex soundInterfaceArray (index)) /= javaNull) $ do
                assignedValue <- (getPlayerP ((jindex soundInterfaceArray (index))))
                jset player (assignedValue)
                when ((jget player) /= javaNull) $ do
                    Control.Monad.void (Player.stop ((jget player)))
                    Control.Monad.void (ProgressCanvas.addPortion progressCanvas 100 (jget ((jget (this).soundStrings)).sTOPPING_SOUND) index)
        pure ()


-- throws Exception
closeAll :: (JavaObjectClass this_) => this_ -> IO (())
closeAll object_ = jmethod object_ "closeAll" (\() -> (closeAll_impl (javaCast object_ :: Sounds))) ()

closeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
closeAll_super object_ = (closeAll_impl (javaCast object_ :: Sounds))

closeAll_impl :: Sounds -> IO (())
closeAll_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).soundStrings)).cLOSE_ALL))
        soundInterfaceArray <- (SoundsFactoryInterface.getSoundInterfaceArray ((jget (this).soundsFactoryInterface)))
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        player <- newIORef (javaNull)
        forM_ [0 .. (jlength soundInterfaceArray) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex soundInterfaceArray (index)) /= javaNull) $ do
                assignedValue <- (getPlayerP ((jindex soundInterfaceArray (index))))
                jset player (assignedValue)
                when ((jget player) /= javaNull) $ do
                    Control.Monad.void (Player.close ((jget player)))
                    Control.Monad.void (ProgressCanvas.addPortion progressCanvas 100 (jget ((jget (this).soundStrings)).cLOSING_SOUND) index)
        pure ()


