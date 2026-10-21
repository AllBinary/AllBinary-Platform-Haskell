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
module HttpFilePermissionsUtil where

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
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data HttpFilePermissionsUtil = HttpFilePermissionsUtil
    { header_ :: JavaHeader
    }

instance JavaNull HttpFilePermissionsUtil where
    javaNull = javaNullRecord "HttpFilePermissionsUtil"

instance JavaEquals HttpFilePermissionsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpFilePermissionsUtil where
    (==) = jrecordEquals

instance JavaObjectClass HttpFilePermissionsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HttpFilePermissionsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = HttpFilePermissionsUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    pure this

initFields_ :: HttpFilePermissionsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HttpFilePermissionsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HttpFilePermissionsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HttpFilePermissionsUtil)
getInstance = do
        pure (HttpFilePermissionsUtil.instance_)


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: HttpFilePermissionsUtil))) () a1

create_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
create_super object_ a1 = (create_impl (javaCast object_ :: HttpFilePermissionsUtil)) a1

create_impl :: HttpFilePermissionsUtil -> AbPath.AbPath -> IO (())
create_impl this path = do
        file <- (AbFile.createAbFileFromAbPath path)
        when (Prelude.not (jio (AbFile.isFile file))) $ do
            Control.Monad.void (AbFile.createNewFile file)
        pure ()


