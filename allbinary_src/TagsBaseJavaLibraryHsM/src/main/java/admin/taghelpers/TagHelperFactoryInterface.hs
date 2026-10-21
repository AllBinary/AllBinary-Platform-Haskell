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
-- package admin.taghelpers
module TagHelperFactoryInterface where

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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

-- Java interface: the classes that implement it have these functions
data TagHelperFactoryInterface = TagHelperFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull TagHelperFactoryInterface where
    javaNull = javaNullRecord "TagHelperFactoryInterface"

instance JavaEquals TagHelperFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TagHelperFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass TagHelperFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TagHelperFactoryInterface
fromHeader_ header = TagHelperFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TagHelperFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception, LicensingException
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TagHelperFactoryInterface))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TagHelperFactoryInterface)) a1 a2

getInstance_impl :: TagHelperFactoryInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_impl this hashMap pageContext = javaAbstractMethod "getInstance"


