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
module CommonLabels where

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
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data CommonLabels = CommonLabels
    { header_ :: JavaHeader
    , wIDTH_LABEL :: IORef (String)
    , hEIGHT_LABEL :: IORef (String)
    , eND_LABEL :: IORef (String)
    , tOTAL_LABEL :: IORef (String)
    , iNDEX_LABEL :: IORef (String)
    , sTART_LABEL :: IORef (String)
    , cOMMAND_LABEL :: IORef (String)
    , nAME_LABEL :: IORef (String)
    , sTART :: IORef (String)
    , eLAPSED :: IORef (String)
    , cURRENT :: IORef (String)
    , nEXT :: IORef (String)
    , iTEM_LABEL :: IORef (String)
    , rESULT_ :: IORef (String)
    , cOLON_SEP :: IORef (String)
    }

instance JavaNull CommonLabels where
    javaNull = javaNullRecord "CommonLabels"

instance JavaEquals CommonLabels where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonLabels where
    (==) = jrecordEquals

instance JavaObjectClass CommonLabels where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonLabels
newRecord_ = do
    header_ <- newJavaHeader
    wIDTH_LABEL <- newIORef ""
    hEIGHT_LABEL <- newIORef ""
    eND_LABEL <- newIORef ""
    tOTAL_LABEL <- newIORef ""
    iNDEX_LABEL <- newIORef ""
    sTART_LABEL <- newIORef ""
    cOMMAND_LABEL <- newIORef ""
    nAME_LABEL <- newIORef ""
    sTART <- newIORef ""
    eLAPSED <- newIORef ""
    cURRENT <- newIORef ""
    nEXT <- newIORef ""
    iTEM_LABEL <- newIORef ""
    rESULT_ <- newIORef ""
    cOLON_SEP <- newIORef ""
    let this = CommonLabels header_ wIDTH_LABEL hEIGHT_LABEL eND_LABEL tOTAL_LABEL iNDEX_LABEL sTART_LABEL cOMMAND_LABEL nAME_LABEL sTART eLAPSED cURRENT nEXT iTEM_LABEL rESULT_ cOLON_SEP
    jregisterLevel header_ this
    pure this

initFields_ :: CommonLabels -> IO ()
initFields_ this = do
    jset this.wIDTH_LABEL (" Width: ")
    jset this.hEIGHT_LABEL (" Height: ")
    jset this.eND_LABEL ("End: ")
    jset this.tOTAL_LABEL ("Total: ")
    jset this.iNDEX_LABEL ("index: ")
    jset this.sTART_LABEL ("Start: ")
    jset this.cOMMAND_LABEL ("Command: ")
    jset this.nAME_LABEL ("Name: ")
    jset this.sTART ((jget (this).sTART_LABEL))
    jset this.eLAPSED (" Elapsed: ")
    jset this.cURRENT (" Current: ")
    jset this.nEXT ("Next")
    jset this.iTEM_LABEL ("Item: ")
    jset this.rESULT_ ("Result: ")
    jset this.cOLON_SEP (": ")
    pure ()

new_ :: IO CommonLabels
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonLabels -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonLabels)
getInstance = do
        pure (CommonLabels.instance_)


