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
-- package org.allbinary.logic.system.security.crypt
module DatabaseEncoder where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data DatabaseEncoder = DatabaseEncoder
    { header_ :: JavaHeader
    }

instance JavaNull DatabaseEncoder where
    javaNull = javaNullRecord "DatabaseEncoder"

instance JavaEquals DatabaseEncoder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DatabaseEncoder where
    (==) = jrecordEquals

instance JavaObjectClass DatabaseEncoder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DatabaseEncoder
newRecord_ = do
    header_ <- newJavaHeader
    let this = DatabaseEncoder header_
    jregisterLevel header_ this
    pure this

initFields_ :: DatabaseEncoder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DatabaseEncoder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DatabaseEncoder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


encode :: JavaArray (Int8) -> IO (String)
encode value = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) "DatabaseEncoder" "decode" e)
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            ) $ do
            let array = value
            stringBuffer <- (StringMaker.new_)
            forM_ [0 .. (jlength array) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (javaToString (Prelude.fromIntegral ((jindex array (index))) :: Int8)))
                when (index < ((jlength array) - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            (StringMaker.toString stringBuffer)


decode :: String -> IO (JavaArray (Int8))
decode value = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putSE (jget (commonStrings).eXCEPTION) "DatabaseEncoder" "decode" e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))
            ) $ do
            tokenizer <- (Tokenizer.new_1 (jget ((jio (CommonSeps.getInstance))).sPACE))
            vector <- (Tokenizer.getTokensFromString tokenizer value (javaCast (jio (BasicArrayListD.new_))))
            byteVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            size <- (BasicArrayList.size vector)
            byteOfData <- newIORef ("")
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset byteOfData ((javaCast (jindex ((jget (vector).objectArray)) (index)) :: String))
                Control.Monad.void (BasicArrayList.add byteVector (Prelude.fromIntegral ((jget byteOfData)) :: Int8))
            let decode = (jnewArray ((jio (BasicArrayList.size byteVector))) 0)
            decodeIndex <- newIORef (0)
            aByte <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset aByte ((javaCast (jindex ((jget (byteVector).objectArray)) (index)) :: Byte.Byte))
                jsetIndex decode ((jget decodeIndex)) ((jget aByte))
                jset decodeIndex ((jget decodeIndex) + 1)
            pure (decode)


