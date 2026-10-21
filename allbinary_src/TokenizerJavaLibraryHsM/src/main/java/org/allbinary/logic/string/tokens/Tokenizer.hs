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
-- package org.allbinary.logic.string.tokens
module Tokenizer where

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
import qualified Any -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data Tokenizer = Tokenizer
    { header_ :: JavaHeader
    , sep :: IORef (String)
    , endSep :: IORef (String)
    }

instance JavaNull Tokenizer where
    javaNull = javaNullRecord "Tokenizer"

instance JavaEquals Tokenizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Tokenizer where
    (==) = jrecordEquals

instance JavaObjectClass Tokenizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Tokenizer
newRecord_ = do
    header_ <- newJavaHeader
    sep <- newIORef ""
    endSep <- newIORef ""
    let this = Tokenizer header_ sep endSep
    jregisterLevel header_ this
    jregisterMethod header_ "setSep" (\() -> setSep_impl this)
    jregisterMethod header_ "setEndSep" (\() -> setEndSep_impl this)
    jregisterMethod header_ "getInsideSep" (\() -> getInsideSep_impl this)
    jregisterMethod header_ "getTokensFromString" (\() -> getTokensFromString_impl this)
    jregisterMethod header_ "getTokens" (\() -> getTokens_impl this)
    pure this

initFields_ :: Tokenizer -> IO ()
initFields_ this = do
    jset this.sep (javaNull)
    jset this.endSep ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_1 :: String -> IO Tokenizer
new_1 sep = do
    this <- newRecord_
    init_1 this sep
    pure this

init_1 :: Tokenizer -> String -> IO ()
init_1 this sep = do
        initFields_ this
        when ((sep == javaNull) || ((jio (TsUtil.compareTo ((jio (TsUtil.getInstance))) sep (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))) == 0)) $ do
            javaThrow ((JavaException "Exception" "Sep provided is not valid"))
        jset (this).sep (sep)
        pure ()


setSep :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSep object_ a1 = jmethod object_ "setSep" (\() -> (setSep_impl (javaCast object_ :: Tokenizer))) () a1

setSep_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSep_super object_ a1 = (setSep_impl (javaCast object_ :: Tokenizer)) a1

setSep_impl :: Tokenizer -> String -> IO (())
setSep_impl this sep = do
        jset (this).sep (sep)
        pure ()


setEndSep :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEndSep object_ a1 = jmethod object_ "setEndSep" (\() -> (setEndSep_impl (javaCast object_ :: Tokenizer))) () a1

setEndSep_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEndSep_super object_ a1 = (setEndSep_impl (javaCast object_ :: Tokenizer)) a1

setEndSep_impl :: Tokenizer -> String -> IO (())
setEndSep_impl this endSep = do
        jset (this).endSep (endSep)
        pure ()


getInsideSep :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getInsideSep object_ a1 = jmethod object_ "getInsideSep" (\() -> (getInsideSep_impl (javaCast object_ :: Tokenizer))) () a1

getInsideSep_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getInsideSep_super object_ a1 = (getInsideSep_impl (javaCast object_ :: Tokenizer)) a1

getInsideSep_impl :: Tokenizer -> String -> IO (BasicArrayList.BasicArrayList)
getInsideSep_impl this string = do
        tokenList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        index <- newIORef (0)
        let size = (Prelude.length string)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (loop) $ do
            jset index ((jstringIndexOf string (jget (this).sep) (jget index)))
            if ((jget index) /= (Prelude.negate 1)) then do
                let end = (jstringIndexOf string (jget (this).endSep) ((jget index) + (Prelude.length (jget (this).sep))))
                if (end /= (Prelude.negate 1)) then do
                    Control.Monad.void (BasicArrayList.add tokenList (Prelude.take (((end - (((Prelude.length (jget (this).endSep)) - 1)))) - (((jget index) + (Prelude.length (jget (this).sep))))) (Prelude.drop (((jget index) + (Prelude.length (jget (this).sep)))) string)))
                    jset index ((end + (Prelude.length (jget (this).endSep))))
                else do
                    pure ()
            else do
                throwIO JavaBreak
        pure (tokenList)


getTokensFromString :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getTokensFromString object_ a1 a2 = jmethod object_ "getTokensFromString" (\() -> (getTokensFromString_impl (javaCast object_ :: Tokenizer))) () a1 a2

getTokensFromString_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getTokensFromString_super object_ a1 a2 = (getTokensFromString_impl (javaCast object_ :: Tokenizer)) a1 a2

getTokensFromString_impl :: Tokenizer -> String -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getTokensFromString_impl this string tokenVector = do
        index <- newIORef (0)
        end <- newIORef (0)
        fix $ \loop -> when ((jget index) < (Prelude.length string)) $ javaIteration (loop) $ do
            jset end ((jstringIndexOf string (jget (this).sep) (jget index)))
            if ((jget end) /= (Prelude.negate 1)) then do
                Control.Monad.void (BasicArrayList.add tokenVector (Prelude.take (((jget end)) - ((jget index))) (Prelude.drop ((jget index)) string)))
                jset index (((jget end) + (Prelude.length (jget (this).sep))))
            else do
                Control.Monad.void (BasicArrayList.add tokenVector (Prelude.take (((Prelude.length string)) - ((jget index))) (Prelude.drop ((jget index)) string)))
                throwIO JavaBreak
        pure (tokenVector)


getTokens :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (ABHashtable.ABHashtable)
getTokens object_ a1 = jmethod object_ "getTokens" (\() -> (getTokens_impl (javaCast object_ :: Tokenizer))) () a1

getTokens_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (ABHashtable.ABHashtable)
getTokens_super object_ a1 = (getTokens_impl (javaCast object_ :: Tokenizer)) a1

getTokens_impl :: Tokenizer -> BasicArrayList.BasicArrayList -> IO (ABHashtable.ABHashtable)
getTokens_impl this stringVector = do
        tokenHashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        string <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        end <- newIORef (0)
        size <- (BasicArrayList.size stringVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset string ((javaCast (jindex ((jget (stringVector).objectArray)) (index)) :: String))
            jset end ((jstringIndexOf (jget string) (jget (this).sep) 0))
            when ((jget end) >= 0) $ do
                Control.Monad.void (ABHashtable.put tokenHashtable (Prelude.take (((jget end)) - (0)) (Prelude.drop (0) (jget string))) (Prelude.take (((Prelude.length (jget string))) - (((jget end) + 1))) (Prelude.drop (((jget end) + 1)) (jget string))))
        pure (tokenHashtable)


