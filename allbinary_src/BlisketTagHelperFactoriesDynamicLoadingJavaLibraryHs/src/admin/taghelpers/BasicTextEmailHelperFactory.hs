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
module BasicTextEmailHelperFactory where

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
import qualified HelperFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TagHelperFactoryInterface

-- implements TagHelperFactoryInterface
data BasicTextEmailHelperFactory = BasicTextEmailHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull BasicTextEmailHelperFactory where
    javaNull = javaNullRecord "BasicTextEmailHelperFactory"

instance JavaEquals BasicTextEmailHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTextEmailHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicTextEmailHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLASSNAME = "admin.taghelpers.BasicTextEmailHelper"

fACTORYNAME = "BasicTextEmailHelperFactory"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTextEmailHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicTextEmailHelperFactory header_
    jregisterLevel header_ this
    TagHelperFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicTextEmailHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicTextEmailHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTextEmailHelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getInstance :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicTextEmailHelperFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: BasicTextEmailHelperFactory)) a1 a2

getInstance_impl :: BasicTextEmailHelperFactory -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_impl this hashMap pageContext = do
        (fmap jtoObject (HelperFactory.getInstance fACTORYNAME cLASSNAME hashMap pageContext))


