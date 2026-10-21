{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.data.tables.generator
module IdGeneratorEntityFactory where

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
import qualified IdGeneratorEntity -- same package or java.lang
import qualified IdGeneratorEntityInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data IdGeneratorEntityFactory = IdGeneratorEntityFactory
    { header_ :: JavaHeader
    }

instance JavaNull IdGeneratorEntityFactory where
    javaNull = javaNullRecord "IdGeneratorEntityFactory"

instance JavaEquals IdGeneratorEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IdGeneratorEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass IdGeneratorEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IdGeneratorEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = IdGeneratorEntityFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: IdGeneratorEntityFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO IdGeneratorEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IdGeneratorEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (IdGeneratorEntityInterface.IdGeneratorEntityInterface)
getInstance = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "ServerLicenseRequestEntityFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            pure ((javaCast (jio (IdGeneratorEntity.new_)) :: IdGeneratorEntityInterface.IdGeneratorEntityInterface))


