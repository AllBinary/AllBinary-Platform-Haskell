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
-- package org.allbinary.data.tables.staticpages
module StaticPagesEntityFactory where

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
import qualified StaticPagesEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StaticPagesEntityFactory = StaticPagesEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StaticPagesEntityFactory where
    javaNull = javaNullRecord "StaticPagesEntityFactory"

instance JavaEquals StaticPagesEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPagesEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass StaticPagesEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StaticPagesEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StaticPagesEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getStaticPagesEntityInstance" (\() -> getStaticPagesEntityInstance_impl this)
    pure this

initFields_ :: StaticPagesEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StaticPagesEntityFactory)
getInstance = do
        pure (StaticPagesEntityFactory.instance_)

new_ :: IO StaticPagesEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticPagesEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getStaticPagesEntityInstance :: (JavaObjectClass this_) => this_ -> IO (StaticPagesEntity.StaticPagesEntity)
getStaticPagesEntityInstance object_ = jmethod object_ "getStaticPagesEntityInstance" (\() -> (getStaticPagesEntityInstance_impl (javaCast object_ :: StaticPagesEntityFactory))) ()

getStaticPagesEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (StaticPagesEntity.StaticPagesEntity)
getStaticPagesEntityInstance_super object_ = (getStaticPagesEntityInstance_impl (javaCast object_ :: StaticPagesEntityFactory))

getStaticPagesEntityInstance_impl :: StaticPagesEntityFactory -> IO (StaticPagesEntity.StaticPagesEntity)
getStaticPagesEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (StaticPagesEntity.new_)


