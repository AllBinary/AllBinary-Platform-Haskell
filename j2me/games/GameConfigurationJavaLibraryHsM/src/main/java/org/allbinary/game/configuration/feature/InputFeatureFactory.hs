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
module InputFeatureFactory where

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
import qualified InputFeature -- same package or java.lang
import qualified Features -- same package or java.lang

data InputFeatureFactory = InputFeatureFactory
    { header_ :: JavaHeader
    , rEMOVE_DUPLICATE_KEY_PRESSES :: IORef (InputFeature.InputFeature)
    , iNPUT_MAPPING :: IORef (InputFeature.InputFeature)
    , mULTI_KEY_PRESS :: IORef (InputFeature.InputFeature)
    , sINGLE_KEY_REPEAT_PRESS :: IORef (InputFeature.InputFeature)
    , sINGLE_KEY_PRESS :: IORef (InputFeature.InputFeature)
    }

instance JavaNull InputFeatureFactory where
    javaNull = javaNullRecord "InputFeatureFactory"

instance JavaEquals InputFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    rEMOVE_DUPLICATE_KEY_PRESSES <- newIORef javaNull
    iNPUT_MAPPING <- newIORef javaNull
    mULTI_KEY_PRESS <- newIORef javaNull
    sINGLE_KEY_REPEAT_PRESS <- newIORef javaNull
    sINGLE_KEY_PRESS <- newIORef javaNull
    let this = InputFeatureFactory header_ rEMOVE_DUPLICATE_KEY_PRESSES iNPUT_MAPPING mULTI_KEY_PRESS sINGLE_KEY_REPEAT_PRESS sINGLE_KEY_PRESS
    jregisterLevel header_ this
    jregisterMethod header_ "isSingleKeyProcessing" (\() -> isSingleKeyProcessing_impl this)
    pure this

initFields_ :: InputFeatureFactory -> IO ()
initFields_ this = do
    jset this.rEMOVE_DUPLICATE_KEY_PRESSES =<< (InputFeature.new_1 "Remove Duplicate Key Presses")
    jset this.iNPUT_MAPPING =<< (InputFeature.new_1 "Input Mapping")
    jset this.mULTI_KEY_PRESS =<< (InputFeature.new_1 "Multi Key Press")
    jset this.sINGLE_KEY_REPEAT_PRESS =<< (InputFeature.new_1 "Single Key Repeat Press")
    jset this.sINGLE_KEY_PRESS =<< (InputFeature.new_1 "Single Key Press")
    pure ()


getInstance :: IO (InputFeatureFactory)
getInstance = do
        pure (InputFeatureFactory.instance_)

new_ :: IO InputFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isSingleKeyProcessing :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleKeyProcessing object_ = jmethod object_ "isSingleKeyProcessing" (\() -> (isSingleKeyProcessing_impl (javaCast object_ :: InputFeatureFactory))) ()

isSingleKeyProcessing_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleKeyProcessing_super object_ = (isSingleKeyProcessing_impl (javaCast object_ :: InputFeatureFactory))

isSingleKeyProcessing_impl :: InputFeatureFactory -> IO (Bool)
isSingleKeyProcessing_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        if ((jio (Features.isFeature features (javaCast (jget (this).sINGLE_KEY_REPEAT_PRESS)))) || (jio (Features.isFeature features (javaCast (jget (this).sINGLE_KEY_PRESS))))) then do
            javaReturn (True)
        else do
            javaReturn (False)


