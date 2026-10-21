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
-- package org.allbinary.logic.visual.transform.template.customizer.bodies
module BodyData where

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

data BodyData = BodyData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , vIEWNAMEKEY :: IORef (String)
    , mIN :: IORef (Int)
    }

instance JavaNull BodyData where
    javaNull = javaNullRecord "BodyData"

instance JavaEquals BodyData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BodyData where
    (==) = jrecordEquals

instance JavaObjectClass BodyData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BodyData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    vIEWNAMEKEY <- newIORef ""
    mIN <- newIORef 0
    let this = BodyData header_ nAME vIEWNAMEKEY mIN
    jregisterLevel header_ this
    pure this

initFields_ :: BodyData -> IO ()
initFields_ this = do
    jset this.nAME ("BODY_NAME")
    jset this.vIEWNAMEKEY ("Body")
    jset this.mIN (0)
    pure ()

new_ :: IO BodyData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BodyData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (BodyData)
getInstance = do
        pure (BodyData.instance_)


