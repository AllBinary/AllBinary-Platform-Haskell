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
-- package org.allbinary.data.generator
module IdGeneratorInterface where

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
import qualified IOException -- java.io.IOException

-- Java interface: the classes that implement it have these functions
data IdGeneratorInterface = IdGeneratorInterface
    { header_ :: JavaHeader
    }

instance JavaNull IdGeneratorInterface where
    javaNull = javaNullRecord "IdGeneratorInterface"

instance JavaEquals IdGeneratorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IdGeneratorInterface where
    (==) = jrecordEquals

instance JavaObjectClass IdGeneratorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> IdGeneratorInterface
fromHeader_ header = IdGeneratorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (IdGeneratorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws IOException
getNext :: (JavaObjectClass this_) => this_ -> IO (String)
getNext object_ = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: IdGeneratorInterface))) ()

getNext_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNext_super object_ = (getNext_impl (javaCast object_ :: IdGeneratorInterface))

getNext_impl :: IdGeneratorInterface -> IO (String)
getNext_impl this = javaAbstractMethod "getNext"


