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
-- package org.allbinary.data.resource
module ResourceUtil where

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
import qualified Class -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Activity -- android.app.Activity
import qualified Context -- android.content.Context
import qualified Resources -- android.content.res.Resources
import qualified DebugFactory -- org.allbinary.debug.DebugFactory
import qualified NoDebug -- org.allbinary.debug.NoDebug
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil

data ResourceUtil = ResourceUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , context :: IORef (Any.Any)
    , resources :: IORef (Any.Any)
    , hashMap :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull ResourceUtil where
    javaNull = javaNullRecord "ResourceUtil"

instance JavaEquals ResourceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceUtil where
    (==) = jrecordEquals

instance JavaObjectClass ResourceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResourceUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    context <- newIORef javaNull
    resources <- newIORef javaNull
    hashMap <- newIORef javaNull
    let this = ResourceUtil header_ logUtil context resources hashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setLoadingPaths" (\() -> setLoadingPaths_impl this)
    jregisterMethod header_ "getContext" (\() -> getContext_impl this)
    jregisterMethod header_ "setContextFromActivity" (\() -> setContextFromActivity_impl this)
    jregisterMethod header_ "setContext" (\() -> setContext_impl this)
    jregisterMethod header_ "getResourceId" (\() -> getResourceId_impl this)
    jregisterMethod header_ "addResource" (\() -> addResource_impl this)
    jregisterMethod header_ "containsDuplicate" (\() -> containsDuplicate_impl this)
    jregisterMethod header_ "setResources" (\() -> setResources_impl this)
    jregisterMethod header_ "getResourceAsStream" (\() -> getResourceAsStream_impl this)
    pure this

initFields_ :: ResourceUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.context ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.resources ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.hashMap =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()


getInstance :: IO (ResourceUtil)
getInstance = do
        pure (ResourceUtil.instance_)

new_ :: IO ResourceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResourceUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setLoadingPaths :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setLoadingPaths object_ a1 a2 = jmethod object_ "setLoadingPaths" (\() -> (setLoadingPaths_impl (javaCast object_ :: ResourceUtil))) () a1 a2

setLoadingPaths_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setLoadingPaths_super object_ a1 a2 = (setLoadingPaths_impl (javaCast object_ :: ResourceUtil)) a1 a2

setLoadingPaths_impl :: ResourceUtil -> String -> String -> IO (())
setLoadingPaths_impl this path ext = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED) this "setLoadingPaths")
        pure ()


getContext :: (JavaObjectClass this_) => this_ -> IO (Context.Context)
getContext object_ = jmethod object_ "getContext" (\() -> (getContext_impl (javaCast object_ :: ResourceUtil))) ()

getContext_super :: (JavaObjectClass this_) => this_ -> IO (Context.Context)
getContext_super object_ = (getContext_impl (javaCast object_ :: ResourceUtil))

getContext_impl :: ResourceUtil -> IO (Context.Context)
getContext_impl this = do
        pure ((javaCast (jget (this).context) :: Context.Context))


setContextFromActivity :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setContextFromActivity object_ a1 = jmethod object_ "setContextFromActivity" (\() -> (setContextFromActivity_impl (javaCast object_ :: ResourceUtil))) () a1

setContextFromActivity_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setContextFromActivity_super object_ a1 = (setContextFromActivity_impl (javaCast object_ :: ResourceUtil)) a1

setContextFromActivity_impl :: ResourceUtil -> Activity.Activity -> IO (())
setContextFromActivity_impl this activity = do
        jset (this).context (activity)
        pure ()


setContext :: (JavaObjectClass this_) => this_ -> Context.Context -> IO (())
setContext object_ a1 = jmethod object_ "setContext" (\() -> (setContext_impl (javaCast object_ :: ResourceUtil))) () a1

setContext_super :: (JavaObjectClass this_) => this_ -> Context.Context -> IO (())
setContext_super object_ a1 = (setContext_impl (javaCast object_ :: ResourceUtil)) a1

setContext_impl :: ResourceUtil -> Context.Context -> IO (())
setContext_impl this aContext = do
        jset (this).context (aContext)
        pure ()


