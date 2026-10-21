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
-- package org.allbinary.game.identification
module CompositeGroup where

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
import qualified Group -- same package or java.lang
import qualified GroupCommonFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CompositeGroup = CompositeGroup
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , groupInterface :: IORef (Group.Group)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CompositeGroup where
    javaNull = javaNullRecord "CompositeGroup"

instance JavaEquals CompositeGroup where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompositeGroup where
    (==) = jrecordEquals

instance JavaObjectClass CompositeGroup where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CompositeGroup
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    groupInterface <- newIORef javaNull
    list <- newIORef javaNull
    let this = CompositeGroup header_ logUtil groupInterface list
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "isInGroup" (\() -> isInGroup_impl this)
    jregisterMethod header_ "getGroup" (\() -> getGroup_impl this)
    pure this

initFields_ :: CompositeGroup -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.groupInterface (javaNull)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_1 :: Group.Group -> IO CompositeGroup
new_1 groupInterface = do
    this <- newRecord_
    init_1 this groupInterface
    pure this

init_1 :: CompositeGroup -> Group.Group -> IO ()
init_1 this groupInterface = do
        initFields_ this
        jset (this).groupInterface (groupInterface)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: CompositeGroup))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: CompositeGroup))

clear_impl :: CompositeGroup -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CompositeGroup))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: CompositeGroup)) a1

add_impl :: CompositeGroup -> Group.Group -> IO (())
add_impl this groupInterface = do
        commonStrings <- (CommonStrings.getInstance)
        groupCommonFactory <- (GroupCommonFactory.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (groupCommonFactory).aDDING_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (Group.toString groupInterface)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (groupCommonFactory).tO_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).groupInterface))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).aDD))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) groupInterface)
        pure ()


isInGroup :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Bool)
isInGroup object_ a1 = jmethod object_ "isInGroup" (\() -> (isInGroup_impl (javaCast object_ :: CompositeGroup))) () a1

isInGroup_super :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Bool)
isInGroup_super object_ a1 = (isInGroup_impl (javaCast object_ :: CompositeGroup)) a1

isInGroup_impl :: CompositeGroup -> Group.Group -> IO (Bool)
isInGroup_impl this groupInterface = do
    javaCatchReturn $ do
        if (jio (BasicArrayList.contains ((jget (this).list)) groupInterface)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getGroup :: (JavaObjectClass this_) => this_ -> IO (Group.Group)
getGroup object_ = jmethod object_ "getGroup" (\() -> (getGroup_impl (javaCast object_ :: CompositeGroup))) ()

getGroup_super :: (JavaObjectClass this_) => this_ -> IO (Group.Group)
getGroup_super object_ = (getGroup_impl (javaCast object_ :: CompositeGroup))

getGroup_impl :: CompositeGroup -> IO (Group.Group)
getGroup_impl this = do
        pure ((jget (this).groupInterface))


