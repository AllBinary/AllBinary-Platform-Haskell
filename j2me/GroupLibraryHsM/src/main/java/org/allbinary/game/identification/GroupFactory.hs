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
module GroupFactory where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GroupFactory = GroupFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nULL_GROUP_ARRAY :: IORef (JavaArray (Group.Group))
    , list :: IORef (BasicArrayList.BasicArrayList)
    , index :: IORef (Int)
    }

instance JavaNull GroupFactory where
    javaNull = javaNullRecord "GroupFactory"

instance JavaEquals GroupFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GroupFactory where
    (==) = jrecordEquals

instance JavaObjectClass GroupFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GroupFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nULL_GROUP_ARRAY <- newIORef javaNull
    list <- newIORef javaNull
    index <- newIORef 0
    let this = GroupFactory header_ logUtil nULL_GROUP_ARRAY list index
    jregisterLevel header_ this
    jregisterMethod header_ "getNextGroup" (\() -> getNextGroup_impl this)
    jregisterMethod header_ "getNextGroupByName" (\() -> getNextGroupByName_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: GroupFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nULL_GROUP_ARRAY ((jnewArray (0) javaNull))
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.index (0)
    pure ()

new_ :: IO GroupFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GroupFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GroupFactory)
getInstance = do
        pure ((jget GroupFactory.instance_))


getNextGroup :: (JavaObjectClass this_) => this_ -> IO (Group.Group)
getNextGroup object_ = jmethod object_ "getNextGroup" (\() -> (getNextGroup_impl (javaCast object_ :: GroupFactory))) ()

getNextGroup_super :: (JavaObjectClass this_) => this_ -> IO (Group.Group)
getNextGroup_super object_ = (getNextGroup_impl (javaCast object_ :: GroupFactory))

getNextGroup_impl :: GroupFactory -> IO (Group.Group)
getNextGroup_impl this = do
        let group = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget (this).index))) :: Group.Group)
        jset (this).index ((jget (this).index) + 1)
        pure (group)


getNextGroupByName :: (JavaObjectClass this_) => this_ -> String -> IO (Group.Group)
getNextGroupByName object_ a1 = jmethod object_ "getNextGroupByName" (\() -> (getNextGroupByName_impl (javaCast object_ :: GroupFactory))) () a1

getNextGroupByName_super :: (JavaObjectClass this_) => this_ -> String -> IO (Group.Group)
getNextGroupByName_super object_ a1 = (getNextGroupByName_impl (javaCast object_ :: GroupFactory)) a1

getNextGroupByName_impl :: GroupFactory -> String -> IO (Group.Group)
getNextGroupByName_impl this name = do
        group <- (GroupFactory.getNextGroup this)
        Control.Monad.void (Group.setName group name)
        pure (group)


init :: (JavaObjectClass this_) => this_ -> Int16 -> JavaArray (String) -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GroupFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int16 -> JavaArray (String) -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: GroupFactory)) a1 a2

init_impl :: GroupFactory -> Int16 -> JavaArray (String) -> IO (())
init_impl this groups nameArray = do
        stringMaker <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        let tEAM = "Team "
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        jset (this).index (0)
        size <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jget size) < (Prelude.fromIntegral groups)) $ javaIteration (loop) $ do
            name <- newIORef ((jget (stringUtil).eMPTY_STRING))
            if ((jget size) < (jlength nameArray)) then do
                jset name ((jindex nameArray ((jget size))))
            else do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringMaker tEAM))) (jget size)))))
                jset name (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jio (Group.new_2 (jget name) (Prelude.fromIntegral (((jget size) + 3))))))
            jset size ((jget size) + 1)
        pure ()


