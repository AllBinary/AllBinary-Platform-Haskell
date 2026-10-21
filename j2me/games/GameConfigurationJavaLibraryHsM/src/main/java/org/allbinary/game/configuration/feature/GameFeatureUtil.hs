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
module GameFeatureUtil where

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
import qualified Features -- same package or java.lang
import qualified Feature -- same package or java.lang
import qualified GameFeatureChoiceGroups -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified ChoiceGroup -- javax.microedition.lcdui.ChoiceGroup
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil

data GameFeatureUtil = GameFeatureUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , oN_GAME_FEATURE_CHANGE :: IORef (String)
    , gAME_FEATURE_CHANGED :: IORef (String)
    }

instance JavaNull GameFeatureUtil where
    javaNull = javaNullRecord "GameFeatureUtil"

instance JavaEquals GameFeatureUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    enumerationUtil <- newIORef javaNull
    oN_GAME_FEATURE_CHANGE <- newIORef ""
    gAME_FEATURE_CHANGED <- newIORef ""
    let this = GameFeatureUtil header_ logUtil tsUtil enumerationUtil oN_GAME_FEATURE_CHANGE gAME_FEATURE_CHANGED
    jregisterLevel header_ this
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "updateMultiple" (\() -> updateMultiple_impl this)
    jregisterMethod header_ "updateExclusiveForChoiceGroup" (\() -> updateExclusiveForChoiceGroup_impl this)
    jregisterMethod header_ "isExclusive" (\() -> isExclusive_impl this)
    jregisterMethod header_ "updateExclusive" (\() -> updateExclusive_impl this)
    jregisterMethod header_ "updateExclusiveList" (\() -> updateExclusiveList_impl this)
    pure this

initFields_ :: GameFeatureUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.oN_GAME_FEATURE_CHANGE ("onGameFeatureChange")
    jset this.gAME_FEATURE_CHANGED ("Game Feature Changed: ")
    pure ()

new_ :: IO GameFeatureUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameFeatureUtil)
getInstance = do
        pure (GameFeatureUtil.instance_)


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: GameFeatureUtil))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: GameFeatureUtil)) a1

setDefault_impl :: GameFeatureUtil -> ChoiceGroup.ChoiceGroup -> IO (())
setDefault_impl this choiceGroup = do
        stringBuffer <- (StringMaker.new_)
        let mETHOD_NAME = "setDefault"
        let sELECTED_ARRAY_RETURN = "selectedArray_return["
        let sELECTED_SEP = "] = "
        let selectedArray_return = (jnewArray ((jio (ChoiceGroup.size choiceGroup))) False)
        total <- (ChoiceGroup.getSelectedFlags choiceGroup selectedArray_return)
        Control.Monad.void (StringMaker.append stringBuffer "Multiple Total Choices: ")
        Control.Monad.void (StringMaker.appendint stringBuffer total)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
        features <- (Features.getInstance)
        forM_ [0 .. (jlength selectedArray_return) - 1] $ \index -> javaIteration (pure ()) $ do
            let isSelected = (jindex selectedArray_return (index))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_ARRAY_RETURN)
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_SEP)
            Control.Monad.void (StringMaker.appendboolean stringBuffer isSelected)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
            selectedChoiceLabel <- (ChoiceGroup.getString choiceGroup index)
            gameFeature <- (Feature.getInstance selectedChoiceLabel)
            if (jio (Features.isDefault features gameFeature)) then do
                Control.Monad.void (Features.add features gameFeature)
                Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup index True)
            else do
                Control.Monad.void (Features.remove features gameFeature)
                Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup index False)
        pure ()


-- throws Exception
updateMultiple :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
updateMultiple object_ a1 = jmethod object_ "updateMultiple" (\() -> (updateMultiple_impl (javaCast object_ :: GameFeatureUtil))) () a1

updateMultiple_super :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
updateMultiple_super object_ a1 = (updateMultiple_impl (javaCast object_ :: GameFeatureUtil)) a1

updateMultiple_impl :: GameFeatureUtil -> ChoiceGroup.ChoiceGroup -> IO (())
updateMultiple_impl this choiceGroup = do
        stringBuffer <- (StringMaker.new_)
        let mETHOD_NAME = "updateMultiple"
        let sELECTED_ARRAY_RETURN = "selectedArray_return["
        let sELECTED_SEP = "] = "
        let selectedArray_return = (jnewArray ((jio (ChoiceGroup.size choiceGroup))) False)
        total <- (ChoiceGroup.getSelectedFlags choiceGroup selectedArray_return)
        Control.Monad.void (StringMaker.append stringBuffer "Multiple Total Choices: ")
        Control.Monad.void (StringMaker.appendint stringBuffer total)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
        features <- (Features.getInstance)
        forM_ [0 .. (jlength selectedArray_return) - 1] $ \index -> javaIteration (pure ()) $ do
            let isSelected = (jindex selectedArray_return (index))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_ARRAY_RETURN)
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_SEP)
            Control.Monad.void (StringMaker.appendboolean stringBuffer isSelected)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
            selectedChoiceLabel <- (ChoiceGroup.getString choiceGroup index)
            gameFeature <- (Feature.getInstance selectedChoiceLabel)
            if ((Prelude.not isSelected) && (jio (Features.isFeature features gameFeature))) then do
                Control.Monad.void (Features.remove features gameFeature)
            else when (isSelected && (Prelude.not (jio (Features.isFeature features gameFeature)))) $ do
                Control.Monad.void (Features.add features gameFeature)
        pure ()


