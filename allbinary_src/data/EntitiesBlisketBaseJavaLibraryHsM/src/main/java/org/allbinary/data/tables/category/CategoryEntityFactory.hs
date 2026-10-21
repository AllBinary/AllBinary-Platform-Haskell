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
-- package org.allbinary.data.tables.category
module CategoryEntityFactory where

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
import qualified CategoryEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CategoryEntityFactory = CategoryEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CategoryEntityFactory where
    javaNull = javaNullRecord "CategoryEntityFactory"

instance JavaEquals CategoryEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass CategoryEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CategoryEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getCategoryEntityInstance" (\() -> getCategoryEntityInstance_impl this)
    pure this

initFields_ :: CategoryEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (CategoryEntityFactory)
getInstance = do
        pure (CategoryEntityFactory.instance_)

new_ :: IO CategoryEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CategoryEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getCategoryEntityInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryEntity.CategoryEntity)
getCategoryEntityInstance object_ = jmethod object_ "getCategoryEntityInstance" (\() -> (getCategoryEntityInstance_impl (javaCast object_ :: CategoryEntityFactory))) ()

getCategoryEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryEntity.CategoryEntity)
getCategoryEntityInstance_super object_ = (getCategoryEntityInstance_impl (javaCast object_ :: CategoryEntityFactory))

getCategoryEntityInstance_impl :: CategoryEntityFactory -> IO (CategoryEntity.CategoryEntity)
getCategoryEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getCategoryEntityInstance()" e)
            pure (javaNull)
            ) $ do
            (CategoryEntity.new_)


