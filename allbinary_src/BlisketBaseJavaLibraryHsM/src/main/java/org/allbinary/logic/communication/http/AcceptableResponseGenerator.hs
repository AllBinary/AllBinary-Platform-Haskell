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
-- package org.allbinary.logic.communication.http
module AcceptableResponseGenerator where

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
import qualified AcceptableResponseUtil -- same package or java.lang
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AcceptableResponseGenerator = AcceptableResponseGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AcceptableResponseGenerator where
    javaNull = javaNullRecord "AcceptableResponseGenerator"

instance JavaEquals AcceptableResponseGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AcceptableResponseGenerator where
    (==) = jrecordEquals

instance JavaObjectClass AcceptableResponseGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AcceptableResponseGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = AcceptableResponseGenerator header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: AcceptableResponseGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (AcceptableResponseGenerator)
getInstance = do
        pure (AcceptableResponseGenerator.instance_)

new_ :: IO AcceptableResponseGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AcceptableResponseGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AcceptableResponseGenerator))) () a1

get_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: AcceptableResponseGenerator)) a1

get_impl :: AcceptableResponseGenerator -> HttpServletRequest.HttpServletRequest -> IO (String)
get_impl this httpServletRequest = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET) e)
            javaThrow (e)
            ) $ do
            acceptableResponseUtil <- (AcceptableResponseUtil.getInstance)
            acceptable <- (HttpServletRequest.getHeader httpServletRequest "accept")
            result <- newIORef =<< (AcceptableResponseUtil.getTagName acceptableResponseUtil 0)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTP))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Request Type: " ++ acceptable) this (jget (commonStrings).gET))
            when (acceptable /= javaNull) $ do
                size <- (AcceptableResponseUtil.size acceptableResponseUtil)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    when ((Prelude.fromEnum (Prelude.compare acceptable (jio (AcceptableResponseUtil.get acceptableResponseUtil index))) - 1) == 0) $ do
                        assignedValue <- (AcceptableResponseUtil.getTagName acceptableResponseUtil index)
                        jset result (assignedValue)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTP))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Response Type: " ++ (jget result)) this (jget (commonStrings).gET))
            pure ((jget result))


