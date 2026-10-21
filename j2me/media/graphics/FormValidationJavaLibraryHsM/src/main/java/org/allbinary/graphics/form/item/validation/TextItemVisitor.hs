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
module TextItemVisitor (module TextItemVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl)
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
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data TextItemVisitor = TextItemVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    }

instance JavaNull TextItemVisitor where
    javaNull = javaNullRecord "TextItemVisitor"

instance JavaEquals TextItemVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextItemVisitor where
    (==) = jrecordEquals

instance JavaObjectClass TextItemVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TextItemVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    let this = TextItemVisitor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: TextItemVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TextItemVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TextItemVisitor -> IO ()
init_ this = do
        Visitor.init_ this.base
        initFields_ this
        pure ()
        pure ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: TextItemVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: TextItemVisitor)) (jtoObject a1)

visit_impl :: TextItemVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        let value = (javaCast anyType :: String)
        if ((Prelude.length value) < 2) then do
            javaReturn ((jtoObject (jget ((jio (BooleanFactory.getInstance))).tRUE)))
        else do
            javaReturn ((jtoObject (jget ((jio (BooleanFactory.getInstance))).fALSE)))


