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
-- package org.allbinary.logic.visual.dhtml.html.table
module HtmlTableData where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data HtmlTableData = HtmlTableData
    { header_ :: JavaHeader
    , lEFT :: IORef (String)
    , rIGHT :: IORef (String)
    , nONE :: IORef (String)
    , tOP :: IORef (String)
    , bOTTOM :: IORef (String)
    , tOPBOT :: IORef (String)
    , sIDES :: IORef (String)
    , aLL :: IORef (String)
    , bORDERED :: IORef (String)
    , bASIC :: IORef (String)
    , rOWS :: IORef (String)
    , fRAMES :: IORef (JavaArray (String))
    }

instance JavaNull HtmlTableData where
    javaNull = javaNullRecord "HtmlTableData"

instance JavaEquals HtmlTableData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlTableData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlTableData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlTableData
newRecord_ = do
    header_ <- newJavaHeader
    lEFT <- newIORef ""
    rIGHT <- newIORef ""
    nONE <- newIORef ""
    tOP <- newIORef ""
    bOTTOM <- newIORef ""
    tOPBOT <- newIORef ""
    sIDES <- newIORef ""
    aLL <- newIORef ""
    bORDERED <- newIORef ""
    bASIC <- newIORef ""
    rOWS <- newIORef ""
    fRAMES <- newIORef javaNull
    let this = HtmlTableData header_ lEFT rIGHT nONE tOP bOTTOM tOPBOT sIDES aLL bORDERED bASIC rOWS fRAMES
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlTableData -> IO ()
initFields_ this = do
    jset this.lEFT ((jget ((jio (CommonStrings.getInstance))).lEFT))
    jset this.rIGHT ((jget ((jio (CommonStrings.getInstance))).rIGHT))
    jset this.nONE ("none")
    jset this.tOP ("top")
    jset this.bOTTOM ("bottom")
    jset this.tOPBOT ("topbot")
    jset this.sIDES ("sides")
    jset this.aLL ("all")
    jset this.bORDERED ("border")
    jset this.bASIC ("basic")
    jset this.rOWS ("rows")
    jset this.fRAMES ((jarrayFromList [(jget (this).nONE), (jget (this).tOP), (jget (this).bOTTOM), (jget (this).tOPBOT), (jget (this).sIDES), (jget (this).aLL), (jget (this).bORDERED)]))
    pure ()

new_ :: IO HtmlTableData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlTableData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HtmlTableData)
getInstance = do
        pure (HtmlTableData.instance_)


