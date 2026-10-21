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
-- package org.allbinary.logic.visual.dhtml.html.input
module HtmlInputData where

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

data HtmlInputData = HtmlInputData
    { header_ :: JavaHeader
    , tEXT :: IORef (String)
    , rADIO :: IORef (String)
    , cHECKBOX :: IORef (String)
    , hIDDEN :: IORef (String)
    , iMAGE :: IORef (String)
    , pASSWORD :: IORef (String)
    , rESET :: IORef (String)
    , sUBMIT :: IORef (String)
    , tYPES :: IORef (JavaArray (String))
    }

instance JavaNull HtmlInputData where
    javaNull = javaNullRecord "HtmlInputData"

instance JavaEquals HtmlInputData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlInputData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlInputData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlInputData
newRecord_ = do
    header_ <- newJavaHeader
    tEXT <- newIORef ""
    rADIO <- newIORef ""
    cHECKBOX <- newIORef ""
    hIDDEN <- newIORef ""
    iMAGE <- newIORef ""
    pASSWORD <- newIORef ""
    rESET <- newIORef ""
    sUBMIT <- newIORef ""
    tYPES <- newIORef javaNull
    let this = HtmlInputData header_ tEXT rADIO cHECKBOX hIDDEN iMAGE pASSWORD rESET sUBMIT tYPES
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlInputData -> IO ()
initFields_ this = do
    jset this.tEXT ("text")
    jset this.rADIO ("radio")
    jset this.cHECKBOX ("checkbox")
    jset this.hIDDEN ("hidden")
    jset this.iMAGE ("image")
    jset this.pASSWORD ("password")
    jset this.rESET ("reset")
    jset this.sUBMIT ("submit")
    jset this.tYPES ((jarrayFromList [(jget (this).tEXT), (jget (this).rADIO), (jget (this).cHECKBOX), (jget (this).hIDDEN), (jget (this).iMAGE), (jget (this).pASSWORD), (jget (this).rADIO), (jget (this).rESET), (jget (this).sUBMIT)]))
    pure ()

new_ :: IO HtmlInputData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlInputData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HtmlInputData)
getInstance = do
        pure (HtmlInputData.instance_)


