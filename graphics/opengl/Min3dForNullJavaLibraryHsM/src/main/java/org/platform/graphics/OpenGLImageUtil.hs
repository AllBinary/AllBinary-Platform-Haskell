{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.platform.graphics
module OpenGLImageUtil (module OpenGLImageUtil, module OpenGLImageUtilBase) where

import OpenGLImageUtilBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified OpenGLImageUtilBase -- org.allbinary.image.opengles.OpenGLImageUtilBase

data OpenGLImageUtil = OpenGLImageUtil
    { header_ :: JavaHeader
    , base :: OpenGLImageUtilBase.OpenGLImageUtilBase
    }

instance JavaNull OpenGLImageUtil where
    javaNull = javaNullRecord "OpenGLImageUtil"

instance JavaEquals OpenGLImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO OpenGLImageUtil
newRecord_ = do
    base <- OpenGLImageUtilBase.newRecord_
    let header_ = base.header_
    let this = OpenGLImageUtil header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageUtil -> IO ()
init_ this = do
    OpenGLImageUtilBase.init_ this.base
    initFields_ this


getInstance :: IO (OpenGLImageUtil)
getInstance = do
        pure (OpenGLImageUtil.instance_)


