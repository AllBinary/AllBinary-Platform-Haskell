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
module HttpFileUploadUtil where

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
import qualified Any -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ClassUtil -- org.allbinary.logic.java.anyType.clazz.ClassUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified FileItemStream -- org.apache.commons.fileupload.FileItemStream

data HttpFileUploadUtil = HttpFileUploadUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull HttpFileUploadUtil where
    javaNull = javaNullRecord "HttpFileUploadUtil"

instance JavaEquals HttpFileUploadUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpFileUploadUtil where
    (==) = jrecordEquals

instance JavaObjectClass HttpFileUploadUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HttpFileUploadUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = HttpFileUploadUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: HttpFileUploadUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (HttpFileUploadUtil)
getInstance = do
        pure (HttpFileUploadUtil.instance_)

new_ :: IO HttpFileUploadUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HttpFileUploadUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: HttpFileUploadUtil))) () (jtoObject a1)

isValid_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: HttpFileUploadUtil)) (jtoObject a1)

isValid_impl :: HttpFileUploadUtil -> JavaObject -> IO (Bool)
isValid_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        when ((anyType /= javaNull) && (Prelude.not ((javaInstanceOf anyType "String")))) $ do
            if (javaInstanceOf anyType "FileItem") then do
                javaReturn (True)
            else do
                javaThrow ((JavaException "Exception" ("Object Not Instance Of FileItem but is: " ++ javaToString (jio (ClassUtil.viewAll anyType (jget ((jio (CommonSeps.getInstance))).nEW_LINE))))))
        pure (False)


-- Java overloads of log: calls the overload for the types of the arguments
log :: (JavaObjectClass o1) => o1 -> IO (())
log a1
    | jisInstanceOf a1 (javaNull :: FileItemStream.FileItemStream) = log_overload1 (javaCast a1 :: FileItemStream.FileItemStream)
    | jisInstanceOf a1 (javaNull :: FileItem.FileItem) = log_overload2 (javaCast a1 :: FileItem.FileItem)
    | otherwise = log_overload2 (javaCast a1 :: FileItem.FileItem)

-- throws Exception
log_overload1 :: FileItemStream.FileItemStream -> IO (())
log_overload1 fileItem = do
        logUtil <- (LogUtil.getInstance)
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer "FileItem Log:")
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Content Type:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItemStream.getContentType fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Field Name:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItemStream.getFieldName fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Name:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItemStream.getName fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Size:")
        Control.Monad.void (StringMaker.append stringBuffer " Not Calculated Yet")
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTP))) $ do
            Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString stringBuffer)) (jio (HttpFileUploadUtil.getInstance)) "log()")
        pure ()


log_overload2 :: FileItem.FileItem -> IO (())
log_overload2 fileItem = do
        logUtil <- (LogUtil.getInstance)
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer "FileItem Log:")
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Content Type:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItem.getContentType fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Field Name:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItem.getFieldName fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Name:")
        Control.Monad.void (StringMaker.append stringBuffer (jio (FileItem.getName fileItem)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Size:")
        Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromInteger (jnumericInteger (jio (FileItem.getSize fileItem)))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString stringBuffer)) (jio (HttpFileUploadUtil.getInstance)) "log()")
        pure ()


