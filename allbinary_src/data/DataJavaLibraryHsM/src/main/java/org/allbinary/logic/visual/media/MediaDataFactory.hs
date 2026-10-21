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
-- package org.allbinary.logic.visual.media
module MediaDataFactory where

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
import qualified MediaData -- same package or java.lang

data MediaDataFactory = MediaDataFactory
    { header_ :: JavaHeader
    , aVI :: IORef (MediaData.MediaData)
    , bMP :: IORef (MediaData.MediaData)
    , cEL :: IORef (MediaData.MediaData)
    , fITS :: IORef (MediaData.MediaData)
    , fLI :: IORef (MediaData.MediaData)
    , gBR :: IORef (MediaData.MediaData)
    , gIF :: IORef (MediaData.MediaData)
    , gIH :: IORef (MediaData.MediaData)
    , jPG :: IORef (MediaData.MediaData)
    , pIX :: IORef (MediaData.MediaData)
    , pNG :: IORef (MediaData.MediaData)
    , pNM :: IORef (MediaData.MediaData)
    , pSD :: IORef (MediaData.MediaData)
    , pSP :: IORef (MediaData.MediaData)
    , pS :: IORef (MediaData.MediaData)
    , sGI :: IORef (MediaData.MediaData)
    , sWF :: IORef (MediaData.MediaData)
    , tGA :: IORef (MediaData.MediaData)
    , tIFF :: IORef (MediaData.MediaData)
    , wMF :: IORef (MediaData.MediaData)
    }

instance JavaNull MediaDataFactory where
    javaNull = javaNullRecord "MediaDataFactory"

instance JavaEquals MediaDataFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaDataFactory where
    (==) = jrecordEquals

instance JavaObjectClass MediaDataFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MediaDataFactory
newRecord_ = do
    header_ <- newJavaHeader
    aVI <- newIORef javaNull
    bMP <- newIORef javaNull
    cEL <- newIORef javaNull
    fITS <- newIORef javaNull
    fLI <- newIORef javaNull
    gBR <- newIORef javaNull
    gIF <- newIORef javaNull
    gIH <- newIORef javaNull
    jPG <- newIORef javaNull
    pIX <- newIORef javaNull
    pNG <- newIORef javaNull
    pNM <- newIORef javaNull
    pSD <- newIORef javaNull
    pSP <- newIORef javaNull
    pS <- newIORef javaNull
    sGI <- newIORef javaNull
    sWF <- newIORef javaNull
    tGA <- newIORef javaNull
    tIFF <- newIORef javaNull
    wMF <- newIORef javaNull
    let this = MediaDataFactory header_ aVI bMP cEL fITS fLI gBR gIF gIH jPG pIX pNG pNM pSD pSP pS sGI sWF tGA tIFF wMF
    jregisterLevel header_ this
    pure this

initFields_ :: MediaDataFactory -> IO ()
initFields_ this = do
    jset this.aVI =<< (MediaData.new_1 "avi")
    jset this.bMP =<< (MediaData.new_1 "bmp")
    jset this.cEL =<< (MediaData.new_1 "cel")
    jset this.fITS =<< (MediaData.new_1 "fits")
    jset this.fLI =<< (MediaData.new_1 "fli")
    jset this.gBR =<< (MediaData.new_1 "gbr")
    jset this.gIF =<< (MediaData.new_1 "gif")
    jset this.gIH =<< (MediaData.new_1 "gih")
    jset this.jPG =<< (MediaData.new_1 "jpg")
    jset this.pIX =<< (MediaData.new_1 "pix")
    jset this.pNG =<< (MediaData.new_1 "png")
    jset this.pNM =<< (MediaData.new_1 "pnm")
    jset this.pSD =<< (MediaData.new_1 "psd")
    jset this.pSP =<< (MediaData.new_1 "psp")
    jset this.pS =<< (MediaData.new_1 "ps")
    jset this.sGI =<< (MediaData.new_1 "SGI")
    jset this.sWF =<< (MediaData.new_1 "swf")
    jset this.tGA =<< (MediaData.new_1 "tga")
    jset this.tIFF =<< (MediaData.new_1 "tiff")
    jset this.wMF =<< (MediaData.new_1 "wmf")
    pure ()

new_ :: IO MediaDataFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MediaDataFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MediaDataFactory)
getInstance = do
        pure (MediaDataFactory.instance_)


