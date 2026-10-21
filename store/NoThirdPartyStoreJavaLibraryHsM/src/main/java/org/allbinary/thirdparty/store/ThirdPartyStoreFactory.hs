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
-- package org.allbinary.thirdparty.store
module ThirdPartyStoreFactory where

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
import qualified NoThirdPartyStore -- same package or java.lang
import qualified ThirdPartyStore -- same package or java.lang

data ThirdPartyStoreFactory = ThirdPartyStoreFactory
    { header_ :: JavaHeader
    }

instance JavaNull ThirdPartyStoreFactory where
    javaNull = javaNullRecord "ThirdPartyStoreFactory"

instance JavaEquals ThirdPartyStoreFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThirdPartyStoreFactory where
    (==) = jrecordEquals

instance JavaObjectClass ThirdPartyStoreFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((NoThirdPartyStore.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThirdPartyStoreFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ThirdPartyStoreFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ThirdPartyStoreFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ThirdPartyStore.ThirdPartyStore)
getInstance = do
        pure ((javaCast ThirdPartyStoreFactory.instance_ :: ThirdPartyStore.ThirdPartyStore))

new_ :: IO ThirdPartyStoreFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThirdPartyStoreFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


