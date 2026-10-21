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
-- package org.allbinary.logic.util.cache
module J2SECacheInterface (module J2SECacheInterface, module AutomaticCacheInterface) where

import AutomaticCacheInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, keySet, keySet_super, keySet_impl, toString)
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
import qualified Set -- java.util.Set
import qualified AutomaticCacheInterface

-- Java interface: the classes that implement it have these functions
data J2SECacheInterface = J2SECacheInterface
    { header_ :: JavaHeader
    }

instance JavaNull J2SECacheInterface where
    javaNull = javaNullRecord "J2SECacheInterface"

instance JavaEquals J2SECacheInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2SECacheInterface where
    (==) = jrecordEquals

instance JavaObjectClass J2SECacheInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> J2SECacheInterface
fromHeader_ header = J2SECacheInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (J2SECacheInterface header)
    AutomaticCacheInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


keySet :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet object_ = jmethod object_ "keySet" (\() -> (keySet_impl (javaCast object_ :: J2SECacheInterface))) ()

keySet_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet_super object_ = (keySet_impl (javaCast object_ :: J2SECacheInterface))

keySet_impl :: J2SECacheInterface -> IO (Set.Set)
keySet_impl this = javaAbstractMethod "keySet"


