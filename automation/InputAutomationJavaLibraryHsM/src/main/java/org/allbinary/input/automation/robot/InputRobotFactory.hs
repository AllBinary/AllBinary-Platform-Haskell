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
-- package org.allbinary.input.automation.robot
module InputRobotFactory where

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
import qualified InputRobotInterface -- same package or java.lang
import qualified InputRobot -- same package or java.lang
import qualified GraphicsDevice -- java.awt.GraphicsDevice
import qualified GraphicsEnvironment -- java.awt.GraphicsEnvironment
import qualified Collection -- java.util.Collection
import qualified Iterator -- java.util.Iterator
import qualified Set -- java.util.Set
import qualified HelpSet -- javax.help.HelpSet
import qualified HelpSetEvent -- javax.help.event.HelpSetEvent
import qualified HelpSetListener -- javax.help.event.HelpSetListener
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified JavaHelpSetNotifier -- org.allbinary.logic.java.help.JavaHelpSetNotifier
import qualified InterfaceUtil -- org.allbinary.logic.java.anyType.InterfaceUtil
import qualified SecuredNativeLibraryInterface -- org.allbinary.logic.system.loader.SecuredNativeLibraryInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data InputRobotFactory = InputRobotFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , helpSetListenerInterface :: IORef (HelpSetListener.HelpSetListener)
    }

instance JavaNull InputRobotFactory where
    javaNull = javaNullRecord "InputRobotFactory"

instance JavaEquals InputRobotFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputRobotFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputRobotFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE inputRobotFactory #-}
inputRobotFactory = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputRobotFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    hashtable <- newIORef javaNull
    helpSetListenerInterface <- newIORef javaNull
    let this = InputRobotFactory header_ logUtil commonStrings hashtable helpSetListenerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "loadLibraries" (\() -> loadLibraries_impl this)
    jregisterMethod header_ "unloadLibraries" (\() -> unloadLibraries_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: InputRobotFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.helpSetListenerInterface (javaNull)
    pure ()


-- throws Exception
getInstance :: IO (InputRobotFactory)
getInstance = do
        pure (InputRobotFactory.inputRobotFactory)

new_ :: IO InputRobotFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputRobotFactory -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            ) $ do
            graphenv <- (GraphicsEnvironment.getLocalGraphicsEnvironment)
            screens <- (GraphicsEnvironment.getScreenDevices graphenv)
            inputRobotInterface <- newIORef (javaNull)
            forM_ [0 .. (jlength screens) - 1] $ \i -> javaIteration (pure ()) $ do
                jset inputRobotInterface ((javaCast (jio (InputRobot.new_1 (jindex screens (i)))) :: InputRobotInterface.InputRobotInterface))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Adding Robot: " ++ (jio (InputRobotInterface.getName ((jget inputRobotInterface))))) this "getRobots")
                Control.Monad.void (ABHashtable.put ((jio (InputRobotFactory.get this))) (jio (InputRobotInterface.getName ((jget inputRobotInterface)))) (jget inputRobotInterface))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Robots: " ++ javaToString (jio (ABHashtable.size ((jget (this).hashtable))))) this "getRobots")
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> HelpSetListener.HelpSetListener -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: InputRobotFactory))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> HelpSetListener.HelpSetListener -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: InputRobotFactory)) a1

addListener_impl :: InputRobotFactory -> HelpSetListener.HelpSetListener -> IO (())
addListener_impl this helpSetListenerInterface = do
        jset (this).helpSetListenerInterface (helpSetListenerInterface)
        pure ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputRobotFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: InputRobotFactory)) a1

add_impl :: InputRobotFactory -> InputRobotInterface.InputRobotInterface -> IO (())
add_impl this inputRobotInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Adding InputRobotInterface: " ++ (jio (InputRobotInterface.getName inputRobotInterface))) this "add")
        Control.Monad.void (ABHashtable.put ((jio (InputRobotFactory.get this))) (jio (InputRobotInterface.getName inputRobotInterface)) inputRobotInterface)
        helpSet <- (InputRobotInterface.getHelpSet inputRobotInterface)
        if ((jget (this).helpSetListenerInterface) /= javaNull) then do
            if (helpSet /= javaNull) then do
                when (Prelude.not (jio (JavaHelpSetNotifier.isNotified helpSet))) $ do
                    helpSetEvent <- (HelpSetEvent.new_3 this helpSet (HelpSetEvent.hELPSET_ADDED))
                    Control.Monad.void (HelpSetListener.helpSetAdded ((jget (this).helpSetListenerInterface)) helpSetEvent)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Null HelpSet For: " ++ (jio (InputRobotInterface.getName inputRobotInterface))) this "add")
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "No HelpSet Listener" this "add")
        pure ()


