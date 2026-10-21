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
-- package org.allbinary.logic.communication.http.file.upload
module AbFileUpload (module AbFileUpload, module FileUpload) where

import FileUpload hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getItemIterator, getItemIterator_super, getItemIterator_impl)
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
import qualified IOException -- java.io.IOException
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified FileItemFactory -- org.apache.commons.fileupload.FileItemFactory
import qualified FileItemIterator -- org.apache.commons.fileupload.FileItemIterator
import qualified FileUpload -- org.apache.commons.fileupload.FileUpload
import qualified FileUploadException -- org.apache.commons.fileupload.FileUploadException
import qualified ServletRequestContext -- org.apache.commons.fileupload.servlet.ServletRequestContext

data AbFileUpload = AbFileUpload
    { header_ :: JavaHeader
    , base :: FileUpload.FileUpload
    }

instance JavaNull AbFileUpload where
    javaNull = javaNullRecord "AbFileUpload"

instance JavaEquals AbFileUpload where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileUpload where
    (==) = jrecordEquals

instance JavaObjectClass AbFileUpload where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbFileUpload
newRecord_ = do
    base <- FileUpload.newRecord_
    let header_ = base.header_
    let this = AbFileUpload header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getItemIterator" (\() -> getItemIterator_impl this)
    pure this

initFields_ :: AbFileUpload -> IO ()
initFields_ this = do
    pure ()

new_1 :: FileItemFactory.FileItemFactory -> IO AbFileUpload
new_1 fileItemFactory = do
    this <- newRecord_
    init_1 this fileItemFactory
    pure this

init_1 :: AbFileUpload -> FileItemFactory.FileItemFactory -> IO ()
init_1 this fileItemFactory = do
        FileUpload.init_1 this.base (fileItemFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws FileUploadException, IOException
getItemIterator :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (FileItemIterator.FileItemIterator)
getItemIterator object_ a1 = jmethod object_ "getItemIterator" (\() -> (getItemIterator_impl (javaCast object_ :: AbFileUpload))) () a1

getItemIterator_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (FileItemIterator.FileItemIterator)
getItemIterator_super object_ a1 = (getItemIterator_impl (javaCast object_ :: AbFileUpload)) a1

getItemIterator_impl :: AbFileUpload -> HttpServletRequest.HttpServletRequest -> IO (FileItemIterator.FileItemIterator)
getItemIterator_impl this request = do
        (FileUpload.getItemIterator_super this.base (jio (ServletRequestContext.new_1 request)))


