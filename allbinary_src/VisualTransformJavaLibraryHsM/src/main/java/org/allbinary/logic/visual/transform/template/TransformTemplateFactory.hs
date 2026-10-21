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
-- package org.allbinary.logic.visual.transform.template
module TransformTemplateFactory where

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
import qualified TransformTemplateInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TransformInfoEntity -- org.allbinary.data.tables.transform.info.TransformInfoEntity
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectFactory -- org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory

data TransformTemplateFactory = TransformTemplateFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformTemplateFactory where
    javaNull = javaNullRecord "TransformTemplateFactory"

instance JavaEquals TransformTemplateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformTemplateFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformTemplateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformTemplateFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformTemplateFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformTemplateFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformTemplateFactory)
getInstance = do
        pure (TransformTemplateFactory.instance_)

new_ :: IO TransformTemplateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformTemplateFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformTemplateInterface.TransformTemplateInterface)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformTemplateFactory))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformTemplateInterface.TransformTemplateInterface)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: TransformTemplateFactory)) a1 a2 a3 a4

getInstance_impl :: TransformTemplateFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformTemplateInterface.TransformTemplateInterface)
getInstance_impl this abeClientInformation templateName propertiesHashMap pageContext = do
        handle (\(e :: JavaException) -> do
            let error = "Failed To Get Instance"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((error ++ templateName) ++ "->TemplateFactory") this "getInstance(viewName, HashMap, PageContext)" e)
            javaThrow (e)
            ) $ do
            transformInfoEntity <- (TransformInfoEntityBuilder.getInstance)
            transformInfoInterface <- (TransformInfoEntity.get transformInfoEntity templateName propertiesHashMap pageContext)
            pure ((javaCast (jio (TransformInfoObjectFactory.getInstance ((jio (TransformInfoObjectFactory.getInstance))) abeClientInformation transformInfoInterface)) :: TransformTemplateInterface.TransformTemplateInterface))


