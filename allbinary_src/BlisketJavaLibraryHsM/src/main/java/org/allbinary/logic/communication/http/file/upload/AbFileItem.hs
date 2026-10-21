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
module AbFileItem where

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
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified UnsupportedEncodingException -- java.io.UnsupportedEncodingException
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified FileItemHeaders -- org.apache.commons.fileupload.FileItemHeaders
import qualified FileItemUtil -- org.apache.commons.fileupload.FileItemUtil

-- implements FileItem
data AbFileItem = AbFileItem
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , name :: IORef (String)
    , fieldName :: IORef (String)
    , byteArray :: IORef (JavaArray (Int8))
    }

instance JavaNull AbFileItem where
    javaNull = javaNullRecord "AbFileItem"

instance JavaEquals AbFileItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileItem where
    (==) = jrecordEquals

instance JavaObjectClass AbFileItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbFileItem
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    name <- newIORef ""
    fieldName <- newIORef ""
    byteArray <- newIORef javaNull
    let this = AbFileItem header_ logUtil commonStrings name fieldName byteArray
    jregisterLevel header_ this
    FileItem.registerInterface_ header_
    jregisterMethod header_ "getInputStream" (\() -> getInputStream_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "isInMemory" (\() -> isInMemory_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "write_overload1" (\() -> write_overload1_impl this)
    jregisterMethod header_ "write_overload2" (\() -> write_overload2_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "getFieldName" (\() -> getFieldName_impl this)
    jregisterMethod header_ "setFieldName" (\() -> setFieldName_impl this)
    jregisterMethod header_ "isFormField" (\() -> isFormField_impl this)
    jregisterMethod header_ "setFormField" (\() -> setFormField_impl this)
    jregisterMethod header_ "getOutputStream" (\() -> getOutputStream_impl this)
    jregisterMethod header_ "getHeaders" (\() -> getHeaders_impl this)
    jregisterMethod header_ "setHeaders" (\() -> setHeaders_impl this)
    pure this

initFields_ :: AbFileItem -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.name (javaNull)
    jset this.fieldName (javaNull)
    jset this.byteArray (javaNull)
    pure ()

new_3 :: String -> String -> JavaArray (Int8) -> IO AbFileItem
new_3 name fieldName byteArray = do
    this <- newRecord_
    init_3 this name fieldName byteArray
    pure this

init_3 :: AbFileItem -> String -> String -> JavaArray (Int8) -> IO ()
init_3 this name fieldName byteArray = do
        initFields_ this
        jset (this).name (name)
        jset (this).fieldName (fieldName)
        jset (this).byteArray (byteArray)
        pure ()


-- throws IOException
getInputStream :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream object_ = jmethod object_ "getInputStream" (\() -> (getInputStream_impl (javaCast object_ :: AbFileItem))) ()

getInputStream_super :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream_super object_ = (getInputStream_impl (javaCast object_ :: AbFileItem))

getInputStream_impl :: AbFileItem -> IO (InputStream.InputStream)
getInputStream_impl this = do
        javaThrow ((JavaException "IOException" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: AbFileItem))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: AbFileItem))

getContentType_impl :: AbFileItem -> IO (String)
getContentType_impl this = do
        pure (javaNull)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AbFileItem))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AbFileItem))

getName_impl :: AbFileItem -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


isInMemory :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInMemory object_ = jmethod object_ "isInMemory" (\() -> (isInMemory_impl (javaCast object_ :: AbFileItem))) ()

isInMemory_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInMemory_super object_ = (isInMemory_impl (javaCast object_ :: AbFileItem))

isInMemory_impl :: AbFileItem -> IO (Bool)
isInMemory_impl this = do
        pure (True)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: AbFileItem))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize_super object_ = (getSize_impl (javaCast object_ :: AbFileItem))

getSize_impl :: AbFileItem -> IO (Int64)
getSize_impl this = do
        pure ((Prelude.fromIntegral (jlength (jget (this).byteArray))))


get :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int8))
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AbFileItem))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int8))
get_super object_ = (get_impl (javaCast object_ :: AbFileItem))

get_impl :: AbFileItem -> IO (JavaArray (Int8))
get_impl this = do
        pure ((jget (this).byteArray))


-- throws UnsupportedEncodingException
getString :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getString object_ a1 = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: AbFileItem))) () a1

getString_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getString_super object_ a1 = (getString_impl (javaCast object_ :: AbFileItem)) a1

getString_impl :: AbFileItem -> String -> IO (String)
getString_impl this encoding = do
        (jnewString (jget (this).byteArray) encoding)


-- Java overload of getString with a different parameter count: give it a different name
getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: AbFileItem))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: AbFileItem))

getString_impl :: AbFileItem -> IO (String)
getString_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getString" e)
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            ) $ do
            (FileItemUtil.getString ((jio (FileItemUtil.getInstance))) (jget (this).byteArray))


-- Java overloads of write: calls the overload for the types of the arguments
write :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
write this a1
    | jisInstanceOf a1 (javaNull :: File.File) = write_overload1 this (javaCast a1 :: File.File)
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = write_overload2 this (javaCast a1 :: AbFile.AbFile)
    | otherwise = write_overload2 this (javaCast a1 :: AbFile.AbFile)

