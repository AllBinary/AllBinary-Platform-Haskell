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
-- package org.allbinary.logic.io
module CloudStreamUtil where

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
import qualified AbFileInputStream -- same package or java.lang
import qualified AbFileLocalInputStream -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile

data CloudStreamUtil = CloudStreamUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CloudStreamUtil where
    javaNull = javaNullRecord "CloudStreamUtil"

instance JavaEquals CloudStreamUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CloudStreamUtil where
    (==) = jrecordEquals

instance JavaObjectClass CloudStreamUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CloudStreamUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CloudStreamUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "getFileAnyWhere" (\() -> getFileAnyWhere_impl this)
    jregisterMethod header_ "getFileLocal" (\() -> getFileLocal_impl this)
    pure this

initFields_ :: CloudStreamUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO CloudStreamUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CloudStreamUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CloudStreamUtil)
getInstance = do
        pure (CloudStreamUtil.instance_)


-- throws Exception
getFile :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFile object_ a1 = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: CloudStreamUtil))) () a1

getFile_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFile_super object_ a1 = (getFile_impl (javaCast object_ :: CloudStreamUtil)) a1

getFile_impl :: CloudStreamUtil -> AbFile.AbFile -> IO (InputStream.InputStream)
getFile_impl this file = do
        inputStream <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (AbFileInputStream.new_1 file))
        available <- (InputStream.available inputStream)
        when (available > 0) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Cloud File Bytes: " ++ javaToString available) this "processRequest()")
        pure (inputStream)


-- throws Exception
getFileAnyWhere :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileAnyWhere object_ a1 = jmethod object_ "getFileAnyWhere" (\() -> (getFileAnyWhere_impl (javaCast object_ :: CloudStreamUtil))) () a1

getFileAnyWhere_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileAnyWhere_super object_ a1 = (getFileAnyWhere_impl (javaCast object_ :: CloudStreamUtil)) a1

getFileAnyWhere_impl :: CloudStreamUtil -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileAnyWhere_impl this file = do
        inputStream <- newIORef =<< (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (AbFileLocalInputStream.new_1 file))
        available <- newIORef =<< (InputStream.available ((jget inputStream)))
        if ((jget available) > 0) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Local File Bytes: " ++ javaToString (jget available)) this "processRequest()")
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (AbFileInputStream.new_1 file))
            jset inputStream (assignedValue)
            assignedValue <- (InputStream.available ((jget inputStream)))
            jset available (assignedValue)
            when ((jget available) > 0) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Cloud File Bytes: " ++ javaToString (jget available)) this "processRequest()")
        pure ((jget inputStream))


-- throws Exception
getFileLocal :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileLocal object_ a1 = jmethod object_ "getFileLocal" (\() -> (getFileLocal_impl (javaCast object_ :: CloudStreamUtil))) () a1

getFileLocal_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileLocal_super object_ a1 = (getFileLocal_impl (javaCast object_ :: CloudStreamUtil)) a1

getFileLocal_impl :: CloudStreamUtil -> AbFile.AbFile -> IO (InputStream.InputStream)
getFileLocal_impl this file = do
        inputStream <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (AbFileLocalInputStream.new_1 file))
        available <- (InputStream.available inputStream)
        when (available > 0) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Local File Bytes: " ++ javaToString available) this "processRequest()")
        pure (inputStream)


