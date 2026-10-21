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
module GameFeatureItemStateListener where

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
import qualified GameFeatureFactory -- same package or java.lang
import qualified GameFeature -- same package or java.lang
import qualified GameFeatureUtil -- same package or java.lang
import qualified ChoiceGroup -- javax.microedition.lcdui.ChoiceGroup
import qualified Item -- javax.microedition.lcdui.Item
import qualified ItemStateListener -- javax.microedition.lcdui.ItemStateListener
import qualified GameConfigurationGauge -- org.allbinary.game.configuration.GameConfigurationGauge
import qualified GameConfigurationUtil -- org.allbinary.game.configuration.GameConfigurationUtil
import qualified GameOptionsForm -- org.allbinary.game.configuration.GameOptionsForm
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements ItemStateListener
data GameFeatureItemStateListener = GameFeatureItemStateListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameOptionsForm :: IORef (GameOptionsForm.GameOptionsForm)
    }

instance JavaNull GameFeatureItemStateListener where
    javaNull = javaNullRecord "GameFeatureItemStateListener"

instance JavaEquals GameFeatureItemStateListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureItemStateListener where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureItemStateListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE toggleList #-}
toggleList = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureItemStateListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    gameOptionsForm <- newIORef javaNull
    let this = GameFeatureItemStateListener header_ logUtil gameOptionsForm
    jregisterLevel header_ this
    ItemStateListener.registerInterface_ header_
    jregisterMethod header_ "itemStateChanged" (\() -> itemStateChanged_impl this)
    pure this

initFields_ :: GameFeatureItemStateListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameOptionsForm (javaNull)
    pure ()

new_1 :: GameOptionsForm.GameOptionsForm -> IO GameFeatureItemStateListener
new_1 gameOptionsForm = do
    this <- newRecord_
    init_1 this gameOptionsForm
    pure this

init_1 :: GameFeatureItemStateListener -> GameOptionsForm.GameOptionsForm -> IO ()
init_1 this gameOptionsForm = do
        initFields_ this
        jset (this).gameOptionsForm (gameOptionsForm)
        gameFeatureFactory <- (GameFeatureFactory.getInstance)
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).aRTIFICIAL_INTELLEGENCE_PROCESSOR))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).cOLLIDABLE_INTERFACE_LAYER_PROCESSOR))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).dAMAGE_FLOATERS))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).dROPPED_ITEMS))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).gAME_INPUT_LAYER_PROCESSOR))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).hEALTH_BARS))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).sOUND))
        Control.Monad.void (GameFeatureItemStateListener.add (jget (gameFeatureFactory).tICKABLE_LAYER_PROCESSOR))
        pure ()


add :: GameFeature.GameFeature -> IO (())
add gameFeature = do
        when (Prelude.not (jio (contains ((jget GameFeatureItemStateListener.toggleList)) gameFeature))) $ do
            Control.Monad.void (add ((jget GameFeatureItemStateListener.toggleList)) gameFeature)
        pure ()


itemStateChanged :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged object_ a1 = jmethod object_ "itemStateChanged" (\() -> (itemStateChanged_impl (javaCast object_ :: GameFeatureItemStateListener))) () a1

itemStateChanged_super :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged_super object_ a1 = (itemStateChanged_impl (javaCast object_ :: GameFeatureItemStateListener)) a1

itemStateChanged_impl :: GameFeatureItemStateListener -> Item.Item -> IO (())
itemStateChanged_impl this item = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "itemStateChanged" e)
            ) $ do
            itemLabel <- (Item.getLabel item)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).iTEM_LABEL)))) itemLabel))))) this "itemStateChanged")
            if (javaInstanceOf item "GameConfigurationGauge") then do
                Control.Monad.void (GameConfigurationUtil.change ((jio (GameConfigurationUtil.getInstance))) (jget (this).gameOptionsForm) (javaCast item :: GameConfigurationGauge.GameConfigurationGauge))
            else when (javaInstanceOf item "ChoiceGroup") $ do
                gameFeatureUtil <- (GameFeatureUtil.getInstance)
                if (jio (GameFeatureUtil.isExclusive gameFeatureUtil itemLabel)) then do
                    Control.Monad.void (GameFeatureUtil.updateExclusiveForChoiceGroup gameFeatureUtil (javaCast item :: ChoiceGroup.ChoiceGroup))
                else do
                    Control.Monad.void (GameFeatureUtil.updateMultiple gameFeatureUtil (javaCast item :: ChoiceGroup.ChoiceGroup))
        pure ()


