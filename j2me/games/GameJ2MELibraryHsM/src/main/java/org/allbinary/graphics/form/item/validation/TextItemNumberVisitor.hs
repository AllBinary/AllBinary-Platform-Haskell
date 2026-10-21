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
-- package org.allbinary.graphics.form.item.validation
module TextItemNumberVisitor (module TextItemNumberVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, logUtil)
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
import qualified TextNotificationUtil -- org.allbinary.game.input.TextNotificationUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TextItemNumberVisitor = TextItemNumberVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TextItemNumberVisitor where
    javaNull = javaNullRecord "TextItemNumberVisitor"

instance JavaEquals TextItemNumberVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextItemNumberVisitor where
    (==) = jrecordEquals

instance JavaObjectClass TextItemNumberVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TextItemNumberVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TextItemNumberVisitor header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: TextItemNumberVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO TextItemNumberVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TextItemNumberVisitor -> IO ()
init_ this = do
        Visitor.init_ this.base
        initFields_ this
        pure ()
        pure ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: TextItemNumberVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: TextItemNumberVisitor)) (jtoObject a1)

visit_impl :: TextItemNumberVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        let value = (javaCast anyType :: String)
        if ((Prelude.length value) < 2) then do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            if (jio (StringValidationUtil.isNumber stringValidationUtil value)) then do
                javaReturn ((jtoObject (jget ((jio (BooleanFactory.getInstance))).tRUE)))
            else do
                handle (\(e :: JavaException) -> do
                    commonStrings <- (CommonStrings.getInstance)
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).vISIT) e)
                    ) $ do
                    Control.Monad.void (TextNotificationUtil.fireError ((jio (TextNotificationUtil.getInstance))) "Numbers Only")
                javaReturn ((jtoObject (jget ((jio (BooleanFactory.getInstance))).fALSE)))
        else do
            javaReturn ((jtoObject (jget ((jio (BooleanFactory.getInstance))).fALSE)))


