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
-- package org.allbinary.logic.io.file
module FileWrapperUtil where

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
import qualified AbFile -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified File -- java.io.File
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil

data FileWrapperUtil = FileWrapperUtil
    { header_ :: JavaHeader
    }

instance JavaNull FileWrapperUtil where
    javaNull = javaNullRecord "FileWrapperUtil"

instance JavaEquals FileWrapperUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileWrapperUtil where
    (==) = jrecordEquals

instance JavaObjectClass FileWrapperUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileWrapperUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = FileWrapperUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: FileWrapperUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FileWrapperUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileWrapperUtil -> IO ()
init_ this = do
    initFields_ this


wrapFiles :: JavaArray (Any.Any) -> IO (JavaArray (AbFile.AbFile))
wrapFiles files = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putSE "Exception Wrapping Files" "FileWrapperUtil" "wrapFiles" e)
            pure ((jnewArray (0) javaNull))
            ) $ do
            let abFileArray = (jnewArray ((jlength files)) javaNull)
            forM_ [((jlength files) - 1), ((jlength files) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (AbFile.new_1 (javaCast (jindex files (index)) :: File.File))
                jsetIndex abFileArray (index) (assignedValue)
            pure (abFileArray)


wrapFile :: File.File -> IO (AbFile.AbFile)
wrapFile file = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putSE "Exception Wrapping File" "FileWrapperUtil" "wrapFile" e)
            pure (AbFile.nULL_FILE)
            ) $ do
            (AbFile.new_1 file)


