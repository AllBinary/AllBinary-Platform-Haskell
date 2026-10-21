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
-- package views
module ValidationOnlyTempUtil where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ValidationOnlyTempUtil = ValidationOnlyTempUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ValidationOnlyTempUtil where
    javaNull = javaNullRecord "ValidationOnlyTempUtil"

instance JavaEquals ValidationOnlyTempUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ValidationOnlyTempUtil where
    (==) = jrecordEquals

instance JavaObjectClass ValidationOnlyTempUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ValidationOnlyTempUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ValidationOnlyTempUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: ValidationOnlyTempUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (ValidationOnlyTempUtil)
getInstance = do
        pure (ValidationOnlyTempUtil.instance_)

new_ :: IO ValidationOnlyTempUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ValidationOnlyTempUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> ValidationComponentInterface.ValidationComponentInterface -> IO (String)
view object_ a1 = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: ValidationOnlyTempUtil))) () a1

view_super :: (JavaObjectClass this_) => this_ -> ValidationComponentInterface.ValidationComponentInterface -> IO (String)
view_super object_ a1 = (view_impl (javaCast object_ :: ValidationOnlyTempUtil)) a1

view_impl :: ValidationOnlyTempUtil -> ValidationComponentInterface.ValidationComponentInterface -> IO (String)
view_impl this validationComponentInterface = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (ValidationComponentInterface.getName ((jio (ValidationComponentInterface.getTransformInfoInterface validationComponentInterface)))))) this "view()")
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


