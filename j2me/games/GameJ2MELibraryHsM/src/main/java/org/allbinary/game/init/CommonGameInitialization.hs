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
-- package org.allbinary.game.init
module CommonGameInitialization (module CommonGameInitialization, module BaseGameInitialization) where

import BaseGameInitialization hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, initGame, initGame_super, initGame_impl, commonStrings)
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
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified ResourceInitialization -- org.allbinary.game.resource.ResourceInitialization
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BaseGameInitialization

data CommonGameInitialization = CommonGameInitialization
    { header_ :: JavaHeader
    , base :: BaseGameInitialization.BaseGameInitialization
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull CommonGameInitialization where
    javaNull = javaNullRecord "CommonGameInitialization"

instance JavaEquals CommonGameInitialization where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonGameInitialization where
    (==) = jrecordEquals

instance JavaObjectClass CommonGameInitialization where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CommonGameInitialization
newRecord_ = do
    base <- BaseGameInitialization.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    let this = CommonGameInitialization header_ base commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initGame" (\() -> initGame_impl this)
    pure this

initFields_ :: CommonGameInitialization -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_2 :: JavaArray (ResourceInitialization.ResourceInitialization) -> Int -> IO CommonGameInitialization
new_2 resourceInitializationArray portion = do
    this <- newRecord_
    init_2 this resourceInitializationArray portion
    pure this

init_2 :: CommonGameInitialization -> JavaArray (ResourceInitialization.ResourceInitialization) -> Int -> IO ()
init_2 this resourceInitializationArray portion = do
        BaseGameInitialization.init_2 this.base (resourceInitializationArray) (portion)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CommonGameInitialization))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: CommonGameInitialization)) a1 a2 a3

init_impl :: CommonGameInitialization -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_impl this abeClientInformation commandListener level = do
        Control.Monad.void (BaseGameInitialization.init_super this.base abeClientInformation commandListener level)
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        when ((Prelude.not (jio (BaseGameInitialization.isGameInitialized this))) && (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL)))))) $ do
            Control.Monad.void (BaseGameInitialization.setGameInitialized this True)
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (SmallIntegerSingletonFactory.init ((jio (SmallIntegerSingletonFactory.getInstance))))
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Integers")
            Control.Monad.void (PointFactory.init ((jio (PointFactory.getInstance))))
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Points")
            Control.Monad.void (AngleFactory.getInstance)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas 50 "Angles")
            Control.Monad.void (CommonGameInitialization.initGame this)
            Control.Monad.void (init ((jindex ((jget (this).base.resourceInitializationArray)) ((jget (this).base.gAME_RESOURCES)))))
        Control.Monad.void (BaseGameInitialization.resourceInitialization_super this.base level)
        pure ()


-- throws Exception
initGame :: (JavaObjectClass this_) => this_ -> IO (())
initGame object_ = jmethod object_ "initGame" (\() -> (initGame_impl (javaCast object_ :: CommonGameInitialization))) ()

initGame_super :: (JavaObjectClass this_) => this_ -> IO (())
initGame_super object_ = (initGame_impl (javaCast object_ :: CommonGameInitialization))

initGame_impl :: CommonGameInitialization -> IO (())
initGame_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


