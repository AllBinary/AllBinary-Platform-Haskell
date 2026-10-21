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
-- package org.allbinary.view
module ViewPositionBase (module ViewPositionBase, module GPoint) where

import GPoint hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getX2, getX2_super, getX2_impl, getY2, getY2_super, getY2_impl, getZ2, getZ2_super, getZ2_impl, setAllbinaryLayer, setAllbinaryLayer_super, setAllbinaryLayer_impl, nULL_VIEW_POSITION)
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
import qualified GPoint -- org.allbinary.graphics.GPoint

data ViewPositionBase = ViewPositionBase
    { header_ :: JavaHeader
    , base :: GPoint.GPoint
    }

instance JavaNull ViewPositionBase where
    javaNull = javaNullRecord "ViewPositionBase"

instance JavaEquals ViewPositionBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewPositionBase where
    (==) = jrecordEquals

instance JavaObjectClass ViewPositionBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_VIEW_POSITION #-}
nULL_VIEW_POSITION = unsafePerformIO ((new_3 0 0 0))

newRecord_ :: IO ViewPositionBase
newRecord_ = do
    base <- GPoint.newRecord_
    let header_ = base.header_
    let this = ViewPositionBase header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getX2" (\() -> getX2_impl this)
    jregisterMethod header_ "getY2" (\() -> getY2_impl this)
    jregisterMethod header_ "getZ2" (\() -> getZ2_impl this)
    jregisterMethod header_ "setAllbinaryLayer" (\() -> setAllbinaryLayer_impl this)
    pure this

initFields_ :: ViewPositionBase -> IO ()
initFields_ this = do
    pure ()

new_3 :: Int -> Int -> Int -> IO ViewPositionBase
new_3 x y z = do
    this <- newRecord_
    init_3 this x y z
    pure this

init_3 :: ViewPositionBase -> Int -> Int -> Int -> IO ()
init_3 this x y z = do
        GPoint.init_3 this.base (x) (y) (z)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: ViewPositionBase))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: ViewPositionBase))

getX2_impl :: ViewPositionBase -> IO (Int)
getX2_impl this = do
        (GPoint.getX this)


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: ViewPositionBase))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: ViewPositionBase))

getY2_impl :: ViewPositionBase -> IO (Int)
getY2_impl this = do
        (GPoint.getY this)


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: ViewPositionBase))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: ViewPositionBase))

getZ2_impl :: ViewPositionBase -> IO (Int)
getZ2_impl this = do
        (GPoint.getZ this)


setAllbinaryLayer :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setAllbinaryLayer object_ a1 = jmethod object_ "setAllbinaryLayer" (\() -> (setAllbinaryLayer_impl (javaCast object_ :: ViewPositionBase))) () (jtoObject a1)

setAllbinaryLayer_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setAllbinaryLayer_super object_ a1 = (setAllbinaryLayer_impl (javaCast object_ :: ViewPositionBase)) (jtoObject a1)

setAllbinaryLayer_impl :: ViewPositionBase -> JavaObject -> IO (())
setAllbinaryLayer_impl this allbinaryLayerObject_ = do
        let allbinaryLayer = jtoObject allbinaryLayerObject_
        pure ()


