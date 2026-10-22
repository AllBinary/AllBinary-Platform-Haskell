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
-- package org.allbinary.game.collision
module CollidableHelperFactory where

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
import qualified SourceCollisionHelper -- same package or java.lang
import qualified CollisionHelper -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data CollidableHelperFactory = CollidableHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull CollidableHelperFactory where
    javaNull = javaNullRecord "CollidableHelperFactory"

instance JavaEquals CollidableHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass CollidableHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollidableHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CollidableHelperFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CollidableHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CollidableHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollidableHelperFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CollisionHelper.CollisionHelper)
getInstance = do
    javaCatchReturn $ do
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).cOLLISIONS_WITH_SOURCE)))) then do
            javaReturn =<< (CollisionHelper.new_1 (AllBinaryLayer.nULL_ALLBINARY_LAYER))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: CollisionHelper.CollisionHelper) (SourceCollisionHelper.new_1 (AllBinaryLayer.nULL_ALLBINARY_LAYER)))


