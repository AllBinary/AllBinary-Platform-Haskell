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
-- package admin.taghelpers
module TagHelperFactory where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TagHelperFactoryInterface

-- implements TagHelperFactoryInterface
data TagHelperFactory = TagHelperFactory
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TagHelperFactory where
    javaNull = javaNullRecord "TagHelperFactory"

instance JavaEquals TagHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TagHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass TagHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TagHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = TagHelperFactory header_ commonStrings
    jregisterLevel header_ this
    TagHelperFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TagHelperFactory -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO TagHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TagHelperFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception, LicensingException
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TagHelperFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TagHelperFactory)) a1 a2

getInstance_impl :: TagHelperFactory -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_impl this hashMap pageContext = do
        javaThrow ((JavaException "RuntimeException" ""))


