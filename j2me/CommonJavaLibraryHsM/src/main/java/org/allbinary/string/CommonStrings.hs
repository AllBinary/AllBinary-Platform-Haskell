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
module CommonStrings where

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

data CommonStrings = CommonStrings
    { header_ :: JavaHeader
    , eMPTY :: IORef (String)
    , cREATE_IMAGE :: IORef (String)
    , pLEASE_WAIT :: IORef (String)
    , pLEASE_WAIT_FOR_SERVER :: IORef (String)
    , pERIODS :: IORef (String)
    , lOADING :: IORef (String)
    , cONSTRUCTOR :: IORef (String)
    , sTART :: IORef (String)
    , eND :: IORef (String)
    , eXCEPTION :: IORef (String)
    , eXCEPTION_LABEL :: IORef (String)
    , cLEANUP :: IORef (String)
    , iNIT :: IORef (String)
    , cLOSE :: IORef (String)
    , uP :: IORef (String)
    , dOWN :: IORef (String)
    , lEFT :: IORef (String)
    , rIGHT :: IORef (String)
    , dIRECTION_NAME :: IORef (JavaArray (String))
    , cREATE :: IORef (String)
    , rEMOVE :: IORef (String)
    , uPDATE :: IORef (String)
    , dELETE :: IORef (String)
    , delete :: IORef (String)
    , lOAD :: IORef (String)
    , sAVE :: IORef (String)
    , aDD :: IORef (String)
    , dROP :: IORef (String)
    , iNSERT :: IORef (String)
    , vISIT :: IORef (String)
    , sTART_METHOD_NAME :: IORef (String)
    , eND_METHOD_NAME :: IORef (String)
    , gET :: IORef (String)
    , pROCESS :: IORef (String)
    , gET_INSTANCE :: IORef (String)
    , gET_LIST :: IORef (String)
    , rUN :: IORef (String)
    , sTART_RUNNABLE :: IORef (String)
    , rUNNING :: IORef (String)
    , eND_RUNNABLE :: IORef (String)
    , dISABLE :: IORef (String)
    , eNABLE :: IORef (String)
    , sUCCESS :: IORef (String)
    , fAILURE :: IORef (String)
    , nOT_IMPLEMENTED :: IORef (String)
    , uNKNOWN :: IORef (String)
    , oN_EVENT :: IORef (String)
    , iS_VALID :: IORef (String)
    , tOSTRING :: IORef (String)
    , aDD_LISTENER :: IORef (String)
    , rEMOVE_LISTENER :: IORef (String)
    , sIZE :: IORef (String)
    }

instance JavaNull CommonStrings where
    javaNull = javaNullRecord "CommonStrings"

instance JavaEquals CommonStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonStrings where
    (==) = jrecordEquals

