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
module UniqueTokens where

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
import qualified Tokenizer -- same package or java.lang
import qualified HashSet -- java.util.HashSet
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data UniqueTokens = UniqueTokens
    { header_ :: JavaHeader
    , specialCharacters :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull UniqueTokens where
    javaNull = javaNullRecord "UniqueTokens"

instance JavaEquals UniqueTokens where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UniqueTokens where
    (==) = jrecordEquals

instance JavaObjectClass UniqueTokens where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UniqueTokens
newRecord_ = do
    header_ <- newJavaHeader
    specialCharacters <- newIORef javaNull
    let this = UniqueTokens header_ specialCharacters
    jregisterLevel header_ this
    jregisterMethod header_ "getWhithoutDashesAndSkipNumberOnlyTokens" (\() -> getWhithoutDashesAndSkipNumberOnlyTokens_impl this)
    jregisterMethod header_ "numberOnly" (\() -> numberOnly_impl this)
    jregisterMethod header_ "isSpecialCharacter" (\() -> isSpecialCharacter_impl this)
    pure this

initFields_ :: UniqueTokens -> IO ()
initFields_ this = do
    jset this.specialCharacters =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO UniqueTokens
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UniqueTokens -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "!")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "@")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) (jget ((jio (CommonPhoneStrings.getInstance))).pOUND))
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "$")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "%")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "^")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) (jget ((jio (CommonSeps.getInstance))).aMPERSAND))
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) (jget ((jio (CommonPhoneStrings.getInstance))).sTAR))
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "(")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) ")")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "-")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "_")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "+")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "=")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "\\")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "|")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) ",")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "<")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) ">")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "?")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "/")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "~")
        Control.Monad.void (BasicArrayList.add ((jget (this).specialCharacters)) "`")
        pure ()


-- throws Exception
getWhithoutDashesAndSkipNumberOnlyTokens :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (HashSet.HashSet)
getWhithoutDashesAndSkipNumberOnlyTokens object_ a1 = jmethod object_ "getWhithoutDashesAndSkipNumberOnlyTokens" (\() -> (getWhithoutDashesAndSkipNumberOnlyTokens_impl (javaCast object_ :: UniqueTokens))) () a1

getWhithoutDashesAndSkipNumberOnlyTokens_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (HashSet.HashSet)
getWhithoutDashesAndSkipNumberOnlyTokens_super object_ a1 = (getWhithoutDashesAndSkipNumberOnlyTokens_impl (javaCast object_ :: UniqueTokens)) a1

getWhithoutDashesAndSkipNumberOnlyTokens_impl :: UniqueTokens -> BasicArrayList.BasicArrayList -> IO (HashSet.HashSet)
getWhithoutDashesAndSkipNumberOnlyTokens_impl this stringVector = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            hashSet <- (HashSet.new_)
            index <- newIORef (0)
            commonSeps <- (CommonSeps.getInstance)
            fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size stringVector))) $ javaIteration (loop) $ do
                let keywords = (javaCast (jio (BasicArrayList.get stringVector (jget index))) :: String)
                tokenizer <- (Tokenizer.new_1 (jget (commonSeps).cOMMA))
                keywordVector <- (Tokenizer.getTokensFromString tokenizer keywords (jio (BasicArrayListD.new_)))
                forM_ [0 .. (jio (BasicArrayList.size keywordVector)) - 1] $ \forIndex -> javaIteration (pure ()) $ do
                    cleanString <- newIORef ((javaCast (jio (BasicArrayList.get keywordVector forIndex)) :: String))
                    jset cleanString ((jstringTrim (jget cleanString)))
                    when ((jstringIndexOf (jget cleanString) '-' 0) /= (Prelude.negate 1)) $ do
                        assignedValue <- (jio (Replace.all ((jio (Replace.new_2 "-" (jget (commonSeps).sPACE)))) (jget cleanString)))
                    jset cleanString (assignedValue)
                    Control.Monad.void (HashSet.add hashSet (jget cleanString))
                    when ((jstringIndexOf (jget cleanString) ' ' 0) /= (Prelude.negate 1)) $ do
                        spaceTokenizer <- (Tokenizer.new_1 (jget (commonSeps).sPACE))
                        subKeywordVector <- (Tokenizer.getTokensFromString spaceTokenizer (jget cleanString) (jio (BasicArrayListD.new_)))
                        forM_ [0 .. (jio (BasicArrayList.size subKeywordVector)) - 1] $ \spaceIndex -> javaIteration (pure ()) $ do
                            let subCleanString = (javaCast (jio (BasicArrayList.get subKeywordVector spaceIndex)) :: String)
                            when ((Prelude.not (jio (UniqueTokens.isSpecialCharacter this subCleanString))) && (Prelude.not (jio (UniqueTokens.numberOnly this subCleanString)))) $ do
                                Control.Monad.void (HashSet.add hashSet subCleanString)
                jset index ((jget index) + 1)
            pure (hashSet)


numberOnly :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
numberOnly object_ a1 = jmethod object_ "numberOnly" (\() -> (numberOnly_impl (javaCast object_ :: UniqueTokens))) () a1

numberOnly_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
numberOnly_super object_ a1 = (numberOnly_impl (javaCast object_ :: UniqueTokens)) a1

numberOnly_impl :: UniqueTokens -> String -> IO (Bool)
numberOnly_impl this subCleaningString = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            (Prelude.read subCleaningString)
            pure (True)


isSpecialCharacter :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSpecialCharacter object_ a1 = jmethod object_ "isSpecialCharacter" (\() -> (isSpecialCharacter_impl (javaCast object_ :: UniqueTokens))) () a1

isSpecialCharacter_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSpecialCharacter_super object_ a1 = (isSpecialCharacter_impl (javaCast object_ :: UniqueTokens)) a1

isSpecialCharacter_impl :: UniqueTokens -> String -> IO (Bool)
isSpecialCharacter_impl this subCleaningString = do
        forM_ [0 .. (jio (BasicArrayList.size ((jget (this).specialCharacters)))) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((Prelude.fromEnum (Prelude.compare subCleaningString (javaCast (jio (BasicArrayList.get ((jget (this).specialCharacters)) index)) :: String)) - 1) == 0) $ do
                javaReturn (True)
        pure (False)


