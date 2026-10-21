{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.util
module ABStack (module ABStack, module Stack) where

import Stack hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, push, push_super, push_impl, pop, pop_super, pop_impl, peek, peek_super, peek_impl, empty, empty_super, empty_impl, search, search_super, search_impl, removeElement, removeElement_super, removeElement_impl)
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
import qualified Stack -- java.util.Stack
import qualified JsType -- jsinterop.annotations.JsType

data ABStack = ABStack
    { header_ :: JavaHeader
    , base :: Stack.Stack
    }

instance JavaNull ABStack where
    javaNull = javaNullRecord "ABStack"

instance JavaEquals ABStack where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABStack where
    (==) = jrecordEquals

instance JavaObjectClass ABStack where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABStack
newRecord_ = do
    base <- Stack.newRecord_
    header_ <- newJavaHeader
    let this = ABStack header_ base
    jregisterLevel header_ this
    jregisterLevel header_ base
    jregisterMethod header_ "push" (\() -> push_impl this)
    jregisterMethod header_ "pop" (\() -> pop_impl this)
    jregisterMethod header_ "peek" (\() -> peek_impl this)
    jregisterMethod header_ "empty" (\() -> empty_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    jregisterMethod header_ "removeElement" (\() -> removeElement_impl this)
    pure this

initFields_ :: ABStack -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABStack
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABStack -> IO ()
init_ this = do
    Stack.init_ this.base
    initFields_ this


push :: (JavaObjectClass this_) => this_ -> e -> IO (e)
push object_ a1 = jmethod object_ "push" (\() -> (push_impl (javaCast object_ :: ABStack))) () a1

push_super :: (JavaObjectClass this_) => this_ -> e -> IO (e)
push_super object_ a1 = (push_impl (javaCast object_ :: ABStack)) a1

push_impl :: ABStack -> e -> IO (e)
push_impl this item = do
        (Stack.push this.base item)


pop :: (JavaObjectClass this_) => this_ -> IO (e)
pop object_ = jmethod object_ "pop" (\() -> (pop_impl (javaCast object_ :: ABStack))) ()

pop_super :: (JavaObjectClass this_) => this_ -> IO (e)
pop_super object_ = (pop_impl (javaCast object_ :: ABStack))

pop_impl :: ABStack -> IO (e)
pop_impl this = do
        (Stack.pop this.base)


peek :: (JavaObjectClass this_) => this_ -> IO (e)
peek object_ = jmethod object_ "peek" (\() -> (peek_impl (javaCast object_ :: ABStack))) ()

peek_super :: (JavaObjectClass this_) => this_ -> IO (e)
peek_super object_ = (peek_impl (javaCast object_ :: ABStack))

peek_impl :: ABStack -> IO (e)
peek_impl this = do
        (Stack.peek this.base)


empty :: (JavaObjectClass this_) => this_ -> IO (Bool)
empty object_ = jmethod object_ "empty" (\() -> (empty_impl (javaCast object_ :: ABStack))) ()

empty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
empty_super object_ = (empty_impl (javaCast object_ :: ABStack))

empty_impl :: ABStack -> IO (Bool)
empty_impl this = do
        (Stack.empty this.base)


search :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
search object_ a1 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: ABStack))) () (jtoObject a1)

search_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
search_super object_ a1 = (search_impl (javaCast object_ :: ABStack)) (jtoObject a1)

search_impl :: ABStack -> JavaObject -> IO (Int)
search_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Stack.search this.base obj)


removeElement :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
removeElement object_ a1 = jmethod object_ "removeElement" (\() -> (removeElement_impl (javaCast object_ :: ABStack))) () (jtoObject a1)

removeElement_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
removeElement_super object_ a1 = (removeElement_impl (javaCast object_ :: ABStack)) (jtoObject a1)

removeElement_impl :: ABStack -> JavaObject -> IO (Bool)
removeElement_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Stack.removeElement this.base obj)


