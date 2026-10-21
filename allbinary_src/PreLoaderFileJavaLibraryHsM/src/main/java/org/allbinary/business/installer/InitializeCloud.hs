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
-- package org.allbinary.business.installer
module InitializeCloud where

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
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbIOSystem -- org.allbinary.logic.io.AbIOSystem
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data InitializeCloud = InitializeCloud
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InitializeCloud where
    javaNull = javaNullRecord "InitializeCloud"

instance JavaEquals InitializeCloud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitializeCloud where
    (==) = jrecordEquals

instance JavaObjectClass InitializeCloud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLOUD = "cloud/"

cLOUD_UPDATE = "cloudupdate/"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitializeCloud
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = InitializeCloud header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "initialize" (\() -> initialize_impl this)
    pure this

initFields_ :: InitializeCloud -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO InitializeCloud
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitializeCloud -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


initialize :: (JavaObjectClass this_) => this_ -> String -> Bool -> Bool -> Int -> Int -> IO (Bool)
initialize object_ a1 a2 a3 a4 a5 = jmethod object_ "initialize" (\() -> (initialize_impl (javaCast object_ :: InitializeCloud))) () a1 a2 a3 a4 a5

initialize_super :: (JavaObjectClass this_) => this_ -> String -> Bool -> Bool -> Int -> Int -> IO (Bool)
initialize_super object_ a1 a2 a3 a4 a5 = (initialize_impl (javaCast object_ :: InitializeCloud)) a1 a2 a3 a4 a5

initialize_impl :: InitializeCloud -> String -> Bool -> Bool -> Int -> Int -> IO (Bool)
initialize_impl this cloud overwriteNewer overwriteAll current total = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to copy installer files into cloud" this "initialize()" e)
            pure (False)
            ) $ do
            when (jio (AbIOSystem.isType ((jio (AbIOSystem.getInstance))) "com.vobject.appengine.java.io")) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
                Control.Monad.void (StringMaker.append stringBuffer cloud)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).dATA_PATH))
                path <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
                realPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                file <- (AbFile.createAbFileFromAbPath path)
                fileBasicArrayList <- (Directory.search ((jio (Directory.getInstance))) file True)
                size <- (BasicArrayList.size fileBasicArrayList)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Searched: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toFileSystemString path)))
                Control.Monad.void (StringMaker.append stringBuffer " BasicArrayList: ")
                Control.Monad.void (StringMaker.appendint stringBuffer size)
                let portion = ((size `quot` total) + 1)
                let start = (portion * current)
                end <- newIORef ((start + portion))
                when ((jget end) > size) $ do
                    jset end (size)
                Control.Monad.void (StringMaker.append stringBuffer " Section: ")
                Control.Monad.void (StringMaker.appendint stringBuffer start)
                Control.Monad.void (StringMaker.append stringBuffer " - ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget end))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "initialize()")
                nextFile <- newIORef (javaNull)
                forM_ [start .. (jget end) - 1] $ \index -> javaIteration (pure ()) $ do
                    jset nextFile ((javaCast (jio (BasicArrayList.get fileBasicArrayList index)) :: AbFile.AbFile))
                    if (jio (AbFile.isDirectory ((jget nextFile)))) then do
                        pure ()
                    else do
                        Control.Monad.void (FileUtil.copyToCloud ((jio (FileUtil.getInstance))) (jget nextFile) path realPath cloud overwriteNewer overwriteAll)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Copied Files To Cloud" this "initialize()")
            pure (True)


