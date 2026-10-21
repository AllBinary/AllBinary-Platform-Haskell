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
module AuthenticationHelperFactory (module AuthenticationHelperFactory, module TagHelperFactory) where

import TagHelperFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance_overload1, getInstance_overload1_super, getInstance_overload1_impl, getInstance, getInstance_overload2, getInstance_overload2_super, getInstance_overload2_impl, getInstance, logUtil)
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
import qualified AuthenticationHelper -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TagHelperFactory

data AuthenticationHelperFactory = AuthenticationHelperFactory
    { header_ :: JavaHeader
    , base :: TagHelperFactory.TagHelperFactory
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AuthenticationHelperFactory where
    javaNull = javaNullRecord "AuthenticationHelperFactory"

instance JavaEquals AuthenticationHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AuthenticationHelperFactory
newRecord_ = do
    base <- TagHelperFactory.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = AuthenticationHelperFactory header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    pure this

initFields_ :: AuthenticationHelperFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO AuthenticationHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthenticationHelperFactory -> IO ()
init_ this = do
        TagHelperFactory.init_ this.base
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
getInstance_overload1 object_ a1 a2 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: AuthenticationHelperFactory))) () a1 a2

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload1_super object_ a1 a2 = (getInstance_overload1_impl (javaCast object_ :: AuthenticationHelperFactory)) a1 a2

getInstance_overload1_impl :: AuthenticationHelperFactory -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload1_impl this hashMap pageContext = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (fmap jtoObject (AuthenticationHelper.new_2 hashMap pageContext))


-- throws LicensingException
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2 object_ a1 a2 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: AuthenticationHelperFactory))) () a1 a2

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2_super object_ a1 a2 = (getInstance_overload2_impl (javaCast object_ :: AuthenticationHelperFactory)) a1 a2

getInstance_overload2_impl :: AuthenticationHelperFactory -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload2_impl this hashMap httpServletRequest = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (fmap jtoObject (AuthenticationHelper.new_2 hashMap httpServletRequest))


