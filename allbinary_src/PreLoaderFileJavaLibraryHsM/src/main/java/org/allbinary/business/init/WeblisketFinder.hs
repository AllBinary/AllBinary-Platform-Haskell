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
-- package org.allbinary.business.init
module WeblisketFinder where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified SubDirectory -- org.allbinary.logic.io.file.directory.SubDirectory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data WeblisketFinder = WeblisketFinder
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , subDirectory :: IORef (SubDirectory.SubDirectory)
    }

instance JavaNull WeblisketFinder where
    javaNull = javaNullRecord "WeblisketFinder"

instance JavaEquals WeblisketFinder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeblisketFinder where
    (==) = jrecordEquals

instance JavaObjectClass WeblisketFinder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

kEY = "installerdata.dat"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WeblisketFinder
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    subDirectory <- newIORef javaNull
    let this = WeblisketFinder header_ logUtil commonStrings subDirectory
    jregisterLevel header_ this
    jregisterMethod header_ "findAll" (\() -> findAll_impl this)
    jregisterMethod header_ "getInstallationPath" (\() -> getInstallationPath_impl this)
    pure this

initFields_ :: WeblisketFinder -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.subDirectory =<< (SubDirectory.getInstance)
    pure ()


getInstance :: IO (WeblisketFinder)
getInstance = do
        pure (WeblisketFinder.instance_)

new_ :: IO WeblisketFinder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WeblisketFinder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


findAll :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findAll object_ a1 = jmethod object_ "findAll" (\() -> (findAll_impl (javaCast object_ :: WeblisketFinder))) () a1

findAll_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findAll_super object_ a1 = (findAll_impl (javaCast object_ :: WeblisketFinder)) a1

findAll_impl :: WeblisketFinder -> String -> IO (BasicArrayList.BasicArrayList)
findAll_impl this path = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "findAll" e)
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "findAll" e)
            pure (javaNull)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "findAll")
            (SubDirectory.search ((jget (this).subDirectory)) (WeblisketFinder.kEY) (jio (AbFile.createAbFile path)))


getInstallationPath :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (String)
getInstallationPath object_ a1 = jmethod object_ "getInstallationPath" (\() -> (getInstallationPath_impl (javaCast object_ :: WeblisketFinder))) () a1

getInstallationPath_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (String)
getInstallationPath_super object_ a1 = (getInstallationPath_impl (javaCast object_ :: WeblisketFinder)) a1

getInstallationPath_impl :: WeblisketFinder -> AbFile.AbFile -> IO (String)
getInstallationPath_impl this file = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstallationPath" e)
            pure (javaNull)
            ) $ do
            filePath <- (AbFile.getPath file)
            let end = (jstringIndexOf filePath kEY 0)
            when (end < 0) $ do
                javaReturn (javaNull)
            pure ((Prelude.take ((end) - (0)) (Prelude.drop (0) filePath)))


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        stringUtil <- (StringUtil.getInstance)
        vector <- (WeblisketFinder.findAll ((jio (WeblisketFinder.getInstance))) (jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (putStrLn (javaToString (jio (BasicArrayList.size vector))))
        pure ()


