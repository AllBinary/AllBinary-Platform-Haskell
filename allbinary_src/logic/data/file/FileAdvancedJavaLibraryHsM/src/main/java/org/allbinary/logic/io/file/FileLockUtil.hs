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
module FileLockUtil where

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
import qualified FileChannel -- java.nio.channels.FileChannel
import qualified FileLock -- java.nio.channels.FileLock
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil

data FileLockUtil = FileLockUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull FileLockUtil where
    javaNull = javaNullRecord "FileLockUtil"

instance JavaEquals FileLockUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileLockUtil where
    (==) = jrecordEquals

instance JavaObjectClass FileLockUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileLockUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = FileLockUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getAll" (\() -> getAll_impl this)
    jregisterMethod header_ "getAllPossible" (\() -> getAllPossible_impl this)
    jregisterMethod header_ "getAllOrNone" (\() -> getAllOrNone_impl this)
    jregisterMethod header_ "getLock_overload1" (\() -> getLock_overload1_impl this)
    jregisterMethod header_ "getLock_overload2" (\() -> getLock_overload2_impl this)
    jregisterMethod header_ "getLock_overload3" (\() -> getLock_overload3_impl this)
    pure this

initFields_ :: FileLockUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (FileLockUtil)
getInstance = do
        pure (FileLockUtil.instance_)

new_ :: IO FileLockUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileLockUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getAll :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Bool -> IO (BasicArrayList.BasicArrayList)
getAll object_ a1 a2 = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: FileLockUtil))) () a1 a2

getAll_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Bool -> IO (BasicArrayList.BasicArrayList)
getAll_super object_ a1 a2 = (getAll_impl (javaCast object_ :: FileLockUtil)) a1 a2

getAll_impl :: FileLockUtil -> BasicArrayList.BasicArrayList -> Bool -> IO (BasicArrayList.BasicArrayList)
getAll_impl this vector isReturnOnFailure = do
    javaCatchReturn $ do
        fileLockVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let file = (javaCast (jio (BasicArrayList.get vector index)) :: AbFile.AbFile)
            fileLock <- (FileLockUtil.getLock this file)
            if (fileLock /= javaNull) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("File Lock Obtained: " ++ javaToString (jio (AbFile.getAbsolutePath file))) this "getAll")
                Control.Monad.void (BasicArrayList.add fileLockVector fileLock)
            else when isReturnOnFailure $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Total Locks Obtained: " ++ javaToString (jio (BasicArrayList.size fileLockVector))) this "getAll")
                javaReturn (fileLockVector)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Total Locks Obtained: " ++ javaToString (jio (BasicArrayList.size fileLockVector))) this "getAll")
        pure (fileLockVector)


-- throws Exception
getAllPossible :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllPossible object_ a1 = jmethod object_ "getAllPossible" (\() -> (getAllPossible_impl (javaCast object_ :: FileLockUtil))) () a1

getAllPossible_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllPossible_super object_ a1 = (getAllPossible_impl (javaCast object_ :: FileLockUtil)) a1

getAllPossible_impl :: FileLockUtil -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllPossible_impl this vector = do
        (FileLockUtil.getAll this vector False)


-- throws Exception
getAllOrNone :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllOrNone object_ a1 = jmethod object_ "getAllOrNone" (\() -> (getAllOrNone_impl (javaCast object_ :: FileLockUtil))) () a1

getAllOrNone_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllOrNone_super object_ a1 = (getAllOrNone_impl (javaCast object_ :: FileLockUtil)) a1

getAllOrNone_impl :: FileLockUtil -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllOrNone_impl this vector = do
    javaCatchReturn $ do
        fileLockVector <- (FileLockUtil.getAll this vector True)
        if ((jio (BasicArrayList.size vector)) /= (jio (BasicArrayList.size fileLockVector))) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        else do
            javaReturn (fileLockVector)


-- Java overloads of getLock: calls the overload for the types of the arguments
getLock :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (FileLock.FileLock)
getLock this a1
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = getLock_overload1 this (javaCast a1 :: AbFile.AbFile)
    | jisInstanceOf a1 (javaNull :: AbFileOutputStream.AbFileOutputStream) = getLock_overload2 this (javaCast a1 :: AbFileOutputStream.AbFileOutputStream)
    | jisInstanceOf a1 (javaNull :: FileChannel.FileChannel) = getLock_overload3 this (javaCast a1 :: FileChannel.FileChannel)
    | otherwise = getLock_overload3 this (javaCast a1 :: FileChannel.FileChannel)

-- throws Exception
getLock_overload1 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (FileLock.FileLock)
getLock_overload1 object_ a1 = jmethod object_ "getLock_overload1" (\() -> (getLock_overload1_impl (javaCast object_ :: FileLockUtil))) () a1

getLock_overload1_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (FileLock.FileLock)
getLock_overload1_super object_ a1 = (getLock_overload1_impl (javaCast object_ :: FileLockUtil)) a1

getLock_overload1_impl :: FileLockUtil -> AbFile.AbFile -> IO (FileLock.FileLock)
getLock_overload1_impl this file = do
        flip finally (do
            pure ()
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception returns null" this "getLock" e)
            pure (javaNull)
            ) $ do
            (FileLockUtil.getLock this (jio (AbFileOutputStream.createFromAbFileAppend file True)))


-- throws Exception
getLock_overload2 :: (JavaObjectClass this_) => this_ -> AbFileOutputStream.AbFileOutputStream -> IO (FileLock.FileLock)
getLock_overload2 object_ a1 = jmethod object_ "getLock_overload2" (\() -> (getLock_overload2_impl (javaCast object_ :: FileLockUtil))) () a1

getLock_overload2_super :: (JavaObjectClass this_) => this_ -> AbFileOutputStream.AbFileOutputStream -> IO (FileLock.FileLock)
getLock_overload2_super object_ a1 = (getLock_overload2_impl (javaCast object_ :: FileLockUtil)) a1

getLock_overload2_impl :: FileLockUtil -> AbFileOutputStream.AbFileOutputStream -> IO (FileLock.FileLock)
getLock_overload2_impl this fileOutputStream = do
        flip finally (do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Finally - Closing FileOutputStream" this "getLock")
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast fileOutputStream))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception returns null" this "getLock" e)
            pure (javaNull)
            ) $ do
            fileLock <- (FileLockUtil.getLock this (jio (AbFileOutputStream.getChannel fileOutputStream)))
            pure (fileLock)


-- throws Exception
getLock_overload3 :: (JavaObjectClass this_) => this_ -> FileChannel.FileChannel -> IO (FileLock.FileLock)
getLock_overload3 object_ a1 = jmethod object_ "getLock_overload3" (\() -> (getLock_overload3_impl (javaCast object_ :: FileLockUtil))) () a1

getLock_overload3_super :: (JavaObjectClass this_) => this_ -> FileChannel.FileChannel -> IO (FileLock.FileLock)
getLock_overload3_super object_ a1 = (getLock_overload3_impl (javaCast object_ :: FileLockUtil)) a1

getLock_overload3_impl :: FileLockUtil -> FileChannel.FileChannel -> IO (FileLock.FileLock)
getLock_overload3_impl this fileChannel = do
        flip finally (do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Finally - Closing FileChannel" this "getLock")
            Control.Monad.void (FileChannel.close fileChannel)
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception returns null" this "getLock" e)
            pure (javaNull)
            ) $ do
            fileLock <- (FileChannel.tryLock fileChannel)
            pure (fileLock)


