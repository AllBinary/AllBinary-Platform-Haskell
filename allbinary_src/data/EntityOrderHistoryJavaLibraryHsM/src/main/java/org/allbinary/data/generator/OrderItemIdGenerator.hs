{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.data.generator
module OrderItemIdGenerator (module OrderItemIdGenerator, module UniqueIdGenerator) where

import UniqueIdGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, iDFILE)
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
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified UniqueIdGenerator

data OrderItemIdGenerator = OrderItemIdGenerator
    { header_ :: JavaHeader
    , base :: UniqueIdGenerator.UniqueIdGenerator
    , iDFILE :: IORef (String)
    }

instance JavaNull OrderItemIdGenerator where
    javaNull = javaNullRecord "OrderItemIdGenerator"

instance JavaEquals OrderItemIdGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderItemIdGenerator where
    (==) = jrecordEquals

instance JavaObjectClass OrderItemIdGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderItemIdGenerator
newRecord_ = do
    base <- UniqueIdGenerator.newRecord_
    let header_ = base.header_
    iDFILE <- newIORef ""
    let this = OrderItemIdGenerator header_ base iDFILE
    jregisterLevel header_ this
    pure this

initFields_ :: OrderItemIdGenerator -> IO ()
initFields_ this = do
    jset this.iDFILE ("orderitemId.unq")
    pure ()

new_ :: IO OrderItemIdGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderItemIdGenerator -> IO ()
init_ this = do
        UniqueIdGenerator.init_ this.base
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iDFILE))
        Control.Monad.void (StringMaker.append stringBuffer (UniqueIdGenerator.eXT))
        Control.Monad.void (UniqueIdGenerator.setFile_super this.base (jio (StringMaker.toString stringBuffer)) (jget (this).iDFILE))
        pure ()


