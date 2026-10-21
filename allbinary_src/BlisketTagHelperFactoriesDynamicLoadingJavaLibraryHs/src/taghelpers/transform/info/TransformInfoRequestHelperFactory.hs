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
-- package taghelpers.transform.info
module TransformInfoRequestHelperFactory where

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
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified HelperFactory -- admin.taghelpers.HelperFactory

-- implements TagHelperFactoryInterface
data TransformInfoRequestHelperFactory = TransformInfoRequestHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoRequestHelperFactory where
    javaNull = javaNullRecord "TransformInfoRequestHelperFactory"

instance JavaEquals TransformInfoRequestHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoRequestHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoRequestHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLASSNAME = "taghelpers.transform.info.TransformInfoRequestHelper"

fACTORYNAME = "TransformInfoRequestHelperFactory"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoRequestHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformInfoRequestHelperFactory header_
    jregisterLevel header_ this
    TagHelperFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformInfoRequestHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformInfoRequestHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoRequestHelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoRequestHelperFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TransformInfoRequestHelperFactory)) a1 a2

getInstance_impl :: TransformInfoRequestHelperFactory -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_impl this hashMap pageContext = do
        (fmap jtoObject (HelperFactory.getInstance fACTORYNAME cLASSNAME hashMap pageContext))