-- throws Exception
updateExclusiveForChoiceGroup :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
updateExclusiveForChoiceGroup object_ a1 = jmethod object_ "updateExclusiveForChoiceGroup" (\() -> (updateExclusiveForChoiceGroup_impl (javaCast object_ :: GameFeatureUtil))) () a1

updateExclusiveForChoiceGroup_super :: (JavaObjectClass this_) => this_ -> ChoiceGroup.ChoiceGroup -> IO (())
updateExclusiveForChoiceGroup_super object_ a1 = (updateExclusiveForChoiceGroup_impl (javaCast object_ :: GameFeatureUtil)) a1

updateExclusiveForChoiceGroup_impl :: GameFeatureUtil -> ChoiceGroup.ChoiceGroup -> IO (())
updateExclusiveForChoiceGroup_impl this choiceGroup = do
        stringBuffer <- (StringMaker.new_)
        let mETHOD_NAME = "updateExclusive"
        let sELECTED_ARRAY_RETURN = "selectedArray_return["
        let sELECTED_SEP = "] = "
        let selectedArray_return = (jnewArray ((jio (ChoiceGroup.size choiceGroup))) False)
        total <- (ChoiceGroup.getSelectedFlags choiceGroup selectedArray_return)
        Control.Monad.void (StringMaker.append stringBuffer "Exclusive Total Choices: 1==")
        Control.Monad.void (StringMaker.appendint stringBuffer total)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
        forM_ [0 .. (jlength selectedArray_return) - 1] $ \index -> javaIteration (pure ()) $ do
            let isSelected = (jindex selectedArray_return (index))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_ARRAY_RETURN)
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer sELECTED_SEP)
            Control.Monad.void (StringMaker.appendboolean stringBuffer isSelected)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
            when isSelected $ do
                selectedChoiceLabel <- (ChoiceGroup.getString choiceGroup index)
                Control.Monad.void (GameFeatureUtil.updateExclusive this selectedChoiceLabel)
        pure ()


isExclusive :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isExclusive object_ a1 = jmethod object_ "isExclusive" (\() -> (isExclusive_impl (javaCast object_ :: GameFeatureUtil))) () a1

isExclusive_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isExclusive_super object_ a1 = (isExclusive_impl (javaCast object_ :: GameFeatureUtil)) a1

isExclusive_impl :: GameFeatureUtil -> String -> IO (Bool)
isExclusive_impl this itemLabel = do
    javaCatchReturn $ do
        enumeration <- (ABHashtable.keys ((jio (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance)))))))
        name <- newIORef ("")
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            jset name ((javaCast (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)) :: String))
            when ((jio (TsUtil.compareTo ((jget (this).tsUtil)) itemLabel (jget name))) == 0) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
updateExclusive :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateExclusive object_ a1 = jmethod object_ "updateExclusive" (\() -> (updateExclusive_impl (javaCast object_ :: GameFeatureUtil))) () a1

updateExclusive_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateExclusive_super object_ a1 = (updateExclusive_impl (javaCast object_ :: GameFeatureUtil)) a1

updateExclusive_impl :: GameFeatureUtil -> String -> IO (())
updateExclusive_impl this selectedChoiceLabel = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).iTEM_LABEL)))) selectedChoiceLabel))))) this "updateExclusive")
        gameFeature <- (Feature.getInstance selectedChoiceLabel)
        hashtable <- (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance))))
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        basicArrayList <- newIORef (javaNull)
        anyType <- newIORef (javaNull)
        let size = (jlength objectArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset anyType ((javaCast (jindex objectArray (index)) :: Any.Any))
            jset basicArrayList ((javaCast (jio (ABHashtable.get hashtable (jget anyType))) :: BasicArrayList.BasicArrayList))
            Control.Monad.void (GameFeatureUtil.updateExclusiveList this gameFeature (jget basicArrayList))
        pure ()


-- throws Exception
updateExclusiveList :: (JavaObjectClass this_) => this_ -> Feature.Feature -> BasicArrayList.BasicArrayList -> IO (())
updateExclusiveList object_ a1 a2 = jmethod object_ "updateExclusiveList" (\() -> (updateExclusiveList_impl (javaCast object_ :: GameFeatureUtil))) () a1 a2

updateExclusiveList_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> BasicArrayList.BasicArrayList -> IO (())
updateExclusiveList_super object_ a1 a2 = (updateExclusiveList_impl (javaCast object_ :: GameFeatureUtil)) a1 a2

updateExclusiveList_impl :: GameFeatureUtil -> Feature.Feature -> BasicArrayList.BasicArrayList -> IO (())
updateExclusiveList_impl this gameFeature list = do
        when (jio (BasicArrayList.contains list gameFeature)) $ do
            features <- (Features.getInstance)
            addIndex <- (BasicArrayList.indexOf list gameFeature)
            size <- (BasicArrayList.size list)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                if (addIndex /= index) then do
                    Control.Monad.void (Features.remove features (javaCast (jindex ((jget (list).objectArray)) (index)) :: Feature.Feature))
                else do
                    Control.Monad.void (Features.add features (javaCast (jindex ((jget (list).objectArray)) (index)) :: Feature.Feature))
        pure ()


