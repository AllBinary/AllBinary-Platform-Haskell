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
-- package org.allbinary.game.identification
module GroupCommonFactory where

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
import qualified Any -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory

data GroupCommonFactory = GroupCommonFactory
    { header_ :: JavaHeader
    , iD :: IORef (Int)
    , gROUP_NAME_LABEL :: IORef (String)
    , iD_LABEL :: IORef (String)
    , aDDING_LABEL :: IORef (String)
    , tO_LABEL :: IORef (String)
    }

instance JavaNull GroupCommonFactory where
    javaNull = javaNullRecord "GroupCommonFactory"

instance JavaEquals GroupCommonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GroupCommonFactory where
    (==) = jrecordEquals

instance JavaObjectClass GroupCommonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GroupCommonFactory
newRecord_ = do
    header_ <- newJavaHeader
    iD <- newIORef javaNull
    gROUP_NAME_LABEL <- newIORef ""
    iD_LABEL <- newIORef ""
    aDDING_LABEL <- newIORef ""
    tO_LABEL <- newIORef ""
    let this = GroupCommonFactory header_ iD gROUP_NAME_LABEL iD_LABEL aDDING_LABEL tO_LABEL
    jregisterLevel header_ this
    pure this

initFields_ :: GroupCommonFactory -> IO ()
initFields_ this = do
    jset this.iD =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 10)
    jset this.gROUP_NAME_LABEL ("Group Name: ")
    jset this.iD_LABEL (" Id: ")
    jset this.aDDING_LABEL ("Adding: ")
    jset this.tO_LABEL (" to: ")
    pure ()

new_ :: IO GroupCommonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GroupCommonFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GroupCommonFactory)
getInstance = do
        when ((jget GroupCommonFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GroupCommonFactory.instance_ (assignedValue)
        pure ((javaCast (jget GroupCommonFactory.instance_) :: GroupCommonFactory))


