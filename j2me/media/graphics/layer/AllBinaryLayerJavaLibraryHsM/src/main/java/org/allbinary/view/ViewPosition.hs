{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.view
module ViewPosition (module ViewPosition, module ViewPositionBase) where

import ViewPositionBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstanceD, getInstanceD_super, getInstanceD_impl, getX, getX_super, getX_impl, getY, getY_super, getY_impl, getZ, getZ_super, getZ_impl, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, setAllbinaryLayer, setAllbinaryLayer_super, setAllbinaryLayer_impl, allbinaryLayer)
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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ViewPositionBase

data ViewPosition = ViewPosition
    { header_ :: JavaHeader
    , base :: ViewPositionBase.ViewPositionBase
    , allbinaryLayer :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull ViewPosition where
    javaNull = javaNullRecord "ViewPosition"

instance JavaEquals ViewPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewPosition where
    (==) = jrecordEquals

instance JavaObjectClass ViewPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ViewPosition
newRecord_ = do
    base <- ViewPositionBase.newRecord_
    let header_ = base.header_
    allbinaryLayer <- newIORef javaNull
    let this = ViewPosition header_ base allbinaryLayer
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    jregisterMethod header_ "getX2" (\() -> getX2_impl this)
    jregisterMethod header_ "getY2" (\() -> getY2_impl this)
    jregisterMethod header_ "getZ2" (\() -> getZ2_impl this)
    jregisterMethod header_ "setAllbinaryLayer" (\() -> setAllbinaryLayer_impl this)
    pure this

initFields_ :: ViewPosition -> IO ()
initFields_ this = do
    jset this.allbinaryLayer (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    pure ()


getInstanceD :: IO (ViewPosition)
getInstanceD = do
        (new_3 0 0 0)

new_3 :: Int -> Int -> Int -> IO ViewPosition
new_3 x y z = do
    this <- newRecord_
    init_3 this x y z
    pure this

init_3 :: ViewPosition -> Int -> Int -> Int -> IO ()
init_3 this x y z = do
        ViewPositionBase.init_3 this.base (x) (y) (z)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: ViewPosition))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: ViewPosition))

getX_impl :: ViewPosition -> IO (Int)
getX_impl this = do
        (AllBinaryLayer.getXP ((jget (this).allbinaryLayer)))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: ViewPosition))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: ViewPosition))

getY_impl :: ViewPosition -> IO (Int)
getY_impl this = do
        (AllBinaryLayer.getYP ((jget (this).allbinaryLayer)))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: ViewPosition))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: ViewPosition))

getZ_impl :: ViewPosition -> IO (Int)
getZ_impl this = do
        (AllBinaryLayer.getZP ((jget (this).allbinaryLayer)))


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: ViewPosition))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: ViewPosition))

getX2_impl :: ViewPosition -> IO (Int)
getX2_impl this = do
        pure (((jio (ViewPosition.getX this)) + (jio (AllBinaryLayer.getWidth ((jget (this).allbinaryLayer))))))


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: ViewPosition))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: ViewPosition))

getY2_impl :: ViewPosition -> IO (Int)
getY2_impl this = do
        pure (((jio (ViewPosition.getY this)) + (jio (AllBinaryLayer.getHeight ((jget (this).allbinaryLayer))))))


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: ViewPosition))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: ViewPosition))

getZ2_impl :: ViewPosition -> IO (Int)
getZ2_impl this = do
        pure ((Prelude.fromIntegral (((Prelude.fromIntegral (jio (ViewPosition.getZ this))) + (jio (AllBinaryLayer.getDepth ((jget (this).allbinaryLayer))))))))


setAllbinaryLayer :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setAllbinaryLayer object_ a1 = jmethod object_ "setAllbinaryLayer" (\() -> (setAllbinaryLayer_impl (javaCast object_ :: ViewPosition))) () (jtoObject a1)

setAllbinaryLayer_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setAllbinaryLayer_super object_ a1 = (setAllbinaryLayer_impl (javaCast object_ :: ViewPosition)) (jtoObject a1)

setAllbinaryLayer_impl :: ViewPosition -> JavaObject -> IO (())
setAllbinaryLayer_impl this allbinaryLayerObject_ = do
        let allbinaryLayer = jtoObject allbinaryLayerObject_
        jset (this).allbinaryLayer ((javaCast allbinaryLayer :: AllBinaryLayer.AllBinaryLayer))
        pure ()


