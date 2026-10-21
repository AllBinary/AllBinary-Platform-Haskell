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
-- package org.allbinary.data
module CamelCaseUtil where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CamelCaseUtil = CamelCaseUtil
    { header_ :: JavaHeader
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    }

instance JavaNull CamelCaseUtil where
    javaNull = javaNullRecord "CamelCaseUtil"

instance JavaEquals CamelCaseUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CamelCaseUtil where
    (==) = jrecordEquals

instance JavaObjectClass CamelCaseUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CamelCaseUtil
newRecord_ = do
    header_ <- newJavaHeader
    commonSeps <- newIORef javaNull
    let this = CamelCaseUtil header_ commonSeps
    jregisterLevel header_ this
    jregisterMethod header_ "getAsCamelCase" (\() -> getAsCamelCase_impl this)
    pure this

initFields_ :: CamelCaseUtil -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    pure ()

new_ :: IO CamelCaseUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CamelCaseUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CamelCaseUtil)
getInstance = do
        pure (CamelCaseUtil.instance_)


-- throws Exception
getAsCamelCase :: (JavaObjectClass this_) => this_ -> String -> StringMaker.StringMaker -> IO (String)
getAsCamelCase object_ a1 a2 = jmethod object_ "getAsCamelCase" (\() -> (getAsCamelCase_impl (javaCast object_ :: CamelCaseUtil))) () a1 a2

getAsCamelCase_super :: (JavaObjectClass this_) => this_ -> String -> StringMaker.StringMaker -> IO (String)
getAsCamelCase_super object_ a1 a2 = (getAsCamelCase_impl (javaCast object_ :: CamelCaseUtil)) a1 a2

getAsCamelCase_impl :: CamelCaseUtil -> String -> StringMaker.StringMaker -> IO (String)
getAsCamelCase_impl this string stringBuilder = do
    javaCatchReturn $ do
        when (string == javaNull) $ do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        Control.Monad.void (StringMaker.delete stringBuilder 0 (jio (StringMaker.length stringBuilder)))
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        tokenizer <- (Tokenizer.new_1 (jget ((jget (this).commonSeps)).uNDERSCORE))
        Control.Monad.void (Tokenizer.getTokensFromString tokenizer string list)
        size <- (BasicArrayList.size list)
        word <- newIORef ("")
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            jset word ((javaCast (jio (BasicArrayList.get list i)) :: String))
            jset word ((if (jio (StringValidationUtil.isEmpty stringValidationUtil (jget word))) then (jget word) else (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendchar ((jio (StringMaker.new_))) (Data.Char.toUpper ((jget word) Prelude.!! 0))))) (Prelude.map Data.Char.toLower (Prelude.drop 1 (jget word))))))))))
            Control.Monad.void (StringMaker.append stringBuilder (jget word))
        (StringMaker.toString stringBuilder)


