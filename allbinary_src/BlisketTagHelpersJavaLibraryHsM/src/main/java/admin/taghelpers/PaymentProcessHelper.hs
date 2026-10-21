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
module PaymentProcessHelper (module PaymentProcessHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, paymentProcessorComponent)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TransformInfoHttpFactory -- org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified PaymentProcessorComponent -- views.admin.payment.PaymentProcessorComponent
import qualified TagHelper

data PaymentProcessHelper = PaymentProcessHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , paymentProcessorComponent :: IORef (PaymentProcessorComponent.PaymentProcessorComponent)
    }

instance JavaNull PaymentProcessHelper where
    javaNull = javaNullRecord "PaymentProcessHelper"

instance JavaEquals PaymentProcessHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessHelper where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentProcessHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    paymentProcessorComponent <- newIORef javaNull
    let this = PaymentProcessHelper header_ base paymentProcessorComponent
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: PaymentProcessHelper -> IO ()
initFields_ this = do
    jset this.paymentProcessorComponent (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO PaymentProcessHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: PaymentProcessHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        let transformInfoInterface = (javaCast (jio (TransformInfoHttpFactory.getInstance propertiesHashMap pageContext)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        assignedValue <- (PaymentProcessorComponent.new_1 transformInfoInterface)
        jset (this).paymentProcessorComponent (assignedValue)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (String)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PaymentProcessHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (String)
process_super object_ = (process_impl (javaCast object_ :: PaymentProcessHelper))

process_impl :: PaymentProcessHelper -> IO (String)
process_impl this = do
        (PaymentProcessorComponent.view ((jget (this).paymentProcessorComponent)))


