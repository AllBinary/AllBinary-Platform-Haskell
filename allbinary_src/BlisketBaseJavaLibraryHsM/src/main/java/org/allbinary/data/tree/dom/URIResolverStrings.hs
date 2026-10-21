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
-- package org.allbinary.data.tree.dom
module URIResolverStrings where

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

data URIResolverStrings = URIResolverStrings
    { header_ :: JavaHeader
    , iMPORT_URL :: IORef (String)
    , aTTEMPT :: IORef (String)
    , bASE :: IORef (String)
    , nEW_PATH :: IORef (String)
    , nOTE :: IORef (String)
    , uRL_GLOBAL :: IORef (String)
    , rEQUIRED_EXTENSION :: IORef (String)
    , rESOLVE :: IORef (String)
    }

instance JavaNull URIResolverStrings where
    javaNull = javaNullRecord "URIResolverStrings"

instance JavaEquals URIResolverStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq URIResolverStrings where
    (==) = jrecordEquals

instance JavaObjectClass URIResolverStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO URIResolverStrings
newRecord_ = do
    header_ <- newJavaHeader
    iMPORT_URL <- newIORef ""
    aTTEMPT <- newIORef ""
    bASE <- newIORef ""
    nEW_PATH <- newIORef ""
    nOTE <- newIORef ""
    uRL_GLOBAL <- newIORef ""
    rEQUIRED_EXTENSION <- newIORef ""
    rESOLVE <- newIORef ""
    let this = URIResolverStrings header_ iMPORT_URL aTTEMPT bASE nEW_PATH nOTE uRL_GLOBAL rEQUIRED_EXTENSION rESOLVE
    jregisterLevel header_ this
    pure this

initFields_ :: URIResolverStrings -> IO ()
initFields_ this = do
    jset this.iMPORT_URL ("/{import url}")
    jset this.aTTEMPT ("attempt to use xsl:import: href=")
    jset this.bASE ("\nBase= ")
    jset this.nEW_PATH ("\nNew path= ")
    jset this.nOTE ("\nNote: ")
    jset this.uRL_GLOBAL (" is a urlglobal")
    jset this.rEQUIRED_EXTENSION ("\nRequired Extension: ")
    jset this.rESOLVE ("resolve")
    pure ()

new_ :: IO URIResolverStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: URIResolverStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (URIResolverStrings)
getInstance = do
        pure (URIResolverStrings.instance_)


