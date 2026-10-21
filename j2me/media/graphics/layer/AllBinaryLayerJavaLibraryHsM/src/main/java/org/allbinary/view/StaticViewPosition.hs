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
module StaticViewPosition (module StaticViewPosition, module ViewPosition) where

import ViewPosition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getX, getX_super, getX_impl, getY, getY_super, getY_impl, getZ, getZ_super, getZ_impl)
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
import qualified ViewPosition

data StaticViewPosition = StaticViewPosition
    { header_ :: JavaHeader
    , base :: ViewPosition.ViewPosition
    }

instance JavaNull StaticViewPosition where
    javaNull = javaNullRecord "StaticViewPosition"

instance JavaEquals StaticViewPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticViewPosition where
    (==) = jrecordEquals

instance JavaObjectClass StaticViewPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StaticViewPosition
newRecord_ = do
    base <- ViewPosition.newRecord_
    let header_ = base.header_
    let this = StaticViewPosition header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    pure this

initFields_ :: StaticViewPosition -> IO ()
initFields_ this = do
    pure ()

new_3 :: Int -> Int -> Int -> IO StaticViewPosition
new_3 x y z = do
    this <- newRecord_
    init_3 this x y z
    pure this

init_3 :: StaticViewPosition -> Int -> Int -> Int -> IO ()
init_3 this x y z = do
        ViewPosition.init_3 this.base (x) (y) (z)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: StaticViewPosition))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: StaticViewPosition))

getX_impl :: StaticViewPosition -> IO (Int)
getX_impl this = do
        (ViewPosition.getRawX this)


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: StaticViewPosition))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: StaticViewPosition))

getY_impl :: StaticViewPosition -> IO (Int)
getY_impl this = do
        (ViewPosition.getRawY this)


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: StaticViewPosition))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: StaticViewPosition))

getZ_impl :: StaticViewPosition -> IO (Int)
getZ_impl this = do
        (ViewPosition.getRawZ this)


