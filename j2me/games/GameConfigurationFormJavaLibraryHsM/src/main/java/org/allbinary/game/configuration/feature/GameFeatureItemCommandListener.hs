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
-- package org.allbinary.game.configuration.feature
module GameFeatureItemCommandListener where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified Item -- javax.microedition.lcdui.Item
import qualified ItemCommandListener -- javax.microedition.lcdui.ItemCommandListener
import qualified GameConfigurationGauge -- org.allbinary.game.configuration.GameConfigurationGauge
import qualified GameConfigurationUtil -- org.allbinary.game.configuration.GameConfigurationUtil
import qualified GameOptionsForm -- org.allbinary.game.configuration.GameOptionsForm
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified MidletStrings -- org.allbinary.midlet.MidletStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ItemCommandListener
data GameFeatureItemCommandListener = GameFeatureItemCommandListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameOptionsForm :: IORef (GameOptionsForm.GameOptionsForm)
    }

instance JavaNull GameFeatureItemCommandListener where
    javaNull = javaNullRecord "GameFeatureItemCommandListener"

instance JavaEquals GameFeatureItemCommandListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureItemCommandListener where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureItemCommandListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureItemCommandListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    gameOptionsForm <- newIORef javaNull
    let this = GameFeatureItemCommandListener header_ logUtil gameOptionsForm
    jregisterLevel header_ this
    ItemCommandListener.registerInterface_ header_
    jregisterMethod header_ "commandAction" (\() -> commandAction_impl this)
    pure this

initFields_ :: GameFeatureItemCommandListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameOptionsForm (javaNull)
    pure ()

new_1 :: GameOptionsForm.GameOptionsForm -> IO GameFeatureItemCommandListener
new_1 gameOptionsForm = do
    this <- newRecord_
    init_1 this gameOptionsForm
    pure this

init_1 :: GameFeatureItemCommandListener -> GameOptionsForm.GameOptionsForm -> IO ()
init_1 this gameOptionsForm = do
        initFields_ this
        jset (this).gameOptionsForm (gameOptionsForm)
        pure ()


commandAction :: (JavaObjectClass this_) => this_ -> Command.Command -> Item.Item -> IO (())
commandAction object_ a1 a2 = jmethod object_ "commandAction" (\() -> (commandAction_impl (javaCast object_ :: GameFeatureItemCommandListener))) () a1 a2

commandAction_super :: (JavaObjectClass this_) => this_ -> Command.Command -> Item.Item -> IO (())
commandAction_super object_ a1 a2 = (commandAction_impl (javaCast object_ :: GameFeatureItemCommandListener)) a1 a2

commandAction_impl :: GameFeatureItemCommandListener -> Command.Command -> Item.Item -> IO (())
commandAction_impl this command item = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget ((jio (MidletStrings.getInstance))).cOMMAND_ACTION) e)
            ) $ do
            itemLabel <- (Item.getLabel item)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).iTEM_LABEL)))) itemLabel))))) this (jget ((jio (MidletStrings.getInstance))).cOMMAND_ACTION))
            when (javaInstanceOf item "GameConfigurationGauge") $ do
                Control.Monad.void (GameConfigurationUtil.change ((jio (GameConfigurationUtil.getInstance))) (jget (this).gameOptionsForm) (javaCast item :: GameConfigurationGauge.GameConfigurationGauge))
        pure ()


