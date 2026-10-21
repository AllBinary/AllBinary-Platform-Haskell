{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
module BooleanTest where

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
import qualified Assertions -- org.junit.jupiter.api.Assertions
import qualified DisplayName -- org.junit.jupiter.api.DisplayName
import qualified Test -- org.junit.jupiter.api.Test

data BooleanTest = BooleanTest
    { header_ :: JavaHeader
    }

instance JavaNull BooleanTest where
    javaNull = javaNullRecord "BooleanTest"

instance JavaEquals BooleanTest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BooleanTest where
    (==) = jrecordEquals

instance JavaObjectClass BooleanTest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BooleanTest
newRecord_ = do
    header_ <- newJavaHeader
    let this = BooleanTest header_
    jregisterLevel header_ this
    pure this

initFields_ :: BooleanTest -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BooleanTest
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BooleanTest -> IO ()
init_ this = do
    initFields_ this


