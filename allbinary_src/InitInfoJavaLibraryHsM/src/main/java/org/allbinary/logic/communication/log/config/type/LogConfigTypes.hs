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
-- package org.allbinary.logic.communication.log.config.type
module LogConfigTypes where

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
import qualified LogConfigTypeFactory -- same package or java.lang
import qualified LogConfigTypeData -- same package or java.lang
import qualified LogConfigType -- same package or java.lang
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LoggingInitInfo -- org.allbinary.logic.communication.log.config.LoggingInitInfo
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Node -- org.w3c.dom.Node

data LogConfigTypes = LogConfigTypes
    { header_ :: JavaHeader
    }

instance JavaNull LogConfigTypes where
    javaNull = javaNullRecord "LogConfigTypes"

instance JavaEquals LogConfigTypes where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigTypes where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigTypes where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

jSP_ERROR_NO_FUNCTION = "in JSP Not In Function"

{-# NOINLINE lOGGING #-}
lOGGING = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigTypes
newRecord_ = do
    header_ <- newJavaHeader
    let this = LogConfigTypes header_
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigTypes -> IO ()
initFields_ this = do
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        Control.Monad.void (LogConfigTypes.init)
        pure ()

new_ :: IO LogConfigTypes
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogConfigTypes -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: IO (())
init = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putSE "Unable to initialize LogConfigTypes" "LogConfigTypes" "init()" e)
            ) $ do
            Control.Monad.void (PreLogUtil.put "Initialize LogconfigTypes" "LogConfigTypes" "init()")
            Control.Monad.void (LogConfigTypeFactory.getInstance)
            loggingInitInfo <- (LoggingInitInfo.new_)
            logConfigTypeVector <- (LoggingInitInfo.getTypeList loggingInitInfo)
            Control.Monad.void (PreLogUtil.put ("Number Of Log Configs: " ++ javaToString (jio (LoggingInitInfo.getNumberOfLogConfigs loggingInitInfo))) "LogConfigTypes" "init()")
            Control.Monad.void (PreLogUtil.put ("Number Of Log Config Type Names: " ++ javaToString (jio (BasicArrayList.size logConfigTypeVector))) "LogConfigTypes" "init()")
            Control.Monad.void (addAllList ((jget LogConfigTypes.lOGGING)) logConfigTypeVector)
            Control.Monad.void (add ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).nETBEANS_MODULE))
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (LogConfigType.LogConfigType)
getInstance node = do
    javaCatchReturn $ do
        nameValueNode <- (DomSearchHelper.getNode (jget ((jio (LogConfigTypeData.getInstance))).nAME) (jio (Node.getChildNodes node)))
        name <- (DomNodeHelper.getTextNodeValue nameValueNode)
        descriptionValueNode <- (DomSearchHelper.getNodeNoThrow (jget ((jio (LogConfigTypeData.getInstance))).dESCRIPTION) (jio (Node.getChildNodes node)))
        when (descriptionValueNode /= javaNull) $ do
            description <- (DomNodeHelper.getTextNodeValue descriptionValueNode)
        let availableLogConfigTypes = (jget LogConfigType.availableLogConfigTypes)
        size <- (BasicArrayList.size availableLogConfigTypes)
        logConfigType <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset logConfigType ((javaCast (jio (BasicArrayList.get availableLogConfigTypes index)) :: LogConfigType.LogConfigType))
            when ((Prelude.fromEnum (Prelude.compare (jio (LogConfigType.getName ((jget logConfigType)))) name) - 1) == 0) $ do
                javaReturn ((jget logConfigType))
        javaThrow ((JavaException "Exception" ("No Such LogConfigType: " ++ name)))


