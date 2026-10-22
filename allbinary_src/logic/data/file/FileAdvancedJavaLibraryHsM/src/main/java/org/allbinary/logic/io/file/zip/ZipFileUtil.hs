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
-- package org.allbinary.logic.io.file.zip
module ZipFileUtil where

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
import qualified ZipEntry -- java.util.zip.ZipEntry
import qualified ZipInputStream -- java.util.zip.ZipInputStream
import qualified ZipOutputStream -- java.util.zip.ZipOutputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data ZipFileUtil = ZipFileUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull ZipFileUtil where
    javaNull = javaNullRecord "ZipFileUtil"

instance JavaEquals ZipFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ZipFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass ZipFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ZipFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = ZipFileUtil header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "unzip" (\() -> unzip_impl this)
    pure this

initFields_ :: ZipFileUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO ZipFileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ZipFileUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ZipFileUtil)
getInstance = do
        pure (ZipFileUtil.instance_)


create :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (())
create object_ a1 a2 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ZipFileUtil))) () a1 a2

create_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (())
create_super object_ a1 a2 = (create_impl (javaCast object_ :: ZipFileUtil)) a1 a2

create_impl :: ZipFileUtil -> String -> BasicArrayList.BasicArrayList -> IO (())
create_impl this outFilename fileBasicArrayList = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "create" e)
            ) $ do
            zipFile <- (AbFile.createAbFile outFilename)
            when (jio (AbFile.exists zipFile)) $ do
                Control.Monad.void (AbFile.delete zipFile)
            Control.Monad.void (AbFile.createNewFile zipFile)
            outputStream <- (ZipOutputStream.new_1 (jio (AbFileOutputStream.createFromAbFile zipFile)))
            streamUtil <- (StreamUtil.getInstance)
            stringBuffer <- (StringMaker.new_)
            let byteArray = (jnewArray (16384) 0)
            fileInputStream <- newIORef (javaNull)
            size <- (BasicArrayList.size fileBasicArrayList)
            current <- newIORef (0)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                let file = (javaCast (jio (BasicArrayList.get fileBasicArrayList i)) :: AbFile.AbFile)
                if (jio (AbFile.isDirectory file)) then do
                    pure ()
                else when (jio (AbFile.isFile file)) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget current))
                    Control.Monad.void (StringMaker.append stringBuffer " Creating Zip File Entry: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "create()")
                    handle (\(e :: JavaException) -> do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Skipping File (Probably Local): " ++ javaToString (jio (AbFile.getPath file))) this "create()")
                        ) $ do
                        assignedValue <- (AbFileInputStream.new_1 file)
                        jset fileInputStream (assignedValue)
                        Control.Monad.void (ZipOutputStream.putNextEntry outputStream (jio (ZipEntry.new_1 (jio (AbFile.getPath file)))))
                        Control.Monad.void (StreamUtil.get streamUtil (javaCast (jget fileInputStream)) (javaCast outputStream) byteArray)
                        Control.Monad.void (ZipOutputStream.closeEntry outputStream)
                        Control.Monad.void (StreamUtil.close streamUtil (javaCast (jget fileInputStream)))
                jset current ((jget current) + 1)
            Control.Monad.void (StreamUtil.close streamUtil (javaCast outputStream))
        pure ()


-- throws Exception
unzip :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> String -> IO (())
unzip object_ a1 a2 a3 = jmethod object_ "unzip" (\() -> (unzip_impl (javaCast object_ :: ZipFileUtil))) () a1 a2 a3

unzip_super :: (JavaObjectClass this_) => this_ -> String -> AbFile.AbFile -> String -> IO (())
unzip_super object_ a1 a2 a3 = (unzip_impl (javaCast object_ :: ZipFileUtil)) a1 a2 a3

unzip_impl :: ZipFileUtil -> String -> AbFile.AbFile -> String -> IO (())
unzip_impl this path zipFile fileName = do
        let buffer = (jnewArray (16384) 0)
        inputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget inputStream)))
            ) $ do
            assignedValue <- (ZipInputStream.new_1 (jio (AbFileInputStream.new_1 zipFile)))
            jset inputStream (assignedValue)
            zipEntry <- newIORef (javaNull)
            stringBuffer <- (StringMaker.new_)
            fileUtil <- (FileUtil.getInstance)
            fix $ \loop -> when (((jassign zipEntry ((jio (ZipInputStream.getNextEntry ((jget inputStream))))))) /= javaNull) $ javaIteration (loop) $ do
                entryName <- (ZipEntry.getName ((jget zipEntry)))
                if (jio (ZipEntry.isDirectory ((jget zipEntry)))) then do
                    pure ()
                else do
                    entryFile <- (AbFile.createAbFile (path ++ entryName))
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "ZipEntry Name: ")
                    Control.Monad.void (StringMaker.append stringBuffer entryName)
                    Control.Monad.void (StringMaker.append stringBuffer " isFile: ")
                    Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (AbFile.isFile entryFile)))
                    Control.Monad.void (StringMaker.append stringBuffer " isDirectory: ")
                    Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (AbFile.isDirectory entryFile)))
                    Control.Monad.void (StringMaker.append stringBuffer " getParent: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getParent entryFile)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "unzip")
                    dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) entryFile)
                    Control.Monad.void (FileUtil.write_3 fileUtil (javaCast (jget inputStream)) dataOutputStream buffer)
                Control.Monad.void (ZipInputStream.closeEntry ((jget inputStream)))
        pure ()


