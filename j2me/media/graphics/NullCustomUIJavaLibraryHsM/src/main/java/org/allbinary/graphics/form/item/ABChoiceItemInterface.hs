{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABChoiceItemInterface where

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

-- Java interface: the classes that implement it have these functions
data ABChoiceItemInterface = ABChoiceItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull ABChoiceItemInterface where
    javaNull = javaNullRecord "ABChoiceItemInterface"

instance JavaEquals ABChoiceItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABChoiceItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass ABChoiceItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ABChoiceItemInterface
fromHeader_ header = ABChoiceItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ABChoiceItemInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