instance JavaObjectClass CommonStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonStrings
newRecord_ = do
    header_ <- newJavaHeader
    eMPTY <- newIORef ""
    cREATE_IMAGE <- newIORef ""
    pLEASE_WAIT <- newIORef ""
    pLEASE_WAIT_FOR_SERVER <- newIORef ""
    pERIODS <- newIORef ""
    lOADING <- newIORef ""
    cONSTRUCTOR <- newIORef ""
    sTART <- newIORef ""
    eND <- newIORef ""
    eXCEPTION <- newIORef ""
    eXCEPTION_LABEL <- newIORef ""
    cLEANUP <- newIORef ""
    iNIT <- newIORef ""
    cLOSE <- newIORef ""
    uP <- newIORef ""
    dOWN <- newIORef ""
    lEFT <- newIORef ""
    rIGHT <- newIORef ""
    dIRECTION_NAME <- newIORef javaNull
    cREATE <- newIORef ""
    rEMOVE <- newIORef ""
    uPDATE <- newIORef ""
    dELETE <- newIORef ""
    delete <- newIORef ""
    lOAD <- newIORef ""
    sAVE <- newIORef ""
    aDD <- newIORef ""
    dROP <- newIORef ""
    iNSERT <- newIORef ""
    vISIT <- newIORef ""
    sTART_METHOD_NAME <- newIORef ""
    eND_METHOD_NAME <- newIORef ""
    gET <- newIORef ""
    pROCESS <- newIORef ""
    gET_INSTANCE <- newIORef ""
    gET_LIST <- newIORef ""
    rUN <- newIORef ""
    sTART_RUNNABLE <- newIORef ""
    rUNNING <- newIORef ""
    eND_RUNNABLE <- newIORef ""
    dISABLE <- newIORef ""
    eNABLE <- newIORef ""
    sUCCESS <- newIORef ""
    fAILURE <- newIORef ""
    nOT_IMPLEMENTED <- newIORef ""
    uNKNOWN <- newIORef ""
    oN_EVENT <- newIORef ""
    iS_VALID <- newIORef ""
    tOSTRING <- newIORef ""
    aDD_LISTENER <- newIORef ""
    rEMOVE_LISTENER <- newIORef ""
    sIZE <- newIORef ""
    let this = CommonStrings header_ eMPTY cREATE_IMAGE pLEASE_WAIT pLEASE_WAIT_FOR_SERVER pERIODS lOADING cONSTRUCTOR sTART eND eXCEPTION eXCEPTION_LABEL cLEANUP iNIT cLOSE uP dOWN lEFT rIGHT dIRECTION_NAME cREATE rEMOVE uPDATE dELETE delete lOAD sAVE aDD dROP iNSERT vISIT sTART_METHOD_NAME eND_METHOD_NAME gET pROCESS gET_INSTANCE gET_LIST rUN sTART_RUNNABLE rUNNING eND_RUNNABLE dISABLE eNABLE sUCCESS fAILURE nOT_IMPLEMENTED uNKNOWN oN_EVENT iS_VALID tOSTRING aDD_LISTENER rEMOVE_LISTENER sIZE
    jregisterLevel header_ this
    pure this

initFields_ :: CommonStrings -> IO ()
initFields_ this = do
    jset this.eMPTY ("Empty")
    jset this.cREATE_IMAGE ("createImage")
    jset this.pLEASE_WAIT ("Please Wait")
    jset this.pLEASE_WAIT_FOR_SERVER ("Please Wait Getting Data From Server...")
    jset this.pERIODS ("...")
    jset this.lOADING ("Loading...")
    jset this.cONSTRUCTOR ("Constructor")
    jset this.sTART ("Start")
    jset this.eND ("End")
    jset this.eXCEPTION ("Exception")
    jset this.eXCEPTION_LABEL ("Exception: ")
    jset this.cLEANUP ("cleanup")
    jset this.iNIT ("init")
    jset this.cLOSE ("close")
    jset this.uP ("up")
    jset this.dOWN ("down")
    jset this.lEFT ("left")
    jset this.rIGHT ("right")
    jset this.dIRECTION_NAME ((jarrayFromList [(jget (this).dOWN), (jget (this).lEFT), (jget (this).rIGHT), (jget (this).uP)]))
    jset this.cREATE ("Create")
    jset this.rEMOVE ("Remove")
    jset this.uPDATE ("Update")
    jset this.dELETE ("Delete")
    jset this.delete ("delete")
    jset this.lOAD ("load")
    jset this.sAVE ("save")
    jset this.aDD ("Add")
    jset this.dROP ("Drop")
    jset this.iNSERT ("Insert")
    jset this.vISIT ("visit")
    jset this.sTART_METHOD_NAME ((jget (this).sTART))
    jset this.eND_METHOD_NAME ("end")
    jset this.gET ("get")
    jset this.pROCESS ("process")
    jset this.gET_INSTANCE ("getInstance")
    jset this.gET_LIST ("getList")
    jset this.rUN ("run")
    jset this.sTART_RUNNABLE ("Start Runnable")
    jset this.rUNNING ("Running")
    jset this.eND_RUNNABLE ("End Runnable")
    jset this.dISABLE ("disable")
    jset this.eNABLE ("enable")
    jset this.sUCCESS ("Command Success")
    jset this.fAILURE ("Command Failed")
    jset this.nOT_IMPLEMENTED ("Not Implemented")
    jset this.uNKNOWN ("Unknown")
    jset this.oN_EVENT ("onEvent")
    jset this.iS_VALID ("isValid")
    jset this.tOSTRING ("toString")
    jset this.aDD_LISTENER ("addListener")
    jset this.rEMOVE_LISTENER ("removeListener")
    jset this.sIZE ("size")
    pure ()

new_ :: IO CommonStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonStrings)
getInstance = do
        pure (CommonStrings.instance_)


