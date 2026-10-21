{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.bouncycastle.jce.provider
module BouncyCastleProvider (module BouncyCastleProvider, module Provider) where

import Provider hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setParameter, setParameter_super, setParameter_impl, info, pROVIDER_NAME)
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
import qualified Provider -- java.security.Provider

data BouncyCastleProvider = BouncyCastleProvider
    { header_ :: JavaHeader
    , base :: Provider.Provider
    }

instance JavaNull BouncyCastleProvider where
    javaNull = javaNullRecord "BouncyCastleProvider"

instance JavaEquals BouncyCastleProvider where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BouncyCastleProvider where
    (==) = jrecordEquals

instance JavaObjectClass BouncyCastleProvider where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE info #-}
info = unsafePerformIO (newIORef ("BouncyCastle Security Provider v1.41"))

{-# NOINLINE pROVIDER_NAME #-}
pROVIDER_NAME = unsafePerformIO (newIORef ("BC"))

newRecord_ :: IO BouncyCastleProvider
newRecord_ = do
    base <- Provider.newRecord_
    let header_ = base.header_
    let this = BouncyCastleProvider header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "setParameter" (\() -> setParameter_impl this)
    pure this

initFields_ :: BouncyCastleProvider -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BouncyCastleProvider
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BouncyCastleProvider -> IO ()
init_ this = do
        Provider.init_3 this.base (jget BouncyCastleProvider.pROVIDER_NAME) (1.41) (jget BouncyCastleProvider.info)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setParameter :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> IO (())
setParameter object_ a1 a2 = jmethod object_ "setParameter" (\() -> (setParameter_impl (javaCast object_ :: BouncyCastleProvider))) () a1 (jtoObject a2)

setParameter_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> IO (())
setParameter_super object_ a1 a2 = (setParameter_impl (javaCast object_ :: BouncyCastleProvider)) a1 (jtoObject a2)

setParameter_impl :: BouncyCastleProvider -> String -> JavaObject -> IO (())
setParameter_impl this parameterName parameterObject_ = do
        let parameter = jtoObject parameterObject_
        pure ()


