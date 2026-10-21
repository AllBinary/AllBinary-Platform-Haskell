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
import qualified BasicArrayList -- same package or java.lang
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory

data LogConfigTypeFactory = LogConfigTypeFactory
    { header_ :: JavaHeader
    , nO_DESCRIPTION :: IORef (String)
    , iNIT_SERVER :: IORef (LogConfigType.LogConfigType)
    , lOBBY_SERVER :: IORef (LogConfigType.LogConfigType)
    , gAME_SERVER :: IORef (LogConfigType.LogConfigType)
    , gAME_SIMULATOR :: IORef (LogConfigType.LogConfigType)
    , cUSTOM_TYPES :: IORef (LogConfigType.LogConfigType)
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
    iNIT_SERVER <- newIORef javaNull
    lOBBY_SERVER <- newIORef javaNull
    gAME_SERVER <- newIORef javaNull
    gAME_SIMULATOR <- newIORef javaNull
    cUSTOM_TYPES <- newIORef javaNull
    let this = LogConfigTypeFactory header_ nO_DESCRIPTION iNIT_SERVER lOBBY_SERVER gAME_SERVER gAME_SIMULATOR cUSTOM_TYPES
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigTypeFactory -> IO ()
initFields_ this = do
    jset this.nO_DESCRIPTION ("No Description")
    jset this.iNIT_SERVER =<< (LogConfigType.new_2 "Init Server" (jget (this).nO_DESCRIPTION))
    jset this.lOBBY_SERVER =<< (LogConfigType.new_2 "Lobby Server" (jget (this).nO_DESCRIPTION))
    jset this.gAME_SERVER =<< (LogConfigType.new_2 "Game Server" (jget (this).nO_DESCRIPTION))
    jset this.gAME_SIMULATOR =<< (LogConfigType.new_2 "Game Simulator" (jget (this).nO_DESCRIPTION))
    jset this.cUSTOM_TYPES =<< (LogConfigType.new_2 "Custom Types" (jget (this).nO_DESCRIPTION))
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
        Control.Monad.void (BasicArrayList.add ((jget LogConfigTypes.lOGGING)) (jget (this).iNIT_SERVER))
        pure ()


