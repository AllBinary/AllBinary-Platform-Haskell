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
-- package org.allbinary.game.ag.ai
module ReverseVelocityBoundsVisitor where

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
import qualified BoundsVisitorInterface -- org.allbinary.bounds.BoundsVisitorInterface
import qualified VelocityInterface -- org.allbinary.game.physics.velocity.VelocityInterface
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified LayerInterface -- org.allbinary.layer.LayerInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

-- implements BoundsVisitorInterface
data ReverseVelocityBoundsVisitor = ReverseVelocityBoundsVisitor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , velocityInterface :: IORef (VelocityInterface.VelocityInterface)
    , layerInterface :: IORef (LayerInterface.LayerInterface)
    }

instance JavaNull ReverseVelocityBoundsVisitor where
    javaNull = javaNullRecord "ReverseVelocityBoundsVisitor"

instance JavaEquals ReverseVelocityBoundsVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ReverseVelocityBoundsVisitor where
    (==) = jrecordEquals

instance JavaObjectClass ReverseVelocityBoundsVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ReverseVelocityBoundsVisitor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    velocityInterface <- newIORef javaNull
    layerInterface <- newIORef javaNull
    let this = ReverseVelocityBoundsVisitor header_ logUtil velocityInterface layerInterface
    jregisterLevel header_ this
    BoundsVisitorInterface.registerInterface_ header_
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "minX" (\() -> minX_impl this)
    jregisterMethod header_ "maxX" (\() -> maxX_impl this)
    jregisterMethod header_ "minY" (\() -> minY_impl this)
    jregisterMethod header_ "maxY" (\() -> maxY_impl this)
    pure this

initFields_ :: ReverseVelocityBoundsVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.velocityInterface (javaNull)
    jset this.layerInterface (javaNull)
    pure ()

new_1 :: LayerInterface.LayerInterface -> IO ReverseVelocityBoundsVisitor
new_1 layerInterface = do
    this <- newRecord_
    init_1 this layerInterface
    pure this

init_1 :: ReverseVelocityBoundsVisitor -> LayerInterface.LayerInterface -> IO ()
init_1 this layerInterface = do
        initFields_ this
        jset (this).layerInterface (layerInterface)
        let velocityInterfaceCompositeInterface = (javaCast layerInterface :: VelocityInterfaceCompositeInterface.VelocityInterfaceCompositeInterface)
        jset (this).velocityInterface ((javaCast (jio (VelocityInterfaceCompositeInterface.getVelocityProperties velocityInterfaceCompositeInterface)) :: VelocityInterface.VelocityInterface))
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

getX_impl :: ReverseVelocityBoundsVisitor -> IO (Int)
getX_impl this = do
        (LayerInterface.getXP ((jget (this).layerInterface)))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

getY_impl :: ReverseVelocityBoundsVisitor -> IO (Int)
getY_impl this = do
        (LayerInterface.getYP ((jget (this).layerInterface)))


minX :: (JavaObjectClass this_) => this_ -> IO (())
minX object_ = jmethod object_ "minX" (\() -> (minX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

minX_super :: (JavaObjectClass this_) => this_ -> IO (())
minX_super object_ = (minX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

minX_impl :: ReverseVelocityBoundsVisitor -> IO (())
minX_impl this = do
        when ((jio (VelocityInterface.getUnscaled ((jio (VelocityInterface.getVelocityXBasicDecimalP ((jget (this).velocityInterface))))))) < 0) $ do
            Control.Monad.void (jio (VelocityInterface.multiplyint ((jio (VelocityInterface.getVelocityXBasicDecimalP ((jget (this).velocityInterface))))) (Prelude.negate 1)))
        pure ()


maxX :: (JavaObjectClass this_) => this_ -> IO (())
maxX object_ = jmethod object_ "maxX" (\() -> (maxX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

maxX_super :: (JavaObjectClass this_) => this_ -> IO (())
maxX_super object_ = (maxX_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

maxX_impl :: ReverseVelocityBoundsVisitor -> IO (())
maxX_impl this = do
        when ((jio (VelocityInterface.getUnscaled ((jio (VelocityInterface.getVelocityXBasicDecimalP ((jget (this).velocityInterface))))))) > 0) $ do
            Control.Monad.void (jio (VelocityInterface.multiplyint ((jio (VelocityInterface.getVelocityXBasicDecimalP ((jget (this).velocityInterface))))) (Prelude.negate 1)))
        pure ()


minY :: (JavaObjectClass this_) => this_ -> IO (())
minY object_ = jmethod object_ "minY" (\() -> (minY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

minY_super :: (JavaObjectClass this_) => this_ -> IO (())
minY_super object_ = (minY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

minY_impl :: ReverseVelocityBoundsVisitor -> IO (())
minY_impl this = do
        when ((jio (VelocityInterface.getUnscaled ((jio (VelocityInterface.getVelocityYBasicDecimalP ((jget (this).velocityInterface))))))) < 0) $ do
            Control.Monad.void (jio (VelocityInterface.multiplyint ((jio (VelocityInterface.getVelocityYBasicDecimalP ((jget (this).velocityInterface))))) (Prelude.negate 1)))
        pure ()


maxY :: (JavaObjectClass this_) => this_ -> IO (())
maxY object_ = jmethod object_ "maxY" (\() -> (maxY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))) ()

maxY_super :: (JavaObjectClass this_) => this_ -> IO (())
maxY_super object_ = (maxY_impl (javaCast object_ :: ReverseVelocityBoundsVisitor))

maxY_impl :: ReverseVelocityBoundsVisitor -> IO (())
maxY_impl this = do
        when ((jio (VelocityInterface.getUnscaled ((jio (VelocityInterface.getVelocityYBasicDecimalP ((jget (this).velocityInterface))))))) > 0) $ do
            Control.Monad.void (jio (VelocityInterface.multiplyint ((jio (VelocityInterface.getVelocityYBasicDecimalP ((jget (this).velocityInterface))))) (Prelude.negate 1)))
        pure ()


