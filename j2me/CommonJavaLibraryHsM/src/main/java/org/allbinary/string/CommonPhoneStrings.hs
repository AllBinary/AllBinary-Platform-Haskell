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
-- package org.allbinary.string
module CommonPhoneStrings where

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
import qualified JsType -- jsinterop.annotations.JsType

data CommonPhoneStrings = CommonPhoneStrings
    { header_ :: JavaHeader
    , uP :: IORef (String)
    , dOWN :: IORef (String)
    , lEFT :: IORef (String)
    , rIGHT :: IORef (String)
    , zERO :: IORef (String)
    , oNE :: IORef (String)
    , tWO :: IORef (String)
    , tHREE :: IORef (String)
    , fOUR :: IORef (String)
    , fIVE :: IORef (String)
    , sIX :: IORef (String)
    , sEVEN :: IORef (String)
    , eIGHT :: IORef (String)
    , nINE :: IORef (String)
    , pOUND :: IORef (String)
    , sTAR :: IORef (String)
    , fIRE :: IORef (String)
    }

instance JavaNull CommonPhoneStrings where
    javaNull = javaNullRecord "CommonPhoneStrings"

instance JavaEquals CommonPhoneStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonPhoneStrings where
    (==) = jrecordEquals

instance JavaObjectClass CommonPhoneStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonPhoneStrings
newRecord_ = do
    header_ <- newJavaHeader
    uP <- newIORef ""
    dOWN <- newIORef ""
    lEFT <- newIORef ""
    rIGHT <- newIORef ""
    zERO <- newIORef ""
    oNE <- newIORef ""
    tWO <- newIORef ""
    tHREE <- newIORef ""
    fOUR <- newIORef ""
    fIVE <- newIORef ""
    sIX <- newIORef ""
    sEVEN <- newIORef ""
    eIGHT <- newIORef ""
    nINE <- newIORef ""
    pOUND <- newIORef ""
    sTAR <- newIORef ""
    fIRE <- newIORef ""
    let this = CommonPhoneStrings header_ uP dOWN lEFT rIGHT zERO oNE tWO tHREE fOUR fIVE sIX sEVEN eIGHT nINE pOUND sTAR fIRE
    jregisterLevel header_ this
    pure this

initFields_ :: CommonPhoneStrings -> IO ()
initFields_ this = do
    jset this.uP ("UP")
    jset this.dOWN ("DOWN")
    jset this.lEFT ("LEFT")
    jset this.rIGHT ("RIGHT")
    jset this.zERO ("0")
    jset this.oNE ("1")
    jset this.tWO ("2")
    jset this.tHREE ("3")
    jset this.fOUR ("4")
    jset this.fIVE ("5")
    jset this.sIX ("6")
    jset this.sEVEN ("7")
    jset this.eIGHT ("8")
    jset this.nINE ("9")
    jset this.pOUND ("#")
    jset this.sTAR ("*")
    jset this.fIRE ("FIRE")
    pure ()

new_ :: IO CommonPhoneStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonPhoneStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonPhoneStrings)
getInstance = do
        pure (CommonPhoneStrings.instance_)


