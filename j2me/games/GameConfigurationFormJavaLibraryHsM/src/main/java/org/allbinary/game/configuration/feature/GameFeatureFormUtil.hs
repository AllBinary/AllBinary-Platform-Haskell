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
module GameFeatureFormUtil where

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
import qualified Any -- same package or java.lang
import qualified Features -- same package or java.lang
import qualified Feature -- same package or java.lang
import qualified GameFeatureUtil -- same package or java.lang
import qualified ChoiceGroup -- javax.microedition.lcdui.ChoiceGroup
import qualified Item -- javax.microedition.lcdui.Item
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified GameConfigurationGauge -- org.allbinary.game.configuration.GameConfigurationGauge
import qualified GameConfigurationUtil -- org.allbinary.game.configuration.GameConfigurationUtil
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified MEUtil -- org.allbinary.logic.MEUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil

data GameFeatureFormUtil = GameFeatureFormUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , meUtil :: IORef (MEUtil.MEUtil)
    }

instance JavaNull GameFeatureFormUtil where
    javaNull = javaNullRecord "GameFeatureFormUtil"

instance JavaEquals GameFeatureFormUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureFormUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureFormUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureFormUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    meUtil <- newIORef javaNull
    let this = GameFeatureFormUtil header_ logUtil meUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getChoiceGroup" (\() -> getChoiceGroup_impl this)
    jregisterMethod header_ "addChoiceGroup" (\() -> addChoiceGroup_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    pure this

initFields_ :: GameFeatureFormUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.meUtil =<< (MEUtil.getInstance)
    pure ()

new_ :: IO GameFeatureFormUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureFormUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameFeatureFormUtil)
getInstance = do
        pure (GameFeatureFormUtil.instance_)


getChoiceGroup :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup object_ a1 a2 a3 = jmethod object_ "getChoiceGroup" (\() -> (getChoiceGroup_impl (javaCast object_ :: GameFeatureFormUtil))) () a1 a2 a3

getChoiceGroup_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_super object_ a1 a2 a3 = (getChoiceGroup_impl (javaCast object_ :: GameFeatureFormUtil)) a1 a2 a3

getChoiceGroup_impl :: GameFeatureFormUtil -> ABHashtable.ABHashtable -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_impl this hashtable name option = do
        stringMaker <- (StringMaker.new_)
        choiceGroup <- (ChoiceGroup.new_4 name option (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (NullImage.nULL_IMAGE_ARRAY))
        let list = (javaCast (jio (ABHashtable.get hashtable (javaCast name :: Any.Any))) :: BasicArrayList.BasicArrayList)
        features <- (Features.getInstance)
        let aDD_CHOICE = ": Adding Choice: "
        let gET_CHOICE_GROUP = "getChoiceGroup"
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let gameFeature = (javaCast (jindex ((jget (list).objectArray)) (index)) :: Feature.Feature)
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) aDD_CHOICE))) (jio (Feature.toString gameFeature))))))) this gET_CHOICE_GROUP)
            Control.Monad.void (ChoiceGroup.append choiceGroup (jio (Feature.toString gameFeature)) (NullImage.nULL_IMAGE))
            when (jio (Features.isFeature features gameFeature)) $ do
                Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup index True)
        pure (choiceGroup)


addChoiceGroup :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> ABHashtable.ABHashtable -> Int -> IO (())
addChoiceGroup object_ a1 a2 a3 = jmethod object_ "addChoiceGroup" (\() -> (addChoiceGroup_impl (javaCast object_ :: GameFeatureFormUtil))) () a1 a2 a3

addChoiceGroup_super :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> ABHashtable.ABHashtable -> Int -> IO (())
addChoiceGroup_super object_ a1 a2 a3 = (addChoiceGroup_impl (javaCast object_ :: GameFeatureFormUtil)) a1 a2 a3

addChoiceGroup_impl :: GameFeatureFormUtil -> CommandForm.CommandForm -> ABHashtable.ABHashtable -> Int -> IO (())
addChoiceGroup_impl this form hashtable option = do
        stringMaker <- (StringMaker.new_)
        let aDDING_CHOICE_GROUP = "Adding Choice Group: "
        let aDD_CHOICE_GROUP = "addChoiceGroup"
        size <- (ABHashtable.size hashtable)
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        name <- newIORef ("")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset name ((javaCast (jindex objectArray (index)) :: String))
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker aDDING_CHOICE_GROUP))) (jget name)))))) this aDD_CHOICE_GROUP)
            Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) form (javaCast (jio (GameFeatureFormUtil.getChoiceGroup this hashtable (jget name) option))))
        pure ()


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: GameFeatureFormUtil))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> CommandForm.CommandForm -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: GameFeatureFormUtil)) a1

setDefault_impl :: GameFeatureFormUtil -> CommandForm.CommandForm -> IO (())
setDefault_impl this form = do
        size <- (CommandForm.size form)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            item <- (CommandForm.get form index)
            if (javaInstanceOf item "GameConfigurationGauge") then do
                Control.Monad.void (GameConfigurationUtil.setDefault ((jio (GameConfigurationUtil.getInstance))) (javaCast item :: GameConfigurationGauge.GameConfigurationGauge))
            else when (javaInstanceOf item "ChoiceGroup") $ do
                Control.Monad.void (GameFeatureUtil.setDefault ((jio (GameFeatureUtil.getInstance))) (javaCast item :: ChoiceGroup.ChoiceGroup))
        pure ()


