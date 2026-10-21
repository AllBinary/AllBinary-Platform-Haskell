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
-- package org.allbinary.business.category
module CategoryData where

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
import qualified CommonDataFileStrings -- org.allbinary.logic.io.file.CommonDataFileStrings

data CategoryData = CategoryData
    { header_ :: JavaHeader
    , pARENT :: IORef (String)
    , nAME :: IORef (String)
    , pATH :: IORef (String)
    , lABEL :: IORef (String)
    , vIEW :: IORef (String)
    , lEVEL :: IORef (String)
    , rEQUEST :: IORef (String)
    , rOOTCATEGORY :: IORef (String)
    , uNCRYPTED_EXTENSION :: IORef (String)
    , eNCRYPTED_EXTENSION :: IORef (String)
    }

instance JavaNull CategoryData where
    javaNull = javaNullRecord "CategoryData"

instance JavaEquals CategoryData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryData where
    (==) = jrecordEquals

instance JavaObjectClass CategoryData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryData
newRecord_ = do
    header_ <- newJavaHeader
    pARENT <- newIORef ""
    nAME <- newIORef ""
    pATH <- newIORef ""
    lABEL <- newIORef ""
    vIEW <- newIORef ""
    lEVEL <- newIORef ""
    rEQUEST <- newIORef ""
    rOOTCATEGORY <- newIORef ""
    uNCRYPTED_EXTENSION <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    let this = CategoryData header_ pARENT nAME pATH lABEL vIEW lEVEL rEQUEST rOOTCATEGORY uNCRYPTED_EXTENSION eNCRYPTED_EXTENSION
    jregisterLevel header_ this
    pure this

initFields_ :: CategoryData -> IO ()
initFields_ this = do
    jset this.pARENT ("CATEGORY_PARENT")
    jset this.nAME ("CATEGORY_NAME")
    jset this.pATH ("CATEGORY_PATH")
    jset this.lABEL ("CATEGORY_LABEL")
    jset this.vIEW ("CATEGORY_VIEW_CATEGORY")
    jset this.lEVEL ("CATEGORY_LEVEL")
    jset this.rEQUEST ("request")
    jset this.rOOTCATEGORY ("Category")
    jset this.uNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).uNCRYPTED_EXTENSION))
    jset this.eNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).eNCRYPTED_EXTENSION))
    pure ()


getInstance :: IO (CategoryData)
getInstance = do
        pure (CategoryData.instance_)

new_ :: IO CategoryData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CategoryData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