-- throws Exception
write_overload1 :: (JavaObjectClass this_) => this_ -> File.File -> IO (())
write_overload1 object_ a1 = jmethod object_ "write_overload1" (\() -> (write_overload1_impl (javaCast object_ :: AbFileItem))) () a1

write_overload1_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (())
write_overload1_super object_ a1 = (write_overload1_impl (javaCast object_ :: AbFileItem)) a1

write_overload1_impl :: AbFileItem -> File.File -> IO (())
write_overload1_impl this file = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
write_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (())
write_overload2 object_ a1 = jmethod object_ "write_overload2" (\() -> (write_overload2_impl (javaCast object_ :: AbFileItem))) () a1

write_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (())
write_overload2_super object_ a1 = (write_overload2_impl (javaCast object_ :: AbFileItem)) a1

write_overload2_impl :: AbFileItem -> AbFile.AbFile -> IO (())
write_overload2_impl this file = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


delete :: (JavaObjectClass this_) => this_ -> IO (())
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: AbFileItem))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (())
delete_super object_ = (delete_impl (javaCast object_ :: AbFileItem))

delete_impl :: AbFileItem -> IO (())
delete_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED) "delete()")
        pure ()


getFieldName :: (JavaObjectClass this_) => this_ -> IO (String)
getFieldName object_ = jmethod object_ "getFieldName" (\() -> (getFieldName_impl (javaCast object_ :: AbFileItem))) ()

getFieldName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFieldName_super object_ = (getFieldName_impl (javaCast object_ :: AbFileItem))

getFieldName_impl :: AbFileItem -> IO (String)
getFieldName_impl this = do
        pure ((jget (this).fieldName))


setFieldName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFieldName object_ a1 = jmethod object_ "setFieldName" (\() -> (setFieldName_impl (javaCast object_ :: AbFileItem))) () a1

setFieldName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFieldName_super object_ a1 = (setFieldName_impl (javaCast object_ :: AbFileItem)) a1

setFieldName_impl :: AbFileItem -> String -> IO (())
setFieldName_impl this name = do
        jset (this).fieldName (name)
        pure ()


isFormField :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFormField object_ = jmethod object_ "isFormField" (\() -> (isFormField_impl (javaCast object_ :: AbFileItem))) ()

isFormField_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFormField_super object_ = (isFormField_impl (javaCast object_ :: AbFileItem))

isFormField_impl :: AbFileItem -> IO (Bool)
isFormField_impl this = do
    javaCatchReturn $ do
        if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).fieldName))) then do
            javaReturn (False)
        else do
            javaReturn (True)


setFormField :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFormField object_ a1 = jmethod object_ "setFormField" (\() -> (setFormField_impl (javaCast object_ :: AbFileItem))) () a1

setFormField_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFormField_super object_ a1 = (setFormField_impl (javaCast object_ :: AbFileItem)) a1

setFormField_impl :: AbFileItem -> Bool -> IO (())
setFormField_impl this state = do
        pure ()


-- throws IOException
getOutputStream :: (JavaObjectClass this_) => this_ -> IO (OutputStream.OutputStream)
getOutputStream object_ = jmethod object_ "getOutputStream" (\() -> (getOutputStream_impl (javaCast object_ :: AbFileItem))) ()

getOutputStream_super :: (JavaObjectClass this_) => this_ -> IO (OutputStream.OutputStream)
getOutputStream_super object_ = (getOutputStream_impl (javaCast object_ :: AbFileItem))

getOutputStream_impl :: AbFileItem -> IO (OutputStream.OutputStream)
getOutputStream_impl this = do
        javaThrow ((JavaException "IOException" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


getHeaders :: (JavaObjectClass this_) => this_ -> IO (FileItemHeaders.FileItemHeaders)
getHeaders object_ = jmethod object_ "getHeaders" (\() -> (getHeaders_impl (javaCast object_ :: AbFileItem))) ()

getHeaders_super :: (JavaObjectClass this_) => this_ -> IO (FileItemHeaders.FileItemHeaders)
getHeaders_super object_ = (getHeaders_impl (javaCast object_ :: AbFileItem))

getHeaders_impl :: AbFileItem -> IO (FileItemHeaders.FileItemHeaders)
getHeaders_impl this = do
        javaThrow ((JavaException "RuntimeException" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


setHeaders :: (JavaObjectClass this_) => this_ -> FileItemHeaders.FileItemHeaders -> IO (())
setHeaders object_ a1 = jmethod object_ "setHeaders" (\() -> (setHeaders_impl (javaCast object_ :: AbFileItem))) () a1

setHeaders_super :: (JavaObjectClass this_) => this_ -> FileItemHeaders.FileItemHeaders -> IO (())
setHeaders_super object_ a1 = (setHeaders_impl (javaCast object_ :: AbFileItem)) a1

setHeaders_impl :: AbFileItem -> FileItemHeaders.FileItemHeaders -> IO (())
setHeaders_impl this fih = do
        javaThrow ((JavaException "RuntimeException" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


