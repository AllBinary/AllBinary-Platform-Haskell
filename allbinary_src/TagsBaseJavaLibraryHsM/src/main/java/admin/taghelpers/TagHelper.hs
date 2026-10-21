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
-- package admin.taghelpers
module TagHelper where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TagHelperInterface

-- implements TagHelperInterface
data TagHelper = TagHelper
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TagHelper where
    javaNull = javaNullRecord "TagHelper"

instance JavaEquals TagHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TagHelper where
    (==) = jrecordEquals

instance JavaObjectClass TagHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TagHelper
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = TagHelper header_ commonStrings
    jregisterLevel header_ this
    TagHelperInterface.registerInterface_ header_
    pure this

initFields_ :: TagHelper -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO TagHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TagHelper -> IO ()
init_ this = do
    initFields_ this


