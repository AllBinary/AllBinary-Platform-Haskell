{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
module AppTest where

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

data AppTest = AppTest
    { header_ :: JavaHeader
    }

instance JavaNull AppTest where
    javaNull = javaNullRecord "AppTest"

instance JavaEquals AppTest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AppTest where
    (==) = jrecordEquals

instance JavaObjectClass AppTest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AppTest
newRecord_ = do
    header_ <- newJavaHeader
    let this = AppTest header_
    jregisterLevel header_ this
    jregisterMethod header_ "testAddition" (\() -> testAddition_impl this)
    jregisterMethod header_ "testStringEquality" (\() -> testStringEquality_impl this)
    jregisterMethod header_ "testBooleanAssertions" (\() -> testBooleanAssertions_impl this)
    pure this

initFields_ :: AppTest -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AppTest
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AppTest -> IO ()
init_ this = do
    initFields_ this


testAddition :: (JavaObjectClass this_) => this_ -> IO (())
testAddition object_ = jmethod object_ "testAddition" (\() -> (testAddition_impl (javaCast object_ :: AppTest))) ()

testAddition_super :: (JavaObjectClass this_) => this_ -> IO (())
testAddition_super object_ = (testAddition_impl (javaCast object_ :: AppTest))

testAddition_impl :: AppTest -> IO (())
testAddition_impl this = do
        Control.Monad.void (Assertions.assertEquals 2 (1 + 1))
        pure ()


testStringEquality :: (JavaObjectClass this_) => this_ -> IO (())
testStringEquality object_ = jmethod object_ "testStringEquality" (\() -> (testStringEquality_impl (javaCast object_ :: AppTest))) ()

testStringEquality_super :: (JavaObjectClass this_) => this_ -> IO (())
testStringEquality_super object_ = (testStringEquality_impl (javaCast object_ :: AppTest))

testStringEquality_impl :: AppTest -> IO (())
testStringEquality_impl this = do
        let expected = "Hello World!"
        let actual = "Hello World!"
        Control.Monad.void (Assertions.assertEquals expected actual)
        pure ()


testBooleanAssertions :: (JavaObjectClass this_) => this_ -> IO (())
testBooleanAssertions object_ = jmethod object_ "testBooleanAssertions" (\() -> (testBooleanAssertions_impl (javaCast object_ :: AppTest))) ()

testBooleanAssertions_super :: (JavaObjectClass this_) => this_ -> IO (())
testBooleanAssertions_super object_ = (testBooleanAssertions_impl (javaCast object_ :: AppTest))

testBooleanAssertions_impl :: AppTest -> IO (())
testBooleanAssertions_impl this = do
        Control.Monad.void (Assertions.assertTrue True)
        Control.Monad.void (Assertions.assertFalse False)
        pure ()


