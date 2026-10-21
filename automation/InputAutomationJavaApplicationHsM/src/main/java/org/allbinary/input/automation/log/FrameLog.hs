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
-- package org.allbinary.input.automation.log
module FrameLog where

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
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ImageOutputData -- org.allbinary.input.automation.ImageOutputData
import qualified LongUtil -- org.allbinary.logic.java.number.LongUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data FrameLog = FrameLog
    { header_ :: JavaHeader
    , frame :: IORef (Int64)
    , infoStringBuffer :: IORef (StringMaker.StringMaker)
    , actionsStringBuffer :: IORef (StringMaker.StringMaker)
    }

instance JavaNull FrameLog where
    javaNull = javaNullRecord "FrameLog"

instance JavaEquals FrameLog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FrameLog where
    (==) = jrecordEquals

instance JavaObjectClass FrameLog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE frameBytes #-}
frameBytes = unsafePerformIO (newIORef ((jgetBytes (jio (jnewString "Frame: ")))))

{-# NOINLINE info #-}
info = unsafePerformIO (newIORef ((jgetBytes (jio (jnewString "Info: \n")))))

{-# NOINLINE actions #-}
actions = unsafePerformIO (newIORef ((jgetBytes (jio (jnewString "Actions: \n")))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FrameLog
newRecord_ = do
    header_ <- newJavaHeader
    frame <- newIORef javaNull
    infoStringBuffer <- newIORef javaNull
    actionsStringBuffer <- newIORef javaNull
    let this = FrameLog header_ frame infoStringBuffer actionsStringBuffer
    jregisterLevel header_ this
    jregisterMethod header_ "addInfo" (\() -> addInfo_impl this)
    jregisterMethod header_ "addActions" (\() -> addActions_impl this)
    jregisterMethod header_ "addAction" (\() -> addAction_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    pure this

initFields_ :: FrameLog -> IO ()
initFields_ this = do
    jset this.frame (javaNull)
    jset this.infoStringBuffer =<< (StringMaker.new_)
    jset this.actionsStringBuffer =<< (StringMaker.new_)
    pure ()

new_1 :: Int64 -> IO FrameLog
new_1 frame = do
    this <- newRecord_
    init_1 this frame
    pure this

init_1 :: FrameLog -> Int64 -> IO ()
init_1 this frame = do
        initFields_ this
        jset (this).frame (frame)
        pure ()


addInfo :: (JavaObjectClass this_) => this_ -> String -> IO (())
addInfo object_ a1 = jmethod object_ "addInfo" (\() -> (addInfo_impl (javaCast object_ :: FrameLog))) () a1

addInfo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addInfo_super object_ a1 = (addInfo_impl (javaCast object_ :: FrameLog)) a1

addInfo_impl :: FrameLog -> String -> IO (())
addInfo_impl this infoString = do
        Control.Monad.void (StringMaker.append ((jget (this).infoStringBuffer)) infoString)
        pure ()


addActions :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addActions object_ a1 = jmethod object_ "addActions" (\() -> (addActions_impl (javaCast object_ :: FrameLog))) () a1

addActions_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addActions_super object_ a1 = (addActions_impl (javaCast object_ :: FrameLog)) a1

addActions_impl :: FrameLog -> BasicArrayList.BasicArrayList -> IO (())
addActions_impl this vectorOfStrings = do
        size <- (BasicArrayList.size vectorOfStrings)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (FrameLog.addAction this (javaCast (jio (BasicArrayList.get vectorOfStrings index)) :: String))
        pure ()


addAction :: (JavaObjectClass this_) => this_ -> String -> IO (())
addAction object_ a1 = jmethod object_ "addAction" (\() -> (addAction_impl (javaCast object_ :: FrameLog))) () a1

addAction_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addAction_super object_ a1 = (addAction_impl (javaCast object_ :: FrameLog)) a1

addAction_impl :: FrameLog -> String -> IO (())
addAction_impl this action = do
        Control.Monad.void (StringMaker.append ((jget (this).actionsStringBuffer)) action)
        Control.Monad.void (StringMaker.append ((jget (this).actionsStringBuffer)) (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: FrameLog))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: FrameLog))

write_impl :: FrameLog -> IO (())
write_impl this = do
        filePathStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer (ImageOutputData.sAVE_PATH))
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (LongUtil.fillIn (javaToString (jget (this).frame)))))
        Control.Monad.void (StringMaker.append filePathStringBuffer ".txt")
        filePath <- (StringMaker.toString filePathStringBuffer)
        fileOutputStream <- (FileOutputStream.new_1 (jio (File.new_1 filePath)))
        Control.Monad.void (FileOutputStream.write fileOutputStream (jget FrameLog.frameBytes))
        Control.Monad.void (FileOutputStream.write fileOutputStream (jgetBytes (javaToString (jio (FrameLog.getFrame this)))))
        Control.Monad.void (FileOutputStream.write fileOutputStream '\n')
        Control.Monad.void (FileOutputStream.write fileOutputStream (jget FrameLog.info))
        Control.Monad.void (FileOutputStream.write fileOutputStream (jgetBytes (jio (StringMaker.toString ((jget (this).infoStringBuffer))))))
        Control.Monad.void (FileOutputStream.write fileOutputStream '\n')
        Control.Monad.void (FileOutputStream.write fileOutputStream (jget FrameLog.actions))
        Control.Monad.void (FileOutputStream.write fileOutputStream (jgetBytes (jio (StringMaker.toString ((jget (this).actionsStringBuffer))))))
        Control.Monad.void (FileOutputStream.close fileOutputStream)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: FrameLog))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: FrameLog))

getFrame_impl :: FrameLog -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


