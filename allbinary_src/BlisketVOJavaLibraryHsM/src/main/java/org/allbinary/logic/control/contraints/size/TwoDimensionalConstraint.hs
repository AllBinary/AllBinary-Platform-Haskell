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
-- package org.allbinary.logic.control.contraints.size
module TwoDimensionalConstraint where

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
import qualified SizeConstraintInterface -- same package or java.lang
import qualified Node -- org.w3c.dom.Node
import qualified TwoDimensionalConstraintInterface

-- implements TwoDimensionalConstraintInterface
data TwoDimensionalConstraint = TwoDimensionalConstraint
    { header_ :: JavaHeader
    , widthSizeConstraintInterface :: IORef (SizeConstraintInterface.SizeConstraintInterface)
    , heightSizeConstraintInterface :: IORef (SizeConstraintInterface.SizeConstraintInterface)
    }

instance JavaNull TwoDimensionalConstraint where
    javaNull = javaNullRecord "TwoDimensionalConstraint"

instance JavaEquals TwoDimensionalConstraint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TwoDimensionalConstraint where
    (==) = jrecordEquals

instance JavaObjectClass TwoDimensionalConstraint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TwoDimensionalConstraint
newRecord_ = do
    header_ <- newJavaHeader
    widthSizeConstraintInterface <- newIORef javaNull
    heightSizeConstraintInterface <- newIORef javaNull
    let this = TwoDimensionalConstraint header_ widthSizeConstraintInterface heightSizeConstraintInterface
    jregisterLevel header_ this
    TwoDimensionalConstraintInterface.registerInterface_ header_
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    pure this

initFields_ :: TwoDimensionalConstraint -> IO ()
initFields_ this = do
    jset this.widthSizeConstraintInterface (javaNull)
    jset this.heightSizeConstraintInterface (javaNull)
    pure ()

new_1 :: Node.Node -> IO TwoDimensionalConstraint
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TwoDimensionalConstraint -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        pure ()
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: TwoDimensionalConstraint))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: TwoDimensionalConstraint))

getHeight_impl :: TwoDimensionalConstraint -> IO (SizeConstraintInterface.SizeConstraintInterface)
getHeight_impl this = do
        pure ((jget (this).heightSizeConstraintInterface))


getWidth :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: TwoDimensionalConstraint))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: TwoDimensionalConstraint))

getWidth_impl :: TwoDimensionalConstraint -> IO (SizeConstraintInterface.SizeConstraintInterface)
getWidth_impl this = do
        pure ((jget (this).widthSizeConstraintInterface))


setHeight :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: TwoDimensionalConstraint))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: TwoDimensionalConstraint)) a1

setHeight_impl :: TwoDimensionalConstraint -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setHeight_impl this heightSizeConstraintInterface = do
        jset (this).heightSizeConstraintInterface (heightSizeConstraintInterface)
        pure ()


setWidth :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: TwoDimensionalConstraint))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: TwoDimensionalConstraint)) a1

setWidth_impl :: TwoDimensionalConstraint -> SizeConstraintInterface.SizeConstraintInterface -> IO (())
setWidth_impl this widthSizeConstraintInterface = do
        jset (this).widthSizeConstraintInterface (widthSizeConstraintInterface)
        pure ()


