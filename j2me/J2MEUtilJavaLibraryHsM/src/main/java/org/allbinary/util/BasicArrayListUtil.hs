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
-- package org.allbinary.util
module BasicArrayListUtil where

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
import qualified BasicArrayList -- same package or java.lang
import qualified ImmutableBasicArrayList -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayListD -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BasicArrayListUtil = BasicArrayListUtil
    { header_ :: JavaHeader
    , nULL_ARRAY_OF_ARRAY :: IORef (JavaArray (JavaArray (BasicArrayList.BasicArrayList)))
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    , immutableInstance :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicArrayListUtil where
    javaNull = javaNullRecord "BasicArrayListUtil"

instance JavaEquals BasicArrayListUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayListUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayListUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicArrayListUtil
newRecord_ = do
    header_ <- newJavaHeader
    nULL_ARRAY_OF_ARRAY <- newIORef javaNull
    myRandomFactory <- newIORef javaNull
    immutableInstance <- newIORef javaNull
    let this = BasicArrayListUtil header_ nULL_ARRAY_OF_ARRAY myRandomFactory immutableInstance
    jregisterLevel header_ this
    jregisterMethod header_ "getRandom" (\() -> getRandom_impl this)
    jregisterMethod header_ "getRandomIndex" (\() -> getRandomIndex_impl this)
    jregisterMethod header_ "reverse" (\() -> reverse_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "getImmutableInstance" (\() -> getImmutableInstance_impl this)
    pure this

initFields_ :: BasicArrayListUtil -> IO ()
initFields_ this = do
    jset this.nULL_ARRAY_OF_ARRAY ((jnewArray2 (0) (0) javaNull))
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    jset this.immutableInstance =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (ImmutableBasicArrayList.new_2 "Immutable" 0))
    pure ()

new_ :: IO BasicArrayListUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicArrayListUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicArrayListUtil)
getInstance = do
        pure (BasicArrayListUtil.instance_)


getRandom :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Any.Any)
getRandom object_ a1 = jmethod object_ "getRandom" (\() -> (getRandom_impl (javaCast object_ :: BasicArrayListUtil))) () a1

getRandom_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Any.Any)
getRandom_super object_ a1 = (getRandom_impl (javaCast object_ :: BasicArrayListUtil)) a1

getRandom_impl :: BasicArrayListUtil -> BasicArrayList.BasicArrayList -> IO (Any.Any)
getRandom_impl this list = do
        i_random <- (BasicArrayListUtil.getRandomIndex this list)
        pure ((jtoObject (jindex ((jget (list).objectArray)) (i_random))))


getRandomIndex :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Int)
getRandomIndex object_ a1 = jmethod object_ "getRandomIndex" (\() -> (getRandomIndex_impl (javaCast object_ :: BasicArrayListUtil))) () a1

getRandomIndex_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Int)
getRandomIndex_super object_ a1 = (getRandomIndex_impl (javaCast object_ :: BasicArrayListUtil)) a1

getRandomIndex_impl :: BasicArrayListUtil -> BasicArrayList.BasicArrayList -> IO (Int)
getRandomIndex_impl this list = do
        (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) (jio (BasicArrayList.size list)))


reverse :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
reverse object_ a1 = jmethod object_ "reverse" (\() -> (reverse_impl (javaCast object_ :: BasicArrayListUtil))) () a1

reverse_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
reverse_super object_ a1 = (reverse_impl (javaCast object_ :: BasicArrayListUtil)) a1

reverse_impl :: BasicArrayListUtil -> BasicArrayList.BasicArrayList -> IO (())
reverse_impl this list = do
        let lastMinusOneIndex = ((jio (BasicArrayList.size list)) - 2)
        temp <- newIORef (javaNull)
        let size = (lastMinusOneIndex `quot` 2)
        secondSwapIndex <- newIORef (0)
        forM_ [0 .. size] $ \index -> javaIteration (pure ()) $ do
            jset secondSwapIndex ((lastMinusOneIndex - index))
            assignedValue <- (BasicArrayList.removeAt list index)
            jset temp (assignedValue)
            Control.Monad.void (BasicArrayList.addAt list index (jio (BasicArrayList.removeAt list (jget secondSwapIndex))))
            Control.Monad.void (BasicArrayList.addAt list ((jget secondSwapIndex) + 1) (jget temp))
        pure ()


log :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
log object_ a1 = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: BasicArrayListUtil))) () a1

log_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
log_super object_ a1 = (log_impl (javaCast object_ :: BasicArrayListUtil)) a1

log_impl :: BasicArrayListUtil -> BasicArrayList.BasicArrayList -> IO (String)
log_impl this list = do
        let s_LABEL = " s: "
        size <- (BasicArrayList.size list)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let usedList = (javaCast (jindex ((jget (list).objectArray)) (index)) :: BasicArrayList.BasicArrayList)
            Control.Monad.void (StringMaker.append stringBuffer s_LABEL)
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size usedList)))
        (StringMaker.toString stringBuffer)


getImmutableInstance :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getImmutableInstance object_ = jmethod object_ "getImmutableInstance" (\() -> (getImmutableInstance_impl (javaCast object_ :: BasicArrayListUtil))) ()

getImmutableInstance_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getImmutableInstance_super object_ = (getImmutableInstance_impl (javaCast object_ :: BasicArrayListUtil))

getImmutableInstance_impl :: BasicArrayListUtil -> IO (BasicArrayList.BasicArrayList)
getImmutableInstance_impl this = do
        pure ((jget (this).immutableInstance))


main :: JavaArray (String) -> IO (())
main args = do
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).oNE))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).tWO))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).tHREE))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).fOUR))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).fIVE))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).sIX))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).sEVEN))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).eIGHT))
        Control.Monad.void (BasicArrayList.add list (jget (commonPhoneStrings).nINE))
        Control.Monad.void (BasicArrayListUtil.reverse ((jio (BasicArrayListUtil.getInstance))) list)
        Control.Monad.void (putStrLn (javaToString (jio (BasicArrayList.toString list))))
        pure ()


