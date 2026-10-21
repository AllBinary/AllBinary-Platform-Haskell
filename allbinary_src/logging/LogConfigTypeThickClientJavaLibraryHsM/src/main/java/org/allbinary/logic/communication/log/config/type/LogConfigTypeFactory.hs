{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.logic.communication.log.config.type
module LogConfigTypeFactory where

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
import qualified LogConfigType -- same package or java.lang
import qualified LogConfigTypes -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang

data LogConfigTypeFactory = LogConfigTypeFactory
    { header_ :: JavaHeader
    , nO_DESCRIPTION :: IORef (String)
    , oS :: IORef (LogConfigType.LogConfigType)
    , fACTORYERROR :: IORef (LogConfigType.LogConfigType)
    , fILE :: IORef (LogConfigType.LogConfigType)
    , fILEERROR :: IORef (LogConfigType.LogConfigType)
    , iDLOGGING :: IORef (LogConfigType.LogConfigType)
    , rEPLACE :: IORef (LogConfigType.LogConfigType)
    , rEPLACE_INFO :: IORef (LogConfigType.LogConfigType)
    , rEPLACEERROR :: IORef (LogConfigType.LogConfigType)
    }

instance JavaNull LogConfigTypeFactory where
    javaNull = javaNullRecord "LogConfigTypeFactory"

instance JavaEquals LogConfigTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nO_DESCRIPTION <- newIORef ""
    oS <- newIORef javaNull
    fACTORYERROR <- newIORef javaNull
    fILE <- newIORef javaNull
    fILEERROR <- newIORef javaNull
    iDLOGGING <- newIORef javaNull
    rEPLACE <- newIORef javaNull
    rEPLACE_INFO <- newIORef javaNull
    rEPLACEERROR <- newIORef javaNull
    let this = LogConfigTypeFactory header_ nO_DESCRIPTION oS fACTORYERROR fILE fILEERROR iDLOGGING rEPLACE rEPLACE_INFO rEPLACEERROR
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigTypeFactory -> IO ()
initFields_ this = do
    jset this.nO_DESCRIPTION ("No Description")
    jset this.oS =<< (LogConfigType.new_2 "Operating System" (jget (this).nO_DESCRIPTION))
    jset this.fACTORYERROR =<< (LogConfigType.new_2 "Factory Error" (jget (this).nO_DESCRIPTION))
    jset this.fILE =<< (LogConfigType.new_2 "File" (jget (this).nO_DESCRIPTION))
    jset this.fILEERROR =<< (LogConfigType.new_2 "File Error" (jget (this).nO_DESCRIPTION))
    jset this.iDLOGGING =<< (LogConfigType.new_2 "ID Logging" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACE =<< (LogConfigType.new_2 "Replace" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACE_INFO =<< (LogConfigType.new_2 "Replace Info" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACEERROR =<< (LogConfigType.new_2 "Replace Error" (jget (this).nO_DESCRIPTION))
    pure ()


getInstance :: IO (LogConfigTypeFactory)
getInstance = do
        pure (LogConfigTypeFactory.instance_)

new_ :: IO LogConfigTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogConfigTypeFactory -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (BasicArrayList.add ((jget LogConfigTypes.lOGGING)) (jget this.oS))
        Control.Monad.void (BasicArrayList.add ((jget LogConfigTypes.lOGGING)) (jget (this).fACTORYERROR))
        pure ()


