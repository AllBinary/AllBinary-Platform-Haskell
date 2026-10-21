{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module InvalidSyntaxException (module InvalidSyntaxException, module Exception) where

import Exception hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified Exception

data InvalidSyntaxException = InvalidSyntaxException
    { header_ :: JavaHeader
    , base :: Exception.Exception
    }

instance JavaNull InvalidSyntaxException where
    javaNull = javaNullRecord "InvalidSyntaxException"

instance JavaEquals InvalidSyntaxException where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InvalidSyntaxException where
    (==) = jrecordEquals

instance JavaObjectClass InvalidSyntaxException where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InvalidSyntaxException
newRecord_ = do
    base <- Exception.newRecord_
    let header_ = base.header_
    let this = InvalidSyntaxException header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: InvalidSyntaxException -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InvalidSyntaxException
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InvalidSyntaxException -> IO ()
init_ this = do
    Exception.init_ this.base
    initFields_ this


