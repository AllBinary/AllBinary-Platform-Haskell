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
-- package tags.generic
module GenericViewTag (module GenericViewTag, module TransformTag) where

import TransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setOutput, setOutput_super, setOutput_impl, setFile, setFile_super, setFile_impl, logUtil, output, file)
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
import qualified CommonStrings -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified TransformTag -- tags.TransformTag

data GenericViewTag = GenericViewTag
    { header_ :: JavaHeader
    , base :: TransformTag.TransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , output :: IORef (String)
    , file :: IORef (String)
    }

instance JavaNull GenericViewTag where
    javaNull = javaNullRecord "GenericViewTag"

instance JavaEquals GenericViewTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericViewTag where
    (==) = jrecordEquals

instance JavaObjectClass GenericViewTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericViewTag
newRecord_ = do
    base <- TransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    output <- newIORef ""
    file <- newIORef ""
    let this = GenericViewTag header_ base logUtil output file
    jregisterLevel header_ this
    jregisterMethod header_ "setOutput" (\() -> setOutput_impl this)
    jregisterMethod header_ "setFile" (\() -> setFile_impl this)
    pure this

initFields_ :: GenericViewTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.output ("")
    jset this.file ("")
    pure ()

new_ :: IO GenericViewTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericViewTag -> IO ()
init_ this = do
        TransformTag.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


setOutput :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutput object_ a1 = jmethod object_ "setOutput" (\() -> (setOutput_impl (javaCast object_ :: GenericViewTag))) () a1

setOutput_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutput_super object_ a1 = (setOutput_impl (javaCast object_ :: GenericViewTag)) a1

setOutput_impl :: GenericViewTag -> String -> IO (())
setOutput_impl this value = do
        jset (this).output (value)
        Control.Monad.void (HashMap.put ((jio (TransformTag.getPropertiesHashMap this))) (jget ((jio (InputOutputTypeData.getInstance))).nAME) (jget (this).output))
        pure ()


setFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFile object_ a1 = jmethod object_ "setFile" (\() -> (setFile_impl (javaCast object_ :: GenericViewTag))) () a1

setFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFile_super object_ a1 = (setFile_impl (javaCast object_ :: GenericViewTag)) a1

setFile_impl :: GenericViewTag -> String -> IO (())
setFile_impl this value = do
        jset (this).file (value)
        Control.Monad.void (HashMap.put ((jio (TransformTag.getPropertiesHashMap this))) (jget ((jio (InputOutputTypeData.getInstance))).fILE) (jget (this).file))
        pure ()


