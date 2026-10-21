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
-- package org.allbinary.input.motion.button
module TouchButtonFactory where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data TouchButtonFactory = TouchButtonFactory
    { header_ :: JavaHeader
    , lIST :: IORef (BasicArrayList.BasicArrayList)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , savedList :: IORef (BasicArrayList.BasicArrayList)
    , saved :: IORef (Bool)
    }

instance JavaNull TouchButtonFactory where
    javaNull = javaNullRecord "TouchButtonFactory"

instance JavaEquals TouchButtonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonFactory
newRecord_ = do
    header_ <- newJavaHeader
    lIST <- newIORef javaNull
    list <- newIORef javaNull
    savedList <- newIORef javaNull
    saved <- newIORef False
    let this = TouchButtonFactory header_ lIST list savedList saved
    jregisterLevel header_ this
    jregisterMethod header_ "defaultList" (\() -> defaultList_impl this)
    jregisterMethod header_ "toggle" (\() -> toggle_impl this)
    jregisterMethod header_ "setList" (\() -> setList_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: TouchButtonFactory -> IO ()
initFields_ this = do
    jset this.lIST =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.list ((jget (this).lIST))
    jset this.savedList ((jget (this).lIST))
    jset this.saved (False)
    pure ()


getInstance :: IO (TouchButtonFactory)
getInstance = do
        pure (TouchButtonFactory.sINGLETON)

new_ :: IO TouchButtonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


defaultList :: (JavaObjectClass this_) => this_ -> IO (())
defaultList object_ = jmethod object_ "defaultList" (\() -> (defaultList_impl (javaCast object_ :: TouchButtonFactory))) ()

defaultList_super :: (JavaObjectClass this_) => this_ -> IO (())
defaultList_super object_ = (defaultList_impl (javaCast object_ :: TouchButtonFactory))

defaultList_impl :: TouchButtonFactory -> IO (())
defaultList_impl this = do
        jset (this).list ((jget (this).lIST))
        Control.Monad.void (TouchButtonFactory.toggle this False (jget (this).lIST))
        pure ()


toggle :: (JavaObjectClass this_) => this_ -> Bool -> BasicArrayList.BasicArrayList -> IO (())
toggle object_ a1 a2 = jmethod object_ "toggle" (\() -> (toggle_impl (javaCast object_ :: TouchButtonFactory))) () a1 a2

toggle_super :: (JavaObjectClass this_) => this_ -> Bool -> BasicArrayList.BasicArrayList -> IO (())
toggle_super object_ a1 a2 = (toggle_impl (javaCast object_ :: TouchButtonFactory)) a1 a2

toggle_impl :: TouchButtonFactory -> Bool -> BasicArrayList.BasicArrayList -> IO (())
toggle_impl this save list = do
        if (list /= (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance)))))) then do
            jset (this).savedList (list)
            when (Prelude.not (jget (this).saved)) $ do
                jset (this).list ((jget (this).savedList))
        else do
            if save then do
                if (Prelude.not (jget (this).saved)) then do
                    jset (this).saved (True)
                    jset (this).savedList ((jget (this).list))
                    jset (this).list ((jget (this).lIST))
                else do
                    pure ()
            else do
                jset (this).list ((jget (this).savedList))
                jset (this).saved (False)
        pure ()


-- throws Exception
setList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setList object_ a1 = jmethod object_ "setList" (\() -> (setList_impl (javaCast object_ :: TouchButtonFactory))) () a1

setList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setList_super object_ a1 = (setList_impl (javaCast object_ :: TouchButtonFactory)) a1

setList_impl :: TouchButtonFactory -> BasicArrayList.BasicArrayList -> IO (())
setList_impl this list = do
        when (list == javaNull) $ do
            javaThrow ((JavaException "Exception" "Null List"))
        jset (this).list (list)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: TouchButtonFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: TouchButtonFactory))

getList_impl :: TouchButtonFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


