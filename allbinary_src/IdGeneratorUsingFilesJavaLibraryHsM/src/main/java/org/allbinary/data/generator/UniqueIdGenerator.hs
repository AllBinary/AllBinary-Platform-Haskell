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
-- package org.allbinary.data.generator
module UniqueIdGenerator where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDataInputStream -- org.allbinary.logic.io.AbDataInputStream
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified IdGeneratorInterface

-- implements IdGeneratorInterface
data UniqueIdGenerator = UniqueIdGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , newFile :: IORef (AbFile.AbFile)
    , id :: IORef (Int64)
    }

instance JavaNull UniqueIdGenerator where
    javaNull = javaNullRecord "UniqueIdGenerator"

instance JavaEquals UniqueIdGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UniqueIdGenerator where
    (==) = jrecordEquals

instance JavaObjectClass UniqueIdGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

eXT = ".unq"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UniqueIdGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    newFile <- newIORef javaNull
    id <- newIORef 0
    let this = UniqueIdGenerator header_ logUtil newFile id
    jregisterLevel header_ this
    IdGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "initialize" (\() -> initialize_impl this)
    jregisterMethod header_ "setFile" (\() -> setFile_impl this)
    jregisterMethod header_ "getNext" (\() -> getNext_impl this)
    pure this

initFields_ :: UniqueIdGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.newFile (javaNull)
    jset this.id (0)
    pure ()

new_ :: IO UniqueIdGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UniqueIdGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


initialize :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initialize object_ a1 = jmethod object_ "initialize" (\() -> (initialize_impl (javaCast object_ :: UniqueIdGenerator))) () a1

initialize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initialize_super object_ a1 = (initialize_impl (javaCast object_ :: UniqueIdGenerator)) a1

initialize_impl :: UniqueIdGenerator -> Int -> IO (())
initialize_impl this value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "initialize" e)
            ) $ do
            Control.Monad.void (AbFile.createNewFile ((jget (this).newFile)))
            idData <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) (jget (this).newFile))
            Control.Monad.void (AbDataOutputStream.writeLong idData value)
        pure ()


-- throws Exception
setFile :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setFile object_ a1 a2 = jmethod object_ "setFile" (\() -> (setFile_impl (javaCast object_ :: UniqueIdGenerator))) () a1 a2

setFile_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setFile_super object_ a1 a2 = (setFile_impl (javaCast object_ :: UniqueIdGenerator)) a1 a2

setFile_impl :: UniqueIdGenerator -> String -> String -> IO (())
setFile_impl this filePathName name = do
        assignedValue <- (AbFile.createAbFile filePathName)
        jset (this).newFile (assignedValue)
        pure ()


-- throws IOException
getNext :: (JavaObjectClass this_) => this_ -> IO (String)
getNext object_ = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: UniqueIdGenerator))) ()

getNext_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNext_super object_ = (getNext_impl (javaCast object_ :: UniqueIdGenerator))

getNext_impl :: UniqueIdGenerator -> IO (String)
getNext_impl this = do
        idData <- newIORef (javaNull)
        idOutData <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget idData))
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget idOutData))
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getNext" e)
            pure ("Error")
            ) $ do
            idFile <- (AbFileInputStream.new_1 (jget (this).newFile))
            assignedValue <- (AbDataInputStream.new_1 idFile)
            jset idData (assignedValue)
            assignedValue <- (AbDataInputStream.readLong ((jget idData)))
            jset (this).id (assignedValue)
            idOutFile <- (AbFileOutputStream.createFromAbFile (jget (this).newFile))
            assignedValue <- (AbDataOutputStream.new_1 idOutFile)
            jset idOutData (assignedValue)
            Control.Monad.void (AbDataOutputStream.writeLong ((jget idOutData)) ((jget (this).id) + 1))
            let idLong = (Prelude.fromIntegral ((jget (this).id)) :: Int64)
            pure ((javaToString idLong))


