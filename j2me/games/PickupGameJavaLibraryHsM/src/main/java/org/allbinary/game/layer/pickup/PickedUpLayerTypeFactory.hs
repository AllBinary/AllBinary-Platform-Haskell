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
-- package org.allbinary.game.layer.pickup
module PickedUpLayerTypeFactory where

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
import qualified PickedUpLayerType -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data PickedUpLayerTypeFactory = PickedUpLayerTypeFactory
    { header_ :: JavaHeader
    , nONE :: IORef (PickedUpLayerType.PickedUpLayerType)
    , bEAM :: IORef (PickedUpLayerType.PickedUpLayerType)
    , mINE :: IORef (PickedUpLayerType.PickedUpLayerType)
    , pROJECTILE :: IORef (PickedUpLayerType.PickedUpLayerType)
    , eNHANCEMENT :: IORef (PickedUpLayerType.PickedUpLayerType)
    , mORPH :: IORef (PickedUpLayerType.PickedUpLayerType)
    , pART :: IORef (PickedUpLayerType.PickedUpLayerType)
    , hEAL :: IORef (PickedUpLayerType.PickedUpLayerType)
    , lIFE :: IORef (PickedUpLayerType.PickedUpLayerType)
    , pOINTS :: IORef (PickedUpLayerType.PickedUpLayerType)
    }

instance JavaNull PickedUpLayerTypeFactory where
    javaNull = javaNullRecord "PickedUpLayerTypeFactory"

instance JavaEquals PickedUpLayerTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickedUpLayerTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass PickedUpLayerTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PickedUpLayerTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    bEAM <- newIORef javaNull
    mINE <- newIORef javaNull
    pROJECTILE <- newIORef javaNull
    eNHANCEMENT <- newIORef javaNull
    mORPH <- newIORef javaNull
    pART <- newIORef javaNull
    hEAL <- newIORef javaNull
    lIFE <- newIORef javaNull
    pOINTS <- newIORef javaNull
    let this = PickedUpLayerTypeFactory header_ nONE bEAM mINE pROJECTILE eNHANCEMENT mORPH pART hEAL lIFE pOINTS
    jregisterLevel header_ this
    pure this

initFields_ :: PickedUpLayerTypeFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (PickedUpLayerType.new_1 (jget ((jio (StringUtil.getInstance))).nULL_STRING))
    jset this.bEAM =<< (PickedUpLayerType.new_1 "BEAM")
    jset this.mINE =<< (PickedUpLayerType.new_1 "MINE")
    jset this.pROJECTILE =<< (PickedUpLayerType.new_1 "PROJECTILE")
    jset this.eNHANCEMENT =<< (PickedUpLayerType.new_1 "Enhancement")
    jset this.mORPH =<< (PickedUpLayerType.new_1 "Morph")
    jset this.pART =<< (PickedUpLayerType.new_1 "Part")
    jset this.hEAL =<< (PickedUpLayerType.new_1 "Heal")
    jset this.lIFE =<< (PickedUpLayerType.new_1 "Life")
    jset this.pOINTS =<< (PickedUpLayerType.new_1 "Points")
    pure ()

new_ :: IO PickedUpLayerTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PickedUpLayerTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PickedUpLayerTypeFactory)
getInstance = do
        pure (PickedUpLayerTypeFactory.instance_)


