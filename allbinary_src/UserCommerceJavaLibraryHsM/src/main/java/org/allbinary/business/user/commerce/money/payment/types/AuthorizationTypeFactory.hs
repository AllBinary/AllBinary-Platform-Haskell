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
-- package org.allbinary.business.user.commerce.money.payment.types
module AuthorizationTypeFactory where

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
import qualified AuthorizationType -- same package or java.lang

data AuthorizationTypeFactory = AuthorizationTypeFactory
    { header_ :: JavaHeader
    , nONE :: IORef (AuthorizationType.AuthorizationType)
    , vOICE :: IORef (AuthorizationType.AuthorizationType)
    , rETINAL :: IORef (AuthorizationType.AuthorizationType)
    , iMAGE :: IORef (AuthorizationType.AuthorizationType)
    , dNA :: IORef (AuthorizationType.AuthorizationType)
    , pRINT :: IORef (AuthorizationType.AuthorizationType)
    , cHIP :: IORef (AuthorizationType.AuthorizationType)
    }

instance JavaNull AuthorizationTypeFactory where
    javaNull = javaNullRecord "AuthorizationTypeFactory"

instance JavaEquals AuthorizationTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthorizationTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass AuthorizationTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AuthorizationTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    vOICE <- newIORef javaNull
    rETINAL <- newIORef javaNull
    iMAGE <- newIORef javaNull
    dNA <- newIORef javaNull
    pRINT <- newIORef javaNull
    cHIP <- newIORef javaNull
    let this = AuthorizationTypeFactory header_ nONE vOICE rETINAL iMAGE dNA pRINT cHIP
    jregisterLevel header_ this
    pure this

initFields_ :: AuthorizationTypeFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (AuthorizationType.new_1 "None")
    jset this.vOICE =<< (AuthorizationType.new_1 "Voice")
    jset this.rETINAL =<< (AuthorizationType.new_1 "Retinal")
    jset this.iMAGE =<< (AuthorizationType.new_1 "Image")
    jset this.dNA =<< (AuthorizationType.new_1 "DNA")
    jset this.pRINT =<< (AuthorizationType.new_1 "Print")
    jset this.cHIP =<< (AuthorizationType.new_1 "Chip")
    pure ()

new_ :: IO AuthorizationTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthorizationTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AuthorizationTypeFactory)
getInstance = do
        pure (AuthorizationTypeFactory.instance_)


