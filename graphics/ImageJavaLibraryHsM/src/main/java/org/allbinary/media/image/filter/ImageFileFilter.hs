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
-- package org.allbinary.media.image.filter
module ImageFileFilter (module ImageFileFilter, module FileFilter) where

import FileFilter hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, accept, accept_super, accept_impl, getDescription, getDescription_super, getDescription_impl)
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
import qualified File -- java.io.File
import qualified FileFilter -- javax.swing.filechooser.FileFilter

data ImageFileFilter = ImageFileFilter
    { header_ :: JavaHeader
    , base :: FileFilter.FileFilter
    }

instance JavaNull ImageFileFilter where
    javaNull = javaNullRecord "ImageFileFilter"

instance JavaEquals ImageFileFilter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageFileFilter where
    (==) = jrecordEquals

instance JavaObjectClass ImageFileFilter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageFileFilter
newRecord_ = do
    base <- FileFilter.newRecord_
    let header_ = base.header_
    let this = ImageFileFilter header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "accept" (\() -> accept_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    pure this

initFields_ :: ImageFileFilter -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageFileFilter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageFileFilter -> IO ()
init_ this = do
    FileFilter.init_ this.base
    initFields_ this


accept :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept object_ a1 = jmethod object_ "accept" (\() -> (accept_impl (javaCast object_ :: ImageFileFilter))) () a1

accept_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept_super object_ a1 = (accept_impl (javaCast object_ :: ImageFileFilter)) a1

accept_impl :: ImageFileFilter -> File.File -> IO (Bool)
accept_impl this f = do
    javaCatchReturn $ do
        when (jio (File.isDirectory f)) $ do
            javaReturn (True)
        s <- (File.getName f)
        let i = (jstringLastIndexOf s '.')
        when ((i > 0) && (i < ((Prelude.length s) - 1))) $ do
            let ext = (Prelude.map Data.Char.toLower (Prelude.drop (i + 1) s))
            when ((ext == "jpg") || (ext == "jpeg")) $ do
                javaReturn (True)
        pure (False)


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: ImageFileFilter))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: ImageFileFilter))

getDescription_impl :: ImageFileFilter -> IO (String)
getDescription_impl this = do
        pure ("Accepts .jpg and .jpeg files")