getResourceId :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getResourceId object_ a1 = jmethod object_ "getResourceId" (\() -> (getResourceId_impl (javaCast object_ :: ResourceUtil))) () a1

getResourceId_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getResourceId_super object_ a1 = (getResourceId_impl (javaCast object_ :: ResourceUtil)) a1

getResourceId_impl :: ResourceUtil -> String -> IO (Int)
getResourceId_impl this resource = do
        let value = (javaCast (jio (ABHashtable.get ((jget (this).hashMap)) resource)) :: Int)
        when ((jio (DebugFactory.getInstance)) /= (jio (NoDebug.getInstance))) $ do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) resource))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (javaToString value)))))) this "getResourceId")
        pure (value)


addResource :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
addResource object_ a1 a2 = jmethod object_ "addResource" (\() -> (addResource_impl (javaCast object_ :: ResourceUtil))) () a1 a2

addResource_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
addResource_super object_ a1 a2 = (addResource_impl (javaCast object_ :: ResourceUtil)) a1 a2

addResource_impl :: ResourceUtil -> String -> Int -> IO (())
addResource_impl this resource value = do
        when ((jio (DebugFactory.getInstance)) /= (jio (NoDebug.getInstance))) $ do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) resource))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (javaToString value)))))) this "addResource")
            when (jio (ResourceUtil.containsDuplicate this resource value)) $ do
                Control.Monad.void (ForcedLogUtil.log (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Found Duplicate Resource: "))) resource))))) this)
        Control.Monad.void (ABHashtable.put ((jget (this).hashMap)) resource value)
        pure ()


containsDuplicate :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (Bool)
containsDuplicate object_ a1 a2 = jmethod object_ "containsDuplicate" (\() -> (containsDuplicate_impl (javaCast object_ :: ResourceUtil))) () a1 a2

containsDuplicate_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (Bool)
containsDuplicate_super object_ a1 a2 = (containsDuplicate_impl (javaCast object_ :: ResourceUtil)) a1 a2

containsDuplicate_impl :: ResourceUtil -> String -> Int -> IO (Bool)
containsDuplicate_impl this resource value = do
    javaCatchReturn $ do
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) (jget (this).hashMap))
        index <- newIORef ((jlength objectArray))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let integer = (javaCast (jio (ABHashtable.get ((jget (this).hashMap)) (javaCast (jindex objectArray ((jget index))) :: Any.Any))) :: Int)
            when (resource /= (jindex objectArray ((jget index)))) $ do
                when (value /= integer) $ do
                    when (value == integer) $ do
                        javaReturn (True)
        pure (False)


setResources :: (JavaObjectClass this_) => this_ -> Resources.Resources -> IO (())
setResources object_ a1 = jmethod object_ "setResources" (\() -> (setResources_impl (javaCast object_ :: ResourceUtil))) () a1

setResources_super :: (JavaObjectClass this_) => this_ -> Resources.Resources -> IO (())
setResources_super object_ a1 = (setResources_impl (javaCast object_ :: ResourceUtil)) a1

setResources_impl :: ResourceUtil -> Resources.Resources -> IO (())
setResources_impl this resources = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Resource Loader: "))) (jio (Class.getName ((jio (jobjectGetClass resources)))))))))) this "setResources")
        jset (this).resources (resources)
        pure ()


-- throws Exception
getResourceAsStream :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream object_ a1 = jmethod object_ "getResourceAsStream" (\() -> (getResourceAsStream_impl (javaCast object_ :: ResourceUtil))) () a1

getResourceAsStream_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream_super object_ a1 = (getResourceAsStream_impl (javaCast object_ :: ResourceUtil)) a1

getResourceAsStream_impl :: ResourceUtil -> String -> IO (InputStream.InputStream)
getResourceAsStream_impl this resource = do
    javaCatchReturn $ do
        let integer = (javaCast (jio (ABHashtable.get ((jget (this).hashMap)) resource)) :: Int)
        let id = integer
        let resources = ((javaCast (jget (this).resources) :: Resources.Resources))
        inputStream <- (Resources.openRawResource resources id)
        when (inputStream /= javaNull) $ do
            javaReturn (inputStream)
        pure (inputStream)


