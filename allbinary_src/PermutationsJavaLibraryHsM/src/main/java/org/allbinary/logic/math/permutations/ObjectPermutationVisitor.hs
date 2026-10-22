{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.permutations
module ObjectPermutationVisitor (module ObjectPermutationVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, print, print_super, print_impl, print_2, print_2_super, print_2_impl, print, data_, stringBuilder)
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
import qualified TsUtil -- org.allbinary.TsUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data ObjectPermutationVisitor = ObjectPermutationVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    , data_ :: IORef (JavaArray (Any.Any))
    , stringBuilder :: IORef (StringMaker.StringMaker)
    }

instance JavaNull ObjectPermutationVisitor where
    javaNull = javaNullRecord "ObjectPermutationVisitor"

instance JavaEquals ObjectPermutationVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ObjectPermutationVisitor where
    (==) = jrecordEquals

instance JavaObjectClass ObjectPermutationVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ObjectPermutationVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    data_ <- newIORef javaNull
    stringBuilder <- newIORef javaNull
    let this = ObjectPermutationVisitor header_ base data_ stringBuilder
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "print" (\() -> print_impl this)
    jregisterMethod header_ "print_2" (\() -> print_2_impl this)
    pure this

initFields_ :: ObjectPermutationVisitor -> IO ()
initFields_ this = do
    jset this.data_ (javaNull)
    jset this.stringBuilder =<< (StringMaker.new_)
    pure ()

new_1 :: JavaArray (Any.Any) -> IO ObjectPermutationVisitor
new_1 data_ = do
    this <- newRecord_
    init_1 this data_
    pure this

init_1 :: ObjectPermutationVisitor -> JavaArray (Any.Any) -> IO ()
init_1 this data_ = do
        Visitor.init_ this.base
        initFields_ this
        jset (this).data_ (data_)
        pure ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: ObjectPermutationVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: ObjectPermutationVisitor)) (jtoObject a1)

visit_impl :: ObjectPermutationVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget this.stringBuilder)))))
        Control.Monad.void (ObjectPermutationVisitor.print_2 this (jget (this).data_) (jget this.stringBuilder))
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


print :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
print object_ a1 = jmethod object_ "print" (\() -> (print_impl (javaCast object_ :: ObjectPermutationVisitor))) () a1

print_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
print_super object_ a1 = (print_impl (javaCast object_ :: ObjectPermutationVisitor)) a1

print_impl :: ObjectPermutationVisitor -> JavaArray (Any.Any) -> IO (())
print_impl this data_ = do
        stringBuilder <- (StringMaker.new_)
        Control.Monad.void (ObjectPermutationVisitor.print_2 this data_ stringBuilder)
        pure ()


print_2 :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> StringMaker.StringMaker -> IO (())
print_2 object_ a1 a2 = jmethod object_ "print_2" (\() -> (print_2_impl (javaCast object_ :: ObjectPermutationVisitor))) () a1 a2

print_2_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> StringMaker.StringMaker -> IO (())
print_2_super object_ a1 a2 = (print_2_impl (javaCast object_ :: ObjectPermutationVisitor)) a1 a2

print_2_impl :: ObjectPermutationVisitor -> JavaArray (Any.Any) -> StringMaker.StringMaker -> IO (())
print_2_impl this data_ stringBuilder = do
        tsUtil <- (TsUtil.getInstance)
        let size = (jlength data_)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.appendint stringBuilder (jio (TsUtil.hashCode tsUtil (jindex data_ (i)))))
            Control.Monad.void (StringMaker.append stringBuilder (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString stringBuilder))))
        pure ()


