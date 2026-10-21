{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
-- package org.allbinary.data.tree.dom
module AbXslHelper where

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
import qualified XslHelper -- same package or java.lang
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified StreamResult -- javax.xml.transform.stream.StreamResult
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data AbXslHelper = AbXslHelper
    { header_ :: JavaHeader
    }

instance JavaNull AbXslHelper where
    javaNull = javaNullRecord "AbXslHelper"

instance JavaEquals AbXslHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbXslHelper where
    (==) = jrecordEquals

instance JavaObjectClass AbXslHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbXslHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = AbXslHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "translate_overload1" (\() -> translate_overload1_impl this)
    jregisterMethod header_ "translate_overload2" (\() -> translate_overload2_impl this)
    jregisterMethod header_ "translate_overload3" (\() -> translate_overload3_impl this)
    pure this

initFields_ :: AbXslHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AbXslHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbXslHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbXslHelper)
getInstance = do
        pure (AbXslHelper.instance_)


-- Java overloads of translate: calls the overload for the types of the arguments
translate :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (String)
translate this a1 a2
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) && jisInstanceOf a2 (javaNull :: AbFile.AbFile) = translate_overload1 this (javaCast a1 :: AbFile.AbFile) (javaCast a2 :: AbFile.AbFile)
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) && jisInstanceOf a2 (javaNull :: AbPath.AbPath) = translate_overload2 this (javaCast a1 :: AbPath.AbPath) (javaCast a2 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) && jisInstanceOf a2 (javaNull :: String) = translate_overload3 this (javaCast a1 :: String) (javaCast a2 :: String)
    | otherwise = translate_overload3 this (javaCast a1 :: String) (javaCast a2 :: String)

-- throws Exception
translate_overload1 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (String)
translate_overload1 object_ a1 a2 = jmethod object_ "translate_overload1" (\() -> (translate_overload1_impl (javaCast object_ :: AbXslHelper))) () a1 a2

translate_overload1_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (String)
translate_overload1_super object_ a1 a2 = (translate_overload1_impl (javaCast object_ :: AbXslHelper)) a1 a2

translate_overload1_impl :: AbXslHelper -> AbFile.AbFile -> AbFile.AbFile -> IO (String)
translate_overload1_impl this xslFile xmlFile = do
        (AbXslHelper.translate this (jio (AbFile.getAbsolutePath xslFile)) (jio (AbFile.getAbsolutePath xmlFile)))


-- throws Exception
translate_overload2 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> IO (String)
translate_overload2 object_ a1 a2 = jmethod object_ "translate_overload2" (\() -> (translate_overload2_impl (javaCast object_ :: AbXslHelper))) () a1 a2

translate_overload2_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> IO (String)
translate_overload2_super object_ a1 a2 = (translate_overload2_impl (javaCast object_ :: AbXslHelper)) a1 a2

translate_overload2_impl :: AbXslHelper -> AbPath.AbPath -> AbPath.AbPath -> IO (String)
translate_overload2_impl this xslPath xmlPath = do
        (AbXslHelper.translate this (jio (AbPath.getPath xslPath)) (jio (AbPath.getPath xmlPath)))


-- throws Exception
translate_overload3 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
translate_overload3 object_ a1 a2 = jmethod object_ "translate_overload3" (\() -> (translate_overload3_impl (javaCast object_ :: AbXslHelper))) () a1 a2

translate_overload3_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
translate_overload3_super object_ a1 a2 = (translate_overload3_impl (javaCast object_ :: AbXslHelper)) a1 a2

translate_overload3_impl :: AbXslHelper -> String -> String -> IO (String)
translate_overload3_impl this xsltFilePath xmlFilePath = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            outputStream <- (ByteArrayOutputStream.new_)
            (OutputStream.toString ((jio (XslHelper.translate ((jio (XslHelper.getInstance))) (jio (StreamSource.new_1 xsltFilePath)) (jio (StreamSource.new_1 xmlFilePath)) (jio (StreamResult.new_1 outputStream))))))


