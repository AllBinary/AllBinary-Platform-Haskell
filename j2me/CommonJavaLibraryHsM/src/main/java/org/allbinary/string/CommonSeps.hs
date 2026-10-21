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
module CommonSeps where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data CommonSeps = CommonSeps
    { header_ :: JavaHeader
    , nEW_LINE :: IORef (String)
    , sEMICOLON :: IORef (String)
    , eQUALS :: IORef (String)
    , sPACE :: IORef (String)
    , cOMMA :: IORef (String)
    , cOLON :: IORef (String)
    , pERIOD :: IORef (String)
    , uNDERSCORE :: IORef (String)
    , cOLON_SEP :: IORef (String)
    , cOMMA_SEP :: IORef (String)
    , pARENTHESIS_OPEN :: IORef (String)
    , pARENTHESIS_CLOSE :: IORef (String)
    , bRACE_OPEN :: IORef (String)
    , bRACE_CLOSE :: IORef (String)
    , bRACKET_OPEN :: IORef (String)
    , bRACKET_CLOSE :: IORef (String)
    , dASH :: IORef (String)
    , pERCENT :: IORef (String)
    , aMPERSAND :: IORef (String)
    , fORWARD_SLASH :: IORef (String)
    , bACK_SLASH :: IORef (String)
    , qUESTION :: IORef (String)
    , qUOTE :: IORef (String)
    , qUOTE_END :: IORef (String)
    , cOMMENT :: IORef (String)
    , iNDENT :: IORef (String)
    }

instance JavaNull CommonSeps where
    javaNull = javaNullRecord "CommonSeps"

instance JavaEquals CommonSeps where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonSeps where
    (==) = jrecordEquals

instance JavaObjectClass CommonSeps where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonSeps
newRecord_ = do
    header_ <- newJavaHeader
    nEW_LINE <- newIORef ""
    sEMICOLON <- newIORef ""
    eQUALS <- newIORef ""
    sPACE <- newIORef ""
    cOMMA <- newIORef ""
    cOLON <- newIORef ""
    pERIOD <- newIORef ""
    uNDERSCORE <- newIORef ""
    cOLON_SEP <- newIORef ""
    cOMMA_SEP <- newIORef ""
    pARENTHESIS_OPEN <- newIORef ""
    pARENTHESIS_CLOSE <- newIORef ""
    bRACE_OPEN <- newIORef ""
    bRACE_CLOSE <- newIORef ""
    bRACKET_OPEN <- newIORef ""
    bRACKET_CLOSE <- newIORef ""
    dASH <- newIORef ""
    pERCENT <- newIORef ""
    aMPERSAND <- newIORef ""
    fORWARD_SLASH <- newIORef ""
    bACK_SLASH <- newIORef ""
    qUESTION <- newIORef ""
    qUOTE <- newIORef ""
    qUOTE_END <- newIORef ""
    cOMMENT <- newIORef ""
    iNDENT <- newIORef ""
    let this = CommonSeps header_ nEW_LINE sEMICOLON eQUALS sPACE cOMMA cOLON pERIOD uNDERSCORE cOLON_SEP cOMMA_SEP pARENTHESIS_OPEN pARENTHESIS_CLOSE bRACE_OPEN bRACE_CLOSE bRACKET_OPEN bRACKET_CLOSE dASH pERCENT aMPERSAND fORWARD_SLASH bACK_SLASH qUESTION qUOTE qUOTE_END cOMMENT iNDENT
    jregisterLevel header_ this
    pure this

initFields_ :: CommonSeps -> IO ()
initFields_ this = do
    jset this.nEW_LINE ("\n")
    jset this.sEMICOLON (";")
    jset this.eQUALS ("=")
    jset this.sPACE (" ")
    jset this.cOMMA (",")
    jset this.cOLON (":")
    jset this.pERIOD (".")
    jset this.uNDERSCORE ("_")
    jset this.cOLON_SEP =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).cOLON)))) (jget (this).sPACE)))))
    jset this.cOMMA_SEP =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).cOMMA)))) (jget (this).sPACE)))))
    jset this.pARENTHESIS_OPEN ("(")
    jset this.pARENTHESIS_CLOSE (")")
    jset this.bRACE_OPEN ("{")
    jset this.bRACE_CLOSE ("}")
    jset this.bRACKET_OPEN ("[")
    jset this.bRACKET_CLOSE ("]")
    jset this.dASH ("-")
    jset this.pERCENT ("%")
    jset this.aMPERSAND ("&")
    jset this.fORWARD_SLASH ("/")
    jset this.bACK_SLASH ("\\")
    jset this.qUESTION ("?")
    jset this.qUOTE ("\"")
    jset this.qUOTE_END ("\",")
    jset this.cOMMENT ("//")
    jset this.iNDENT ("    ")
    pure ()

new_ :: IO CommonSeps
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonSeps -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonSeps)
getInstance = do
        pure (CommonSeps.instance_)


