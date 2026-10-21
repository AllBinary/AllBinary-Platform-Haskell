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
-- package org.allbinary.game.input.mapping
module InputMapping where

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
import qualified InputToGameKeyMapping -- same package or java.lang
import qualified Input -- org.allbinary.game.input.Input
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data InputMapping = InputMapping
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , mappedList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull InputMapping where
    javaNull = javaNullRecord "InputMapping"

instance JavaEquals InputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputMapping where
    (==) = jrecordEquals

instance JavaObjectClass InputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputMapping
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    hashtable <- newIORef javaNull
    mappedList <- newIORef javaNull
    let this = InputMapping header_ logUtil commonStrings hashtable mappedList
    jregisterLevel header_ this
    jregisterMethod header_ "getTotalMapped" (\() -> getTotalMapped_impl this)
    jregisterMethod header_ "isDefaultNew" (\() -> isDefaultNew_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    jregisterMethod header_ "removeAll" (\() -> removeAll_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "addMapping" (\() -> addMapping_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "isMapped" (\() -> isMapped_impl this)
    jregisterMethod header_ "getMappedInput" (\() -> getMappedInput_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    pure this

initFields_ :: InputMapping -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.mappedList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO InputMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputMapping -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getTotalMapped :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMapped object_ = jmethod object_ "getTotalMapped" (\() -> (getTotalMapped_impl (javaCast object_ :: InputMapping))) ()

getTotalMapped_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMapped_super object_ = (getTotalMapped_impl (javaCast object_ :: InputMapping))

getTotalMapped_impl :: InputMapping -> IO (Int)
getTotalMapped_impl this = do
        (ABHashtable.size ((jget (this).hashtable)))


isDefaultNew :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefaultNew object_ = jmethod object_ "isDefaultNew" (\() -> (isDefaultNew_impl (javaCast object_ :: InputMapping))) ()

isDefaultNew_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefaultNew_super object_ = (isDefaultNew_impl (javaCast object_ :: InputMapping))

isDefaultNew_impl :: InputMapping -> IO (Bool)
isDefaultNew_impl this = do
        pure (False)


getDefault :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: InputMapping))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: InputMapping))

getDefault_impl :: InputMapping -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_impl this = do
        (InputToGameKeyMapping.getNullInstance)


removeAll :: (JavaObjectClass this_) => this_ -> IO (())
removeAll object_ = jmethod object_ "removeAll" (\() -> (removeAll_impl (javaCast object_ :: InputMapping))) ()

removeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAll_super object_ = (removeAll_impl (javaCast object_ :: InputMapping))

removeAll_impl :: InputMapping -> IO (())
removeAll_impl this = do
        Control.Monad.void (ABHashtable.clear ((jget (this).hashtable)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).mappedList)))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: InputMapping))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: InputMapping)) a1 a2

remove_impl :: InputMapping -> Input.Input -> Input.Input -> IO (())
remove_impl this input mappedToInput = do
        stringBuffer <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).sTART_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil input)))
        Control.Monad.void (StringMaker.append stringBuffer " == ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil mappedToInput)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "InputMapping::remove")
        list <- (InputMapping.getMappedInput this input)
        if (jio (BasicArrayList.contains list mappedToInput)) then do
            Control.Monad.void (BasicArrayList.remove list mappedToInput)
            Control.Monad.void (BasicArrayList.remove ((jget (this).mappedList)) mappedToInput)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "Removed: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil input)))
            Control.Monad.void (StringMaker.append stringBuffer " == ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil mappedToInput)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "InputMapping::remove")
        else do
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "Not Deleted: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil input)))
            Control.Monad.void (StringMaker.append stringBuffer " == ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil mappedToInput)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "InputMapping::remove")
        pure ()


-- throws Exception
addMapping :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
addMapping object_ a1 = jmethod object_ "addMapping" (\() -> (addMapping_impl (javaCast object_ :: InputMapping))) () a1

addMapping_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
addMapping_super object_ a1 = (addMapping_impl (javaCast object_ :: InputMapping)) a1

addMapping_impl :: InputMapping -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
addMapping_impl this inputToGameKeyMapping = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputMapping))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: InputMapping)) a1 a2

add_impl :: InputMapping -> Input.Input -> Input.Input -> IO (())
add_impl this input mappedToInput = do
        list <- (InputMapping.getMappedInput this input)
        when (Prelude.not (jio (BasicArrayList.contains list mappedToInput))) $ do
            Control.Monad.void (BasicArrayList.add list mappedToInput)
            Control.Monad.void (BasicArrayList.add ((jget (this).mappedList)) mappedToInput)
        pure ()


isMapped :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isMapped object_ a1 = jmethod object_ "isMapped" (\() -> (isMapped_impl (javaCast object_ :: InputMapping))) () a1

isMapped_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isMapped_super object_ a1 = (isMapped_impl (javaCast object_ :: InputMapping)) a1

isMapped_impl :: InputMapping -> Input.Input -> IO (Bool)
isMapped_impl this input = do
        (BasicArrayList.contains ((jget (this).mappedList)) input)


getMappedInput :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (BasicArrayList.BasicArrayList)
getMappedInput object_ a1 = jmethod object_ "getMappedInput" (\() -> (getMappedInput_impl (javaCast object_ :: InputMapping))) () a1

getMappedInput_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (BasicArrayList.BasicArrayList)
getMappedInput_super object_ a1 = (getMappedInput_impl (javaCast object_ :: InputMapping)) a1

getMappedInput_impl :: InputMapping -> Input.Input -> IO (BasicArrayList.BasicArrayList)
getMappedInput_impl this id = do
    javaCatchReturn $ do
        mappingInputCanBeNullList <- (ABHashtable.get ((jget (this).hashtable)) id)
        when (mappingInputCanBeNullList == javaNull) $ do
            list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) id list)
            javaReturn (list)
        pure ((javaCast mappingInputCanBeNullList :: BasicArrayList.BasicArrayList))


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: InputMapping))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: InputMapping))

getHashtable_impl :: InputMapping -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        pure ((jget (this).hashtable))


