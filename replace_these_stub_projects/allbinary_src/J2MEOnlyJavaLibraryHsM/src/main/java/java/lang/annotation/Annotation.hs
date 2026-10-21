{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package java.lang.annotation
module Annotation where

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
import qualified Class -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data Annotation = Annotation
    { header_ :: JavaHeader
    }

instance JavaNull Annotation where
    javaNull = javaNullRecord "Annotation"

instance JavaEquals Annotation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Annotation where
    (==) = jrecordEquals

instance JavaObjectClass Annotation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> Annotation
fromHeader_ header = Annotation header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (Annotation header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


annotationType :: (JavaObjectClass this_) => this_ -> IO (Class.Class)
annotationType object_ = jmethod object_ "annotationType" (\() -> (annotationType_impl (javaCast object_ :: Annotation))) ()

annotationType_super :: (JavaObjectClass this_) => this_ -> IO (Class.Class)
annotationType_super object_ = (annotationType_impl (javaCast object_ :: Annotation))

annotationType_impl :: Annotation -> IO (Class.Class)
annotationType_impl this = javaAbstractMethod "annotationType"


