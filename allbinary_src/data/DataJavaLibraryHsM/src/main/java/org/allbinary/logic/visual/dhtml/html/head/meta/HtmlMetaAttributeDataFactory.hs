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
-- package org.allbinary.logic.visual.dhtml.html.head.meta
module HtmlMetaAttributeDataFactory where

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
import qualified HtmlMetaAttributeData -- same package or java.lang

data HtmlMetaAttributeDataFactory = HtmlMetaAttributeDataFactory
    { header_ :: JavaHeader
    , nAME :: IORef (HtmlMetaAttributeData.HtmlMetaAttributeData)
    , hTTP_EQUIV :: IORef (HtmlMetaAttributeData.HtmlMetaAttributeData)
    , cONTENT :: IORef (HtmlMetaAttributeData.HtmlMetaAttributeData)
    }

instance JavaNull HtmlMetaAttributeDataFactory where
    javaNull = javaNullRecord "HtmlMetaAttributeDataFactory"

instance JavaEquals HtmlMetaAttributeDataFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlMetaAttributeDataFactory where
    (==) = jrecordEquals

instance JavaObjectClass HtmlMetaAttributeDataFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlMetaAttributeDataFactory
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef javaNull
    hTTP_EQUIV <- newIORef javaNull
    cONTENT <- newIORef javaNull
    let this = HtmlMetaAttributeDataFactory header_ nAME hTTP_EQUIV cONTENT
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlMetaAttributeDataFactory -> IO ()
initFields_ this = do
    jset this.nAME =<< (HtmlMetaAttributeData.new_2 0 "HTMLMETA_ATTRIBUTE_NAME")
    jset this.hTTP_EQUIV =<< (HtmlMetaAttributeData.new_2 1 "HTMLMETA_ATTRIBUTE_HTTPEQUIV")
    jset this.cONTENT =<< (HtmlMetaAttributeData.new_2 2 "HTMLMETA_ATTRIBUTE_CONTENT")
    pure ()


getInstance :: IO (HtmlMetaAttributeDataFactory)
getInstance = do
        pure (HtmlMetaAttributeDataFactory.instance_)

new_ :: IO HtmlMetaAttributeDataFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlMetaAttributeDataFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


