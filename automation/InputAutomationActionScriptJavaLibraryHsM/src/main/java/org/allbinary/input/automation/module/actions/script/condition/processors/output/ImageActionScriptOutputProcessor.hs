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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ImageActionScriptOutputProcessor where

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
import qualified ImageTypes -- same package or java.lang
import qualified ImageActionScriptOutputInterface -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified InputImageIOInterfaceFactory -- org.allbinary.input.media.image.InputImageIOInterfaceFactory
import qualified InputImageType -- org.allbinary.input.media.image.InputImageType
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageIOInterface -- org.allbinary.media.image.io.ImageIOInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageActionScriptOutputProcessor = ImageActionScriptOutputProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ImageActionScriptOutputProcessor where
    javaNull = javaNullRecord "ImageActionScriptOutputProcessor"

instance JavaEquals ImageActionScriptOutputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageActionScriptOutputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ImageActionScriptOutputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageActionScriptOutputProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ImageActionScriptOutputProcessor header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: ImageActionScriptOutputProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ImageActionScriptOutputProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageActionScriptOutputProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: ImageActionScriptOutputInterface.ImageActionScriptOutputInterface -> Int64 -> IO (())
process imageActionScriptOutputInterface frame = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil ("Start - Processing at: " ++ (jio (ImageActionScriptOutputInterface.toString imageActionScriptOutputInterface))) "ImageActionScriptOutputProcessor" (jget (commonStrings).pROCESS))
        imageTypes <- (ImageActionScriptOutputInterface.getImageTypes imageActionScriptOutputInterface)
        vector <- (ImageTypes.getVector imageTypes)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let imageType = (javaCast (jio (BasicArrayList.get vector index)) :: InputImageType.InputImageType)
            imageIOInterface <- (InputImageIOInterfaceFactory.getInstance imageType)
            Control.Monad.void (ImageIOInterface.save imageIOInterface frame)
        pure ()