-- throws Exception
loadLibraries :: (JavaObjectClass this_) => this_ -> IO (())
loadLibraries object_ = jmethod object_ "loadLibraries" (\() -> (loadLibraries_impl (javaCast object_ :: InputRobotFactory))) ()

loadLibraries_super :: (JavaObjectClass this_) => this_ -> IO (())
loadLibraries_super object_ = (loadLibraries_impl (javaCast object_ :: InputRobotFactory))

loadLibraries_impl :: InputRobotFactory -> IO (())
loadLibraries_impl this = do
        set <- (ABHashtable.keySet ((jio (InputRobotFactory.get this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Loading Libraries" this "loadLibraries")
        nameArray <- (Set.toArray set)
        let size = (jlength nameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            inputRobotInterface <- (fmap (\value_ -> javaCast value_ :: InputRobotInterface.InputRobotInterface) (InputRobotFactory.get ((jio (InputRobotFactory.getInstance))) (javaCast (jindex nameArray (index)) :: String)))
            Control.Monad.void (InputRobotFactory.loadLibrary inputRobotInterface)
        pure ()


-- throws Exception
-- Java overload of loadLibraries with a different parameter count: give it a different name
loadLibraries :: Collection.Collection -> IO (())
loadLibraries collection = do
        logUtil <- (LogUtil.getInstance)
        Control.Monad.void (LogUtil.putF logUtil "Loading Libraries" "InputRobotFactory" "loadLibraries")
        iterator <- (Collection.iterator collection)
        fix $ \loop -> when (jio (Iterator.hasNext iterator)) $ javaIteration (loop) $ do
            Control.Monad.void (InputRobotFactory.loadLibrary (javaCast (jio (Iterator.next iterator)) :: InputRobotInterface.InputRobotInterface))
        pure ()


-- throws Exception
loadLibrary :: InputRobotInterface.InputRobotInterface -> IO (())
loadLibrary inputRobotInterface = do
        logUtil <- (LogUtil.getInstance)
        when (jio (InterfaceUtil.isImplemented ("SecuredNativeLibraryInterface") inputRobotInterface)) $ do
            Control.Monad.void (LogUtil.putF logUtil ("Loading Library: " ++ (jio (InputRobotInterface.getName inputRobotInterface))) "InputRobotFactory" "loadLibraries")
            let securedNativeLibraryInterface = (javaCast inputRobotInterface :: SecuredNativeLibraryInterface.SecuredNativeLibraryInterface)
            Control.Monad.void (SecuredNativeLibraryInterface.load securedNativeLibraryInterface)
        pure ()


-- throws Exception
unloadLibraries :: (JavaObjectClass this_) => this_ -> IO (())
unloadLibraries object_ = jmethod object_ "unloadLibraries" (\() -> (unloadLibraries_impl (javaCast object_ :: InputRobotFactory))) ()

unloadLibraries_super :: (JavaObjectClass this_) => this_ -> IO (())
unloadLibraries_super object_ = (unloadLibraries_impl (javaCast object_ :: InputRobotFactory))

unloadLibraries_impl :: InputRobotFactory -> IO (())
unloadLibraries_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Unloading Libraries" this "unloadLibraries")
        set <- (ABHashtable.keySet ((jio (InputRobotFactory.get this))))
        inputRobotInterface <- newIORef (javaNull)
        inputRobotArray <- (Set.toArray set)
        let size = (jlength inputRobotArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (InputRobotFactory.get this (javaCast (jindex inputRobotArray (index)) :: String))
            jset inputRobotInterface (assignedValue)
            when (jio (InterfaceUtil.isImplemented ("SecuredNativeLibraryInterface") (jget inputRobotInterface))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Unloading Library: " ++ (jio (InputRobotInterface.getName ((jget inputRobotInterface))))) this "unloadLibraries")
                let securedNativeLibraryInterface = (javaCast (jget inputRobotInterface) :: SecuredNativeLibraryInterface.SecuredNativeLibraryInterface)
                Control.Monad.void (SecuredNativeLibraryInterface.unload securedNativeLibraryInterface)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InputRobotFactory))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
get_super object_ = (get_impl (javaCast object_ :: InputRobotFactory))

get_impl :: InputRobotFactory -> IO (ABHashtable.ABHashtable)
get_impl this = do
        pure ((jget (this).hashtable))


-- Java overload of get with a different parameter count: give it a different name
get :: (JavaObjectClass this_) => this_ -> String -> IO (InputRobotInterface.InputRobotInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InputRobotFactory))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputRobotInterface.InputRobotInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: InputRobotFactory)) a1

get_impl :: InputRobotFactory -> String -> IO (InputRobotInterface.InputRobotInterface)
get_impl this name = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Getting Robot: " ++ name) this "getRobots")
        pure ((javaCast (jio (ABHashtable.get ((jget (this).hashtable)) name)) :: InputRobotInterface.InputRobotInterface))


