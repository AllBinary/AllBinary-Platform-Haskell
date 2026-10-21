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
module CustomTagSupport (module CustomTagSupport, module TagSupport) where

import TagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, commonStrings, tagStrings)
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
import qualified TagStrings -- same package or java.lang
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CustomTagSupport = CustomTagSupport
    { header_ :: JavaHeader
    , base :: TagSupport.TagSupport
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tagStrings :: IORef (TagStrings.TagStrings)
    }

instance JavaNull CustomTagSupport where
    javaNull = javaNullRecord "CustomTagSupport"

instance JavaEquals CustomTagSupport where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTagSupport where
    (==) = jrecordEquals

instance JavaObjectClass CustomTagSupport where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTagSupport
newRecord_ = do
    base <- TagSupport.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    tagStrings <- newIORef javaNull
    let this = CustomTagSupport header_ base commonStrings tagStrings
    jregisterLevel header_ this
    pure this

initFields_ :: CustomTagSupport -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tagStrings =<< (TagStrings.getInstance)
    pure ()

new_ :: IO CustomTagSupport
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomTagSupport -> IO ()
init_ this = do
    TagSupport.init_ this.base
    initFields_ this


