{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.input.motion.button
module TouchScreenTypesFactory where

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
import qualified TouchScreenType -- same package or java.lang

data TouchScreenTypesFactory = TouchScreenTypesFactory
    { header_ :: JavaHeader
    , fINGER :: IORef (TouchScreenType.TouchScreenType)
    , nOTOUCH :: IORef (TouchScreenType.TouchScreenType)
    , sTYLUS :: IORef (TouchScreenType.TouchScreenType)
    , uNDEFINED :: IORef (TouchScreenType.TouchScreenType)
    }

instance JavaNull TouchScreenTypesFactory where
    javaNull = javaNullRecord "TouchScreenTypesFactory"

instance JavaEquals TouchScreenTypesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenTypesFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenTypesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchScreenTypesFactory
newRecord_ = do
    header_ <- newJavaHeader
    fINGER <- newIORef javaNull
    nOTOUCH <- newIORef javaNull
    sTYLUS <- newIORef javaNull
    uNDEFINED <- newIORef javaNull
    let this = TouchScreenTypesFactory header_ fINGER nOTOUCH sTYLUS uNDEFINED
    jregisterLevel header_ this
    pure this

initFields_ :: TouchScreenTypesFactory -> IO ()
initFields_ this = do
    jset this.fINGER =<< (TouchScreenType.new_1 "Finger")
    jset this.nOTOUCH =<< (TouchScreenType.new_1 "No Touch")
    jset this.sTYLUS =<< (TouchScreenType.new_1 "Stylus")
    jset this.uNDEFINED =<< (TouchScreenType.new_1 "Undefined")
    pure ()

new_ :: IO TouchScreenTypesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchScreenTypesFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TouchScreenTypesFactory)
getInstance = do
        pure (TouchScreenTypesFactory.instance_)


