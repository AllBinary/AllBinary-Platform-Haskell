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
-- package org.allbinary.logic.system.security.crypt.jcehelper
module KeySpecFactory where

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
import qualified KeySpec -- java.security.spec.KeySpec
import qualified DESKeySpec -- javax.crypto.spec.DESKeySpec
import qualified DESedeKeySpec -- javax.crypto.spec.DESedeKeySpec
import qualified TsUtil -- org.allbinary.TsUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data KeySpecFactory = KeySpecFactory
    { header_ :: JavaHeader
    , dES :: IORef (String)
    , dESEDE :: IORef (String)
    , bLOWFISH :: IORef (String)
    }

instance JavaNull KeySpecFactory where
    javaNull = javaNullRecord "KeySpecFactory"

instance JavaEquals KeySpecFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeySpecFactory where
    (==) = jrecordEquals

instance JavaObjectClass KeySpecFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeySpecFactory
newRecord_ = do
    header_ <- newJavaHeader
    dES <- newIORef ""
    dESEDE <- newIORef ""
    bLOWFISH <- newIORef ""
    let this = KeySpecFactory header_ dES dESEDE bLOWFISH
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: KeySpecFactory -> IO ()
initFields_ this = do
    jset this.dES ("DES")
    jset this.dESEDE ("DESede")
    jset this.bLOWFISH ("Blowfish")
    pure ()


getInstance :: IO (KeySpecFactory)
getInstance = do
        pure (KeySpecFactory.instance_)

new_ :: IO KeySpecFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeySpecFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance_2 :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int8) -> IO (KeySpec.KeySpec)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: KeySpecFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int8) -> IO (KeySpec.KeySpec)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: KeySpecFactory)) a1 a2

getInstance_2_impl :: KeySpecFactory -> String -> JavaArray (Int8) -> IO (KeySpec.KeySpec)
getInstance_2_impl this algorithm keyData = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            tsUtil <- (TsUtil.getInstance)
            if ((jio (TsUtil.compareTo tsUtil algorithm (jget (this).dES))) == 0) then do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: KeySpec.KeySpec) (DESKeySpec.new_1 keyData))
            else if ((jio (TsUtil.compareTo tsUtil algorithm (jget (this).dESEDE))) == 0) then do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: KeySpec.KeySpec) (DESedeKeySpec.new_1 keyData))
            else do
                javaThrow ((JavaException "RuntimeException" ""))


