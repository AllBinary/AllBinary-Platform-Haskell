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
-- package workflows.template.data
module BasicStoreWorkFlow (module BasicStoreWorkFlow, module BasicWorkFlow) where

import BasicWorkFlow hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStoreName, getStoreName_super, getStoreName_impl)
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
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreWorkFlowInterface -- org.allbinary.logic.control.workflow.StoreWorkFlowInterface
import qualified BasicWorkFlow

-- implements StoreWorkFlowInterface
data BasicStoreWorkFlow = BasicStoreWorkFlow
    { header_ :: JavaHeader
    , base :: BasicWorkFlow.BasicWorkFlow
    }

instance JavaNull BasicStoreWorkFlow where
    javaNull = javaNullRecord "BasicStoreWorkFlow"

instance JavaEquals BasicStoreWorkFlow where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicStoreWorkFlow where
    (==) = jrecordEquals

instance JavaObjectClass BasicStoreWorkFlow where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicStoreWorkFlow
newRecord_ = do
    base <- BasicWorkFlow.newRecord_
    let header_ = base.header_
    let this = BasicStoreWorkFlow header_ base
    jregisterLevel header_ this
    StoreWorkFlowInterface.registerInterface_ header_
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    pure this

initFields_ :: BasicStoreWorkFlow -> IO ()
initFields_ this = do
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasicStoreWorkFlow
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: BasicStoreWorkFlow -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        BasicWorkFlow.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: BasicStoreWorkFlow))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: BasicStoreWorkFlow))

getStoreName_impl :: BasicStoreWorkFlow -> IO (String)
getStoreName_impl this = do
        pure ((javaCast (jio (HashMap.get ((jio (BasicWorkFlow.getPropertiesHashMap this))) (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))


