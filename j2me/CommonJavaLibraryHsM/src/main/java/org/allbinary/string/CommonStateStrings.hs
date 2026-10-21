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
module CommonStateStrings where

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

data CommonStateStrings = CommonStateStrings
    { header_ :: JavaHeader
    , cONTEXT :: IORef (String)
    , fINISH :: IORef (String)
    , cREATE :: IORef (String)
    , sTART :: IORef (String)
    , rESTART :: IORef (String)
    , rESUME :: IORef (String)
    , pAUSE :: IORef (String)
    , sTOP :: IORef (String)
    , dESTROY :: IORef (String)
    , bIND :: IORef (String)
    , oN_SAVE_INSTANCE_STATE :: IORef (String)
    , oN_START_COMMAND :: IORef (String)
    }

instance JavaNull CommonStateStrings where
    javaNull = javaNullRecord "CommonStateStrings"

instance JavaEquals CommonStateStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonStateStrings where
    (==) = jrecordEquals

instance JavaObjectClass CommonStateStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonStateStrings
newRecord_ = do
    header_ <- newJavaHeader
    cONTEXT <- newIORef ""
    fINISH <- newIORef ""
    cREATE <- newIORef ""
    sTART <- newIORef ""
    rESTART <- newIORef ""
    rESUME <- newIORef ""
    pAUSE <- newIORef ""
    sTOP <- newIORef ""
    dESTROY <- newIORef ""
    bIND <- newIORef ""
    oN_SAVE_INSTANCE_STATE <- newIORef ""
    oN_START_COMMAND <- newIORef ""
    let this = CommonStateStrings header_ cONTEXT fINISH cREATE sTART rESTART rESUME pAUSE sTOP dESTROY bIND oN_SAVE_INSTANCE_STATE oN_START_COMMAND
    jregisterLevel header_ this
    pure this

initFields_ :: CommonStateStrings -> IO ()
initFields_ this = do
    jset this.cONTEXT ("Context: ")
    jset this.fINISH ("finish")
    jset this.cREATE ("onCreate")
    jset this.sTART ("onStart")
    jset this.rESTART ("onRestart")
    jset this.rESUME ("onResume")
    jset this.pAUSE ("onPause")
    jset this.sTOP ("onStop")
    jset this.dESTROY ("onDestroy")
    jset this.bIND ("onBind")
    jset this.oN_SAVE_INSTANCE_STATE ("onSaveInstanceState")
    jset this.oN_START_COMMAND ("onStartCommand")
    pure ()

new_ :: IO CommonStateStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonStateStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonStateStrings)
getInstance = do
        pure (CommonStateStrings.instance_)


