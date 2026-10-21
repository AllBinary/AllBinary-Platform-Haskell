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
module AuthenticationRequestHelperFactory where

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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified TagHelperFactoryInterface

-- implements TagHelperFactoryInterface
data AuthenticationRequestHelperFactory = AuthenticationRequestHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull AuthenticationRequestHelperFactory where
    javaNull = javaNullRecord "AuthenticationRequestHelperFactory"

instance JavaEquals AuthenticationRequestHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationRequestHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationRequestHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLASSNAME = "admin.taghelpers.AuthenticationRequestHelper"

fACTORYNAME = "AuthenticationRequestHelperFactory"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AuthenticationRequestHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AuthenticationRequestHelperFactory header_
    jregisterLevel header_ this
    TagHelperFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    pure this

initFields_ :: AuthenticationRequestHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AuthenticationRequestHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthenticationRequestHelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> HashMap.HashMap -> o2 -> IO (Any.Any)
getInstance this a1 a2
    | jisInstanceOf a2 (javaNull :: PageContext.PageContext) = getInstance_overload1 this a1 (javaCast a2 :: PageContext.PageContext)
    | jisInstanceOf a2 (javaNull :: HttpServletRequest.HttpServletRequest) = getInstance_overload2 this a1 (javaCast a2 :: HttpServletRequest.HttpServletRequest)
    | otherwise = getInstance_overload2 this a1 (javaCast a2 :: HttpServletRequest.HttpServletRequest)

-- throws LicensingException
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload1 object_ a1 a2 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: AuthenticationRequestHelperFactory))) () a1 a2

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload1_super object_ a1 a2 = (getInstance_overload1_impl (javaCast object_ :: AuthenticationRequestHelperFactory)) a1 a2

getInstance_overload1_impl :: AuthenticationRequestHelperFactory -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload1_impl this hashMap pageContext = do
        (fmap jtoObject (HelperFactory.getInstance (AuthenticationRequestHelperFactory.fACTORYNAME) (AuthenticationRequestHelperFactory.cLASSNAME) hashMap pageContext))


-- throws LicensingException
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2 object_ a1 a2 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: AuthenticationRequestHelperFactory))) () a1 a2

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2_super object_ a1 a2 = (getInstance_overload2_impl (javaCast object_ :: AuthenticationRequestHelperFactory)) a1 a2

getInstance_overload2_impl :: AuthenticationRequestHelperFactory -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2_impl this hashMap httpServletRequest = do
        (fmap jtoObject (HelperFactory.getInstance (AuthenticationRequestHelperFactory.fACTORYNAME) (AuthenticationRequestHelperFactory.cLASSNAME) hashMap httpServletRequest))


