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
-- package org.allbinary.business.forward
module ForwardData where

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

data ForwardData = ForwardData
    { header_ :: JavaHeader
    , pAGE :: IORef (String)
    , nAME :: IORef (String)
    , vALUE :: IORef (String)
    }

instance JavaNull ForwardData where
    javaNull = javaNullRecord "ForwardData"

instance JavaEquals ForwardData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ForwardData where
    (==) = jrecordEquals

instance JavaObjectClass ForwardData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ForwardData
newRecord_ = do
    header_ <- newJavaHeader
    pAGE <- newIORef ""
    nAME <- newIORef ""
    vALUE <- newIORef ""
    let this = ForwardData header_ pAGE nAME vALUE
    jregisterLevel header_ this
    pure this

initFields_ :: ForwardData -> IO ()
initFields_ this = do
    jset this.pAGE ("FORWARD_PAGE")
    jset this.nAME ("FORWARD_NAME")
    jset this.vALUE ("FORWARD_VALUE")
    pure ()

new_ :: IO ForwardData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ForwardData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (ForwardData)
getInstance = do
        pure (ForwardData.instance_)


