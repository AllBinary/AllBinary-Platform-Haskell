{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package tags
module TagStrings where

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

data TagStrings = TagStrings
    { header_ :: JavaHeader
    , dO_START_TAG :: IORef (String)
    }

instance JavaNull TagStrings where
    javaNull = javaNullRecord "TagStrings"

instance JavaEquals TagStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TagStrings where
    (==) = jrecordEquals

instance JavaObjectClass TagStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TagStrings
newRecord_ = do
    header_ <- newJavaHeader
    dO_START_TAG <- newIORef ""
    let this = TagStrings header_ dO_START_TAG
    jregisterLevel header_ this
    pure this

initFields_ :: TagStrings -> IO ()
initFields_ this = do
    jset this.dO_START_TAG ("doStartTag")
    pure ()

new_ :: IO TagStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TagStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TagStrings)
getInstance = do
        pure (TagStrings.instance_)


