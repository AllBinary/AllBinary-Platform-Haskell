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
-- package org.allbinary.game.ag.ai
module ThrustAIVisitor (module ThrustAIVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, logUtil, tRUE)
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
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ThrustAIVisitor = ThrustAIVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    , logUtil :: IORef (LogUtil.LogUtil)
    , tRUE :: IORef (Bool)
    }

instance JavaNull ThrustAIVisitor where
    javaNull = javaNullRecord "ThrustAIVisitor"

instance JavaEquals ThrustAIVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThrustAIVisitor where
    (==) = jrecordEquals

instance JavaObjectClass ThrustAIVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ThrustAIVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tRUE <- newIORef javaNull
    let this = ThrustAIVisitor header_ base logUtil tRUE
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: ThrustAIVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tRUE ((jget ((jio (BooleanFactory.getInstance))).tRUE))
    pure ()

new_ :: IO ThrustAIVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThrustAIVisitor -> IO ()
init_ this = do
        Visitor.init_ this.base
        initFields_ this
        pure ()
        pure ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: ThrustAIVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: ThrustAIVisitor)) (jtoObject a1)

visit_impl :: ThrustAIVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).vISIT) e)
            ) $ do
            let basicAI = (javaCast anyType :: BasicAI.BasicAI)
            Control.Monad.void (BasicAI.processKeyAI basicAI (Canvas.uP))
        pure ((jtoObject (jget (this).tRUE)))


