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
-- package org.allbinary.logic.java.bool
module BooleanFactory where

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

data BooleanFactory = BooleanFactory
    { header_ :: JavaHeader
    , tRUE :: IORef (Bool)
    , fALSE :: IORef (Bool)
    , tRUE_STRING :: IORef (String)
    , fALSE_STRING :: IORef (String)
    , yES :: IORef (String)
    , nO :: IORef (String)
    }

instance JavaNull BooleanFactory where
    javaNull = javaNullRecord "BooleanFactory"

instance JavaEquals BooleanFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BooleanFactory where
    (==) = jrecordEquals

instance JavaObjectClass BooleanFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BooleanFactory
newRecord_ = do
    header_ <- newJavaHeader
    tRUE <- newIORef javaNull
    fALSE <- newIORef javaNull
    tRUE_STRING <- newIORef ""
    fALSE_STRING <- newIORef ""
    yES <- newIORef ""
    nO <- newIORef ""
    let this = BooleanFactory header_ tRUE fALSE tRUE_STRING fALSE_STRING yES nO
    jregisterLevel header_ this
    jregisterMethod header_ "toStringb" (\() -> toStringb_impl this)
    pure this

initFields_ :: BooleanFactory -> IO ()
initFields_ this = do
    jset this.tRUE (True)
    jset this.fALSE (False)
    jset this.tRUE_STRING ((javaToString (jget (this).tRUE)))
    jset this.fALSE_STRING ((javaToString (jget (this).fALSE)))
    jset this.yES ("yes")
    jset this.nO ("no")
    pure ()

new_ :: IO BooleanFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BooleanFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BooleanFactory)
getInstance = do
        pure (BooleanFactory.instance_)


toStringb :: (JavaObjectClass this_) => this_ -> Bool -> IO (String)
toStringb object_ a1 = jmethod object_ "toStringb" (\() -> (toStringb_impl (javaCast object_ :: BooleanFactory))) () a1

toStringb_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (String)
toStringb_super object_ a1 = (toStringb_impl (javaCast object_ :: BooleanFactory)) a1

toStringb_impl :: BooleanFactory -> Bool -> IO (String)
toStringb_impl this bool = do
    javaCatchReturn $ do
        if bool then do
            javaReturn ((jget (this).tRUE_STRING))
        else do
            javaReturn ((jget (this).fALSE_STRING))


