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
-- package org.allbinary.game.score
module HighScore where

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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data HighScore = HighScore
    { header_ :: JavaHeader
    , id :: IORef (Int)
    , name :: IORef (String)
    , gameInfo :: IORef (GameInfo.GameInfo)
    , score :: IORef (Int64)
    , scoreString :: IORef (String)
    }

instance JavaNull HighScore where
    javaNull = javaNullRecord "HighScore"

instance JavaEquals HighScore where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScore where
    (==) = jrecordEquals

instance JavaObjectClass HighScore where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScore
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef 0
    name <- newIORef ""
    gameInfo <- newIORef javaNull
    score <- newIORef 0
    scoreString <- newIORef ""
    let this = HighScore header_ id name gameInfo score scoreString
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getScore" (\() -> getScore_impl this)
    jregisterMethod header_ "getAsBytes" (\() -> getAsBytes_impl this)
    jregisterMethod header_ "getGameInfo" (\() -> getGameInfo_impl this)
    jregisterMethod header_ "getScoreString" (\() -> getScoreString_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HighScore -> IO ()
initFields_ this = do
    jset this.id (0)
    jset this.name (javaNull)
    jset this.gameInfo (javaNull)
    jset this.score (0)
    jset this.scoreString (javaNull)
    pure ()

new_4 :: Int -> String -> GameInfo.GameInfo -> Int64 -> IO HighScore
new_4 id name gameInfo score = do
    this <- newRecord_
    init_4 this id name gameInfo score
    pure this

init_4 :: HighScore -> Int -> String -> GameInfo.GameInfo -> Int64 -> IO ()
init_4 this id name gameInfo score = do
        initFields_ this
        jset (this).id (id)
        jset (this).name (name)
        jset (this).gameInfo (gameInfo)
        jset (this).score (score)
        jset (this).scoreString ((javaToString (jget (this).score)))
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: HighScore))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: HighScore))

getId_impl :: HighScore -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: HighScore))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: HighScore))

getName_impl :: HighScore -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getScore :: (JavaObjectClass this_) => this_ -> IO (Int64)
getScore object_ = jmethod object_ "getScore" (\() -> (getScore_impl (javaCast object_ :: HighScore))) ()

getScore_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getScore_super object_ = (getScore_impl (javaCast object_ :: HighScore))

getScore_impl :: HighScore -> IO (Int64)
getScore_impl this = do
        pure ((jget (this).score))


-- throws Exception
getAsBytes :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int8))
getAsBytes object_ = jmethod object_ "getAsBytes" (\() -> (getAsBytes_impl (javaCast object_ :: HighScore))) ()

getAsBytes_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int8))
getAsBytes_super object_ = (getAsBytes_impl (javaCast object_ :: HighScore))

getAsBytes_impl :: HighScore -> IO (JavaArray (Int8))
getAsBytes_impl this = do
        byteArrayOutputStream <- (ByteArrayOutputStream.new_)
        outputStream <- (DataOutputStream.new_1 byteArrayOutputStream)
        Control.Monad.void (DataOutputStream.writeUTF outputStream (jio (HighScore.getName this)))
        Control.Monad.void (DataOutputStream.writeLong outputStream (jio (HighScore.getScore this)))
        (ByteArrayOutputStream.toByteArray byteArrayOutputStream)


getGameInfo :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo object_ = jmethod object_ "getGameInfo" (\() -> (getGameInfo_impl (javaCast object_ :: HighScore))) ()

getGameInfo_super :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo_super object_ = (getGameInfo_impl (javaCast object_ :: HighScore))

getGameInfo_impl :: HighScore -> IO (GameInfo.GameInfo)
getGameInfo_impl this = do
        pure ((jget (this).gameInfo))


getScoreString :: (JavaObjectClass this_) => this_ -> IO (String)
getScoreString object_ = jmethod object_ "getScoreString" (\() -> (getScoreString_impl (javaCast object_ :: HighScore))) ()

getScoreString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getScoreString_super object_ = (getScoreString_impl (javaCast object_ :: HighScore))

getScoreString_impl :: HighScore -> IO (String)
getScoreString_impl this = do
        pure ((jget (this).scoreString))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: HighScore))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: HighScore)) a1

setName_impl :: HighScore -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HighScore))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HighScore))

toString_impl :: HighScore -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).name)))) (jget (commonSeps).cOLON)))) (jget (this).score)))) (jget (commonSeps).fORWARD_SLASH)))) (jget (this).scoreString)))))


