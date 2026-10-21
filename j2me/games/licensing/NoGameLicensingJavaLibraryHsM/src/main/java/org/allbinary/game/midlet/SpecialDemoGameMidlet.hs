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
-- package org.allbinary.game.midlet
module SpecialDemoGameMidlet (module SpecialDemoGameMidlet, module DemoGameMidlet) where

import DemoGameMidlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initView, initView_super, initView_impl, preInit, preInit_super, preInit_impl)
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
import qualified LicenseLoadingType -- same package or java.lang
import qualified LicensedDemoSetupFactory -- same package or java.lang
import qualified LicenseCheckRunnableFactory -- same package or java.lang
import qualified ClientInformationFactory -- org.allbinary.logic.system.security.licensing.ClientInformationFactory
import qualified LicenseServerInitFileUtil -- org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil
import qualified DemoGameMidlet

data SpecialDemoGameMidlet = SpecialDemoGameMidlet
    { header_ :: JavaHeader
    , base :: DemoGameMidlet.DemoGameMidlet
    }

instance JavaNull SpecialDemoGameMidlet where
    javaNull = javaNullRecord "SpecialDemoGameMidlet"

instance JavaEquals SpecialDemoGameMidlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialDemoGameMidlet where
    (==) = jrecordEquals

instance JavaObjectClass SpecialDemoGameMidlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SpecialDemoGameMidlet
newRecord_ = do
    base <- DemoGameMidlet.newRecord_
    let header_ = base.header_
    let this = SpecialDemoGameMidlet header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "initView" (\() -> initView_impl this)
    jregisterMethod header_ "preInit" (\() -> preInit_impl this)
    pure this

initFields_ :: SpecialDemoGameMidlet -> IO ()
initFields_ this = do
    pure ()

new_4 :: ClientInformationFactory.ClientInformationFactory -> LicenseLoadingType.LicenseLoadingType -> LicensedDemoSetupFactory.LicensedDemoSetupFactory -> LicenseCheckRunnableFactory.LicenseCheckRunnableFactory -> IO SpecialDemoGameMidlet
new_4 clientInformationFactory licenseLoadingType demoSetupFactory licenseCheckRunnableFactory = do
    this <- newRecord_
    init_4 this clientInformationFactory licenseLoadingType demoSetupFactory licenseCheckRunnableFactory
    pure this

init_4 :: SpecialDemoGameMidlet -> ClientInformationFactory.ClientInformationFactory -> LicenseLoadingType.LicenseLoadingType -> LicensedDemoSetupFactory.LicensedDemoSetupFactory -> LicenseCheckRunnableFactory.LicenseCheckRunnableFactory -> IO ()
init_4 this clientInformationFactory licenseLoadingType demoSetupFactory licenseCheckRunnableFactory = do
        DemoGameMidlet.init_1 this.base (clientInformationFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


initView :: (JavaObjectClass this_) => this_ -> IO (())
initView object_ = jmethod object_ "initView" (\() -> (initView_impl (javaCast object_ :: SpecialDemoGameMidlet))) ()

initView_super :: (JavaObjectClass this_) => this_ -> IO (())
initView_super object_ = (initView_impl (javaCast object_ :: SpecialDemoGameMidlet))

initView_impl :: SpecialDemoGameMidlet -> IO (())
initView_impl this = do
        pure ()


preInit :: (JavaObjectClass this_) => this_ -> IO (())
preInit object_ = jmethod object_ "preInit" (\() -> (preInit_impl (javaCast object_ :: SpecialDemoGameMidlet))) ()

preInit_super :: (JavaObjectClass this_) => this_ -> IO (())
preInit_super object_ = (preInit_impl (javaCast object_ :: SpecialDemoGameMidlet))

preInit_impl :: SpecialDemoGameMidlet -> IO (())
preInit_impl this = do
        Control.Monad.void (LicenseServerInitFileUtil.init ((jio (LicenseServerInitFileUtil.new_))))
        pure ()


