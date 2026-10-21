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
module GameFeatureFactory where

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
import qualified GameFeature -- same package or java.lang
import qualified Feature -- same package or java.lang

data GameFeatureFactory = GameFeatureFactory
    { header_ :: JavaHeader
    , sOUND :: IORef (GameFeature.GameFeature)
    , mUSIC :: IORef (GameFeature.GameFeature)
    , sCREEN_SHAKE :: IORef (Feature.Feature)
    , pOST_IMAGE_LOADING_MODIFICATION :: IORef (Feature.Feature)
    , hEALTH_BARS :: IORef (GameFeature.GameFeature)
    , dAMAGE_FLOATERS :: IORef (GameFeature.GameFeature)
    , gAME_INPUT_LAYER_PROCESSOR :: IORef (GameFeature.GameFeature)
    , aRTIFICIAL_INTELLEGENCE_PROCESSOR :: IORef (GameFeature.GameFeature)
    , cOLLIDABLE_INTERFACE_LAYER_PROCESSOR :: IORef (GameFeature.GameFeature)
    , tICKABLE_LAYER_PROCESSOR :: IORef (GameFeature.GameFeature)
    , cHEATING :: IORef (GameFeature.GameFeature)
    , dROPPED_ITEMS :: IORef (GameFeature.GameFeature)
    , dROPPED_ITEMS_FROM_DEATH :: IORef (GameFeature.GameFeature)
    , tEST_DESTROYED_LAYER_PROCESSOR :: IORef (GameFeature.GameFeature)
    , cOLLISIONS_WITH_SOURCE :: IORef (GameFeature.GameFeature)
    , cOLLISIONS_FORCED_TWO_DIMENSIONAL :: IORef (GameFeature.GameFeature)
    }

instance JavaNull GameFeatureFactory where
    javaNull = javaNullRecord "GameFeatureFactory"

instance JavaEquals GameFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    sOUND <- newIORef javaNull
    mUSIC <- newIORef javaNull
    sCREEN_SHAKE <- newIORef javaNull
    pOST_IMAGE_LOADING_MODIFICATION <- newIORef javaNull
    hEALTH_BARS <- newIORef javaNull
    dAMAGE_FLOATERS <- newIORef javaNull
    gAME_INPUT_LAYER_PROCESSOR <- newIORef javaNull
    aRTIFICIAL_INTELLEGENCE_PROCESSOR <- newIORef javaNull
    cOLLIDABLE_INTERFACE_LAYER_PROCESSOR <- newIORef javaNull
    tICKABLE_LAYER_PROCESSOR <- newIORef javaNull
    cHEATING <- newIORef javaNull
    dROPPED_ITEMS <- newIORef javaNull
    dROPPED_ITEMS_FROM_DEATH <- newIORef javaNull
    tEST_DESTROYED_LAYER_PROCESSOR <- newIORef javaNull
    cOLLISIONS_WITH_SOURCE <- newIORef javaNull
    cOLLISIONS_FORCED_TWO_DIMENSIONAL <- newIORef javaNull
    let this = GameFeatureFactory header_ sOUND mUSIC sCREEN_SHAKE pOST_IMAGE_LOADING_MODIFICATION hEALTH_BARS dAMAGE_FLOATERS gAME_INPUT_LAYER_PROCESSOR aRTIFICIAL_INTELLEGENCE_PROCESSOR cOLLIDABLE_INTERFACE_LAYER_PROCESSOR tICKABLE_LAYER_PROCESSOR cHEATING dROPPED_ITEMS dROPPED_ITEMS_FROM_DEATH tEST_DESTROYED_LAYER_PROCESSOR cOLLISIONS_WITH_SOURCE cOLLISIONS_FORCED_TWO_DIMENSIONAL
    jregisterLevel header_ this
    pure this

initFields_ :: GameFeatureFactory -> IO ()
initFields_ this = do
    jset this.sOUND =<< (GameFeature.new_1 "Sound")
    jset this.mUSIC =<< (GameFeature.new_1 "Music")
    jset this.sCREEN_SHAKE =<< (Feature.new_1 "Screen Shake")
    jset this.pOST_IMAGE_LOADING_MODIFICATION =<< (Feature.new_1 "Post Image Loading Modification (Scaling, Rotation, or Other)")
    jset this.hEALTH_BARS =<< (GameFeature.new_1 "Health Bars")
    jset this.dAMAGE_FLOATERS =<< (GameFeature.new_1 "Damage Floaters")
    jset this.gAME_INPUT_LAYER_PROCESSOR =<< (GameFeature.new_1 "Game Input Layer Processor")
    jset this.aRTIFICIAL_INTELLEGENCE_PROCESSOR =<< (GameFeature.new_1 "Artificial Intelligence Layer Processor")
    jset this.cOLLIDABLE_INTERFACE_LAYER_PROCESSOR =<< (GameFeature.new_1 "Collidable Interface Layer Processor")
    jset this.tICKABLE_LAYER_PROCESSOR =<< (GameFeature.new_1 "Tickable Layer Processor")
    jset this.cHEATING =<< (GameFeature.new_1 "Cheating")
    jset this.dROPPED_ITEMS =<< (GameFeature.new_1 "Drops")
    jset this.dROPPED_ITEMS_FROM_DEATH =<< (GameFeature.new_1 "Drops from Dead")
    jset this.tEST_DESTROYED_LAYER_PROCESSOR =<< (GameFeature.new_1 "Destroyed Layer Processor")
    jset this.cOLLISIONS_WITH_SOURCE =<< (GameFeature.new_1 "Allow Collisions With Source")
    jset this.cOLLISIONS_FORCED_TWO_DIMENSIONAL =<< (GameFeature.new_1 "Collisions Forced Two Dimensional")
    pure ()


getInstance :: IO (GameFeatureFactory)
getInstance = do
        pure (GameFeatureFactory.instance_)

new_ :: IO GameFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


