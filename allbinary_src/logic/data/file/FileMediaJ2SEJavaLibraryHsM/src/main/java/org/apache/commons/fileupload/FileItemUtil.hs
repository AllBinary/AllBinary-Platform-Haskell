{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.apache.commons.fileupload
module FileItemUtil where

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
import qualified FileItemStream -- same package or java.lang
import qualified FileItem -- same package or java.lang
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified InputStream -- java.io.InputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data FileItemUtil = FileItemUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , dEFAULT_CHARSET :: IORef (String)
    }

instance JavaNull FileItemUtil where
    javaNull = javaNullRecord "FileItemUtil"

instance JavaEquals FileItemUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileItemUtil where
    (==) = jrecordEquals

instance JavaObjectClass FileItemUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileItemUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    dEFAULT_CHARSET <- newIORef ""
    let this = FileItemUtil header_ logUtil dEFAULT_CHARSET
    jregisterLevel header_ this
    jregisterMethod header_ "getString_overload1" (\() -> getString_overload1_impl this)
    jregisterMethod header_ "getString_overload2" (\() -> getString_overload2_impl this)
    jregisterMethod header_ "getBytes" (\() -> getBytes_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    pure this

initFields_ :: FileItemUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.dEFAULT_CHARSET ("ISO-8859-1")
    pure ()

new_ :: IO FileItemUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileItemUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FileItemUtil)
getInstance = do
        pure (FileItemUtil.instance_)


-- Java overloads of getString: calls the overload for the types of the arguments
getString :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getString this a1
    | jisInstanceOf a1 (javaNull :: JavaArray (Int8)) = getString_overload1 this (javaCast a1 :: JavaArray (Int8))
    | jisInstanceOf a1 (javaNull :: FileItemStream.FileItemStream) = getString_overload2 this (javaCast a1 :: FileItemStream.FileItemStream)
    | otherwise = getString_overload2 this (javaCast a1 :: FileItemStream.FileItemStream)

-- throws Exception
getString_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (String)
getString_overload1 object_ a1 = jmethod object_ "getString_overload1" (\() -> (getString_overload1_impl (javaCast object_ :: FileItemUtil))) () a1

getString_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (String)
getString_overload1_super object_ a1 = (getString_overload1_impl (javaCast object_ :: FileItemUtil)) a1

getString_overload1_impl :: FileItemUtil -> JavaArray (Int8) -> IO (String)
getString_overload1_impl this byteArray = do
        (jnewString byteArray (jget (this).dEFAULT_CHARSET))


-- throws Exception
getString_overload2 :: (JavaObjectClass this_) => this_ -> FileItemStream.FileItemStream -> IO (String)
getString_overload2 object_ a1 = jmethod object_ "getString_overload2" (\() -> (getString_overload2_impl (javaCast object_ :: FileItemUtil))) () a1

getString_overload2_super :: (JavaObjectClass this_) => this_ -> FileItemStream.FileItemStream -> IO (String)
getString_overload2_super object_ a1 = (getString_overload2_impl (javaCast object_ :: FileItemUtil)) a1

getString_overload2_impl :: FileItemUtil -> FileItemStream.FileItemStream -> IO (String)
getString_overload2_impl this fileItem = do
        (jnewString (jio (FileItemUtil.getBytes this fileItem)) (jget this.dEFAULT_CHARSET))


-- throws Exception
getBytes :: (JavaObjectClass this_) => this_ -> FileItemStream.FileItemStream -> IO (JavaArray (Int8))
getBytes object_ a1 = jmethod object_ "getBytes" (\() -> (getBytes_impl (javaCast object_ :: FileItemUtil))) () a1

getBytes_super :: (JavaObjectClass this_) => this_ -> FileItemStream.FileItemStream -> IO (JavaArray (Int8))
getBytes_super object_ a1 = (getBytes_impl (javaCast object_ :: FileItemUtil)) a1

getBytes_impl :: FileItemUtil -> FileItemStream.FileItemStream -> IO (JavaArray (Int8))
getBytes_impl this fileItem = do
        streamUtil <- (StreamUtil.getInstance)
        inputStream <- newIORef (javaNull)
        outputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close streamUtil (jget outputStream))
            Control.Monad.void (StreamUtil.close streamUtil (jget inputStream))
            ) $ do
            assignedValue <- (FileItemStream.openStream fileItem)
            jset inputStream (assignedValue)
            assignedValue <- (ByteArrayOutputStream.new_)
            jset outputStream (assignedValue)
            if (jio (FileItemStream.isFormField fileItem)) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileItemStream FieldName: " ++ javaToString (jio (FileItemStream.getFieldName fileItem))) this "write()")
            else do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Uploaded File FieldName: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (FileItemStream.getFieldName fileItem)))
                Control.Monad.void (StringMaker.append stringBuffer " name = ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (FileItemStream.getName fileItem)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "write()")
            jset outputStream ((javaCast (jio (StreamUtil.get streamUtil (jget inputStream) (jget outputStream) (jnewArray (16384) 0))) :: ByteArrayOutputStream.ByteArrayOutputStream))
            (ByteArrayOutputStream.toByteArray ((jget outputStream)))


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> AbFile.AbFile -> IO (())
write object_ a1 a2 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: FileItemUtil))) () a1 a2

write_super :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> AbFile.AbFile -> IO (())
write_super object_ a1 a2 = (write_impl (javaCast object_ :: FileItemUtil)) a1 a2

write_impl :: FileItemUtil -> FileItem.FileItem -> AbFile.AbFile -> IO (())
write_impl this fileItem file = do
        Control.Monad.void (FileItem.write fileItem (jio (AbFileNativeUtil.get file)))
        pure ()


