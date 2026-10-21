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
module HighScores where

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
import qualified HighScore -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HighScoresInterface

-- implements HighScoresInterface
data HighScores = HighScores
    { header_ :: JavaHeader
    , orderedHighScoresList :: IORef (BasicArrayList.BasicArrayList)
    , name :: IORef (String)
    , heading :: IORef (String)
    , columnOneHeading :: IORef (String)
    , columnTwoHeading :: IORef (String)
    }

instance JavaNull HighScores where
    javaNull = javaNullRecord "HighScores"

instance JavaEquals HighScores where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScores where
    (==) = jrecordEquals

instance JavaObjectClass HighScores where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScores
newRecord_ = do
    header_ <- newJavaHeader
    orderedHighScoresList <- newIORef javaNull
    name <- newIORef ""
    heading <- newIORef ""
    columnOneHeading <- newIORef ""
    columnTwoHeading <- newIORef ""
    let this = HighScores header_ orderedHighScoresList name heading columnOneHeading columnTwoHeading
    jregisterLevel header_ this
    HighScoresInterface.registerInterface_ header_
    jregisterMethod header_ "setList" (\() -> setList_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "addHighScore" (\() -> addHighScore_impl this)
    jregisterMethod header_ "getHeading" (\() -> getHeading_impl this)
    jregisterMethod header_ "getColumnOneHeading" (\() -> getColumnOneHeading_impl this)
    jregisterMethod header_ "getColumnTwoHeading" (\() -> getColumnTwoHeading_impl this)
    jregisterMethod header_ "isBestScore" (\() -> isBestScore_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HighScores -> IO ()
initFields_ this = do
    jset this.orderedHighScoresList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.name (javaNull)
    jset this.heading (javaNull)
    jset this.columnOneHeading ("Name")
    jset this.columnTwoHeading (javaNull)
    pure ()

new_3 :: String -> String -> String -> IO HighScores
new_3 name heading columnTwoHeading = do
    this <- newRecord_
    init_3 this name heading columnTwoHeading
    pure this

init_3 :: HighScores -> String -> String -> String -> IO ()
init_3 this name heading columnTwoHeading = do
        initFields_ this
        jset (this).name (name)
        jset (this).heading (heading)
        jset (this).columnTwoHeading (columnTwoHeading)
        pure ()


setList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setList object_ a1 = jmethod object_ "setList" (\() -> (setList_impl (javaCast object_ :: HighScores))) () a1

setList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setList_super object_ a1 = (setList_impl (javaCast object_ :: HighScores)) a1

setList_impl :: HighScores -> BasicArrayList.BasicArrayList -> IO (())
setList_impl this orderedHighScoresList = do
        jset (this).orderedHighScoresList (orderedHighScoresList)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: HighScores))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: HighScores))

getList_impl :: HighScores -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).orderedHighScoresList))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: HighScores))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: HighScores))

getName_impl :: HighScores -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: HighScores))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: HighScores))

getTotal_impl :: HighScores -> IO (Int)
getTotal_impl this = do
        (BasicArrayList.size ((jio (HighScores.getList this))))


addHighScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore object_ a1 = jmethod object_ "addHighScore" (\() -> (addHighScore_impl (javaCast object_ :: HighScores))) () a1

addHighScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore_super object_ a1 = (addHighScore_impl (javaCast object_ :: HighScores)) a1

addHighScore_impl :: HighScores -> HighScore.HighScore -> IO (())
addHighScore_impl this newHighScore = do
        Control.Monad.void (BasicArrayList.add ((jget (this).orderedHighScoresList)) newHighScore)
        pure ()


getHeading :: (JavaObjectClass this_) => this_ -> IO (String)
getHeading object_ = jmethod object_ "getHeading" (\() -> (getHeading_impl (javaCast object_ :: HighScores))) ()

getHeading_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHeading_super object_ = (getHeading_impl (javaCast object_ :: HighScores))

getHeading_impl :: HighScores -> IO (String)
getHeading_impl this = do
        pure ((jget (this).heading))


getColumnOneHeading :: (JavaObjectClass this_) => this_ -> IO (String)
getColumnOneHeading object_ = jmethod object_ "getColumnOneHeading" (\() -> (getColumnOneHeading_impl (javaCast object_ :: HighScores))) ()

getColumnOneHeading_super :: (JavaObjectClass this_) => this_ -> IO (String)
getColumnOneHeading_super object_ = (getColumnOneHeading_impl (javaCast object_ :: HighScores))

getColumnOneHeading_impl :: HighScores -> IO (String)
getColumnOneHeading_impl this = do
        pure ((jget (this).columnOneHeading))


getColumnTwoHeading :: (JavaObjectClass this_) => this_ -> IO (String)
getColumnTwoHeading object_ = jmethod object_ "getColumnTwoHeading" (\() -> (getColumnTwoHeading_impl (javaCast object_ :: HighScores))) ()

getColumnTwoHeading_super :: (JavaObjectClass this_) => this_ -> IO (String)
getColumnTwoHeading_super object_ = (getColumnTwoHeading_impl (javaCast object_ :: HighScores))

getColumnTwoHeading_impl :: HighScores -> IO (String)
getColumnTwoHeading_impl this = do
        pure ((jget (this).columnTwoHeading))


-- throws Exception
isBestScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore object_ a1 = jmethod object_ "isBestScore" (\() -> (isBestScore_impl (javaCast object_ :: HighScores))) () a1

isBestScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore_super object_ a1 = (isBestScore_impl (javaCast object_ :: HighScores)) a1

isBestScore_impl :: HighScores -> HighScore.HighScore -> IO (Bool)
isBestScore_impl this newHighScore = do
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HighScores))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HighScores))

toString_impl :: HighScores -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "HighScores: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).heading))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).orderedHighScoresList)))))
        (StringMaker.toString stringBuffer)


