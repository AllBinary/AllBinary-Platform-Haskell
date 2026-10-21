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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified IdGeneratorEntity -- org.allbinary.data.tables.generator.IdGeneratorEntity
import qualified IdGeneratorEntityFactory -- org.allbinary.data.tables.generator.IdGeneratorEntityFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified IdGeneratorInterface

-- implements IdGeneratorInterface
data UniqueIdGenerator = UniqueIdGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , idGeneratorEntity :: IORef (IdGeneratorEntity.IdGeneratorEntity)
    , name :: IORef (String)
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
    idGeneratorEntity <- newIORef javaNull
    name <- newIORef ""
    let this = UniqueIdGenerator header_ logUtil idGeneratorEntity name
    jregisterLevel header_ this
    IdGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "initialize" (\() -> initialize_impl this)
    jregisterMethod header_ "setFile" (\() -> setFile_impl this)
    jregisterMethod header_ "getNext" (\() -> getNext_impl this)
    pure this

initFields_ :: UniqueIdGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.idGeneratorEntity (javaNull)
    jset this.name ("")
    pure ()

new_ :: IO UniqueIdGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UniqueIdGenerator -> IO ()
init_ this = do
        initFields_ this
        jset (this).idGeneratorEntity ((javaCast (jio (IdGeneratorEntityFactory.getInstance)) :: IdGeneratorEntity.IdGeneratorEntity))
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
            vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add vector (jget (this).name))
            Control.Monad.void (BasicArrayList.add vector (javaToString (javaToString value)))
            Control.Monad.void (IdGeneratorEntity.insert ((jget (this).idGeneratorEntity)) vector)
        pure ()


-- throws Exception
setFile :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setFile object_ a1 a2 = jmethod object_ "setFile" (\() -> (setFile_impl (javaCast object_ :: UniqueIdGenerator))) () a1 a2

setFile_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setFile_super object_ a1 a2 = (setFile_impl (javaCast object_ :: UniqueIdGenerator)) a1 a2

setFile_impl :: UniqueIdGenerator -> String -> String -> IO (())
setFile_impl this filePathName name = do
        jset (this).name (name)
        pure ()


-- throws IOException
getNext :: (JavaObjectClass this_) => this_ -> IO (String)
getNext object_ = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: UniqueIdGenerator))) ()

getNext_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNext_super object_ = (getNext_impl (javaCast object_ :: UniqueIdGenerator))

getNext_impl :: UniqueIdGenerator -> IO (String)
getNext_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getNext" e)
            pure ("Error")
            ) $ do
            idLong <- (IdGeneratorEntity.get ((jget (this).idGeneratorEntity)) (jget (this).name))
            let newValue = (javaToString (idLong + 1))
            Control.Monad.void (IdGeneratorEntity.update ((jget (this).idGeneratorEntity)) (jget (this).name) newValue)
            pure ((javaToString idLong))


