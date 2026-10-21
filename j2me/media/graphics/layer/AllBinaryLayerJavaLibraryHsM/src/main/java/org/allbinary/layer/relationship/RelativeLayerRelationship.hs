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
-- package org.allbinary.layer.relationship
module RelativeLayerRelationship (module RelativeLayerRelationship, module RelativeRelationship) where

import RelativeRelationship hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getX, getX_super, getX_impl, getY, getY_super, getY_impl, getZ, getZ_super, getZ_impl, layer)
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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data RelativeLayerRelationship = RelativeLayerRelationship
    { header_ :: JavaHeader
    , base :: RelativeRelationship.RelativeRelationship
    , layer :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull RelativeLayerRelationship where
    javaNull = javaNullRecord "RelativeLayerRelationship"

instance JavaEquals RelativeLayerRelationship where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RelativeLayerRelationship where
    (==) = jrecordEquals

instance JavaObjectClass RelativeLayerRelationship where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RelativeLayerRelationship
newRecord_ = do
    base <- RelativeRelationship.newRecord_
    let header_ = base.header_
    layer <- newIORef javaNull
    let this = RelativeLayerRelationship header_ base layer
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    pure this

initFields_ :: RelativeLayerRelationship -> IO ()
initFields_ this = do
    jset this.layer (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    pure ()

new_3 :: AllBinaryLayer.AllBinaryLayer -> GPoint.GPoint -> BasicArrayList.BasicArrayList -> IO RelativeLayerRelationship
new_3 layer point typesAllowedList = do
    this <- newRecord_
    init_3 this layer point typesAllowedList
    pure this

init_3 :: RelativeLayerRelationship -> AllBinaryLayer.AllBinaryLayer -> GPoint.GPoint -> BasicArrayList.BasicArrayList -> IO ()
init_3 this layer point typesAllowedList = do
        RelativeRelationship.init_2 this.base (point) (typesAllowedList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).layer (layer)
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: RelativeLayerRelationship))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: RelativeLayerRelationship))

getX_impl :: RelativeLayerRelationship -> IO (Int)
getX_impl this = do
        pure (((jio (AllBinaryLayer.getXP ((jget (this).layer)))) + (jio (RelativeRelationship.getX_super this.base))))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: RelativeLayerRelationship))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: RelativeLayerRelationship))

getY_impl :: RelativeLayerRelationship -> IO (Int)
getY_impl this = do
        pure (((jio (AllBinaryLayer.getYP ((jget (this).layer)))) + (jio (RelativeRelationship.getY_super this.base))))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: RelativeLayerRelationship))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: RelativeLayerRelationship))

getZ_impl :: RelativeLayerRelationship -> IO (Int)
getZ_impl this = do
        pure (((jio (AllBinaryLayer.getZP ((jget (this).layer)))) + (jio (RelativeRelationship.getZ_super this.base))))


