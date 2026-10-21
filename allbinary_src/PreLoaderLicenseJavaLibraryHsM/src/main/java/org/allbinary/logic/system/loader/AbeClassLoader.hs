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
-- package org.allbinary.logic.system.loader
module AbeClassLoader (module AbeClassLoader, module ClassLoader) where

import ClassLoader hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, findLoadedClass1, findLoadedClass1_super, findLoadedClass1_impl, loadClass, loadClass_super, loadClass_impl, loadClass, loadClass_super, loadClass_impl, loadClassBytesFromFile, loadClassBytesFromFile_super, loadClassBytesFromFile_impl, oldLoadClass, oldLoadClass_super, oldLoadClass_impl, logUtil, abCryptUtil, lOAD_CLASS, classes, eNCRYPTED_EXTENSION, pATH, key)
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
import qualified Class -- same package or java.lang
import qualified NoClassDefFoundError -- same package or java.lang
import qualified FileInputStream -- java.io.FileInputStream
import qualified IOException -- java.io.IOException
import qualified Map -- java.util.Map
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogBuffer -- org.allbinary.logic.communication.log.LogBuffer
import qualified LogFactory -- org.allbinary.logic.communication.log.LogFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbCryptUtil -- org.allbinary.logic.system.security.AbCryptUtil
import qualified ClassLoader

data AbeClassLoader = AbeClassLoader
    { header_ :: JavaHeader
    , base :: ClassLoader.ClassLoader
    , logUtil :: IORef (LogUtil.LogUtil)
    , abCryptUtil :: IORef (AbCryptUtil.AbCryptUtil)
    , lOAD_CLASS :: IORef (String)
    , eNCRYPTED_EXTENSION :: IORef (String)
    , key :: IORef (String)
    }

instance JavaNull AbeClassLoader where
    javaNull = javaNullRecord "AbeClassLoader"

instance JavaEquals AbeClassLoader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeClassLoader where
    (==) = jrecordEquals

instance JavaObjectClass AbeClassLoader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE classes #-}
classes = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: Map.Map) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

{-# NOINLINE pATH #-}
pATH = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO AbeClassLoader
newRecord_ = do
    base <- ClassLoader.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abCryptUtil <- newIORef javaNull
    lOAD_CLASS <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    key <- newIORef ""
    let this = AbeClassLoader header_ base logUtil abCryptUtil lOAD_CLASS eNCRYPTED_EXTENSION key
    jregisterLevel header_ this
    jregisterMethod header_ "findLoadedClass1" (\() -> findLoadedClass1_impl this)
    jregisterMethod header_ "loadClass" (\() -> loadClass_impl this)
    jregisterMethod header_ "loadClass" (\() -> loadClass_impl this)
    jregisterMethod header_ "loadClassBytesFromFile" (\() -> loadClassBytesFromFile_impl this)
    jregisterMethod header_ "oldLoadClass" (\() -> oldLoadClass_impl this)
    pure this

initFields_ :: AbeClassLoader -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abCryptUtil =<< (AbCryptUtil.getInstance)
    jset this.lOAD_CLASS ("loadClass")
    jset this.eNCRYPTED_EXTENSION ((javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP) ++ "abc"))
    jset this.key (javaNull)
    pure ()

new_2 :: ClassLoader.ClassLoader -> String -> IO AbeClassLoader
new_2 parent key = do
    this <- newRecord_
    init_2 this parent key
    pure this

init_2 :: AbeClassLoader -> ClassLoader.ClassLoader -> String -> IO ()
init_2 this parent key = do
        ClassLoader.init_1 this.base (parent)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).key (key)
        jset AbeClassLoader.pATH ((javaToString (jio (getWebappPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) ++ "WEB-INF/classes/"))
        pure ()


findLoadedClass1 :: (JavaObjectClass this_) => this_ -> String -> IO (Class.Class)
findLoadedClass1 object_ a1 = jmethod object_ "findLoadedClass1" (\() -> (findLoadedClass1_impl (javaCast object_ :: AbeClassLoader))) () a1

findLoadedClass1_super :: (JavaObjectClass this_) => this_ -> String -> IO (Class.Class)
findLoadedClass1_super object_ a1 = (findLoadedClass1_impl (javaCast object_ :: AbeClassLoader)) a1

findLoadedClass1_impl :: AbeClassLoader -> String -> IO (Class.Class)
findLoadedClass1_impl this name = do
        pure ((javaCast (jio (get ((jget AbeClassLoader.classes)) name)) :: Class.Class))


-- throws ClassNotFoundException
loadClass :: (JavaObjectClass this_) => this_ -> String -> IO (Class.Class)
loadClass object_ a1 = jmethod object_ "loadClass" (\() -> (loadClass_impl (javaCast object_ :: AbeClassLoader))) () a1

loadClass_super :: (JavaObjectClass this_) => this_ -> String -> IO (Class.Class)
loadClass_super object_ a1 = (loadClass_impl (javaCast object_ :: AbeClassLoader)) a1

loadClass_impl :: AbeClassLoader -> String -> IO (Class.Class)
loadClass_impl this name = do
        (AbeClassLoader.loadClass this name False)


-- throws ClassNotFoundException
-- Java overload of loadClass with a different parameter count: give it a different name
loadClass :: (JavaObjectClass this_) => this_ -> String -> Bool -> IO (Class.Class)
loadClass object_ a1 a2 = jmethod object_ "loadClass" (\() -> (loadClass_impl (javaCast object_ :: AbeClassLoader))) () a1 a2

loadClass_super :: (JavaObjectClass this_) => this_ -> String -> Bool -> IO (Class.Class)
loadClass_super object_ a1 a2 = (loadClass_impl (javaCast object_ :: AbeClassLoader)) a1 a2

loadClass_impl :: AbeClassLoader -> String -> Bool -> IO (Class.Class)
loadClass_impl this name resolve = do
    javaCatchReturn $ do
        loadedWith <- newIORef ("findLoadedClass1")
        logBuffer <- (LogBuffer.new_)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                Control.Monad.void (LogBuffer.logAll logBuffer)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((("Failure loading: " ++ name) ++ "\nwith: ") ++ (jget loadedWith)) this (jget (this).lOAD_CLASS) e)
            pure (javaNull)
            ) $ do
            myClass <- newIORef =<< (AbeClassLoader.findLoadedClass1 this name)
            if ((jget myClass) == javaNull) then do
                handle (\(e :: JavaException) -> do
                    Control.Monad.void (LogBuffer.add logBuffer (jio (LogFactory.getInstance ((("Failed to Load Class: " ++ name) ++ "\nwith: ") ++ (jget loadedWith)) this (jget (this).lOAD_CLASS) e)))
                    ) $ do
                    jset loadedWith ("super.loadClass")
                    normalClass <- (ClassLoader.loadClass_super this.base name resolve)
                    when (normalClass /= javaNull) $ do
                        javaReturn (normalClass)
                classBytes <- (AbeClassLoader.loadClassBytesFromFile this name)
                when (classBytes == javaNull) $ do
                    javaThrow ((JavaException "ClassNotFoundException" ((("My Bytes not loaded for: " ++ name) ++ "\nwith: ") ++ "loadClassBytes")))
                assignedValue <- (ClassLoader.defineClass this name classBytes 0 (jlength classBytes))
                jset myClass (assignedValue)
                when ((jget myClass) == javaNull) $ do
                    javaThrow ((JavaException "ClassNotFoundException" ((("My Class Not Defineable for: " ++ name) ++ "\nwith: ") ++ "loadClassBytes")))
                Control.Monad.void (put ((jget AbeClassLoader.classes)) name (jget myClass))
            else do
                Control.Monad.void (LogBuffer.add logBuffer (jio (LogFactory.getInstanceF ((("Already Loaded: " ++ name) ++ "\nwith: ") ++ (jget loadedWith)) this (jget (this).lOAD_CLASS))))
            Control.Monad.void (ClassLoader.resolveClass this (jget myClass))
            pure ((jget myClass))


loadClassBytesFromFile :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int8))
loadClassBytesFromFile object_ a1 = jmethod object_ "loadClassBytesFromFile" (\() -> (loadClassBytesFromFile_impl (javaCast object_ :: AbeClassLoader))) () a1

loadClassBytesFromFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int8))
loadClassBytesFromFile_super object_ a1 = (loadClassBytesFromFile_impl (javaCast object_ :: AbeClassLoader)) a1

loadClassBytesFromFile_impl :: AbeClassLoader -> String -> IO (JavaArray (Int8))
loadClassBytesFromFile_impl this name = do
        in_ <- newIORef (javaNull)
        cname <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((("(Before LogBuffer Output) Failure loading Encrypted: " ++ name) ++ " File: ") ++ (jget cname)) "AbeClassLoader" "loadClassBytes" e)
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget in_))
            ) $ do
            jset cname (((javaToString (jget AbeClassLoader.pATH) ++ (jstringReplace name '.' (jget ((jio (AbPathData.getInstance))).sEPARATORCHAR))) ++ (jget (this).eNCRYPTED_EXTENSION)))
            assignedValue <- (FileInputStream.new_1 (jget cname))
            jset in_ (assignedValue)
            decrypted <- (AbCryptUtil.decrypt ((jget (this).abCryptUtil)) (jget in_) (jget (this).key))
            pure (decrypted)
        pure (javaNull)


-- throws ClassNotFoundException
oldLoadClass :: (JavaObjectClass this_) => this_ -> String -> Bool -> IO (Class.Class)
oldLoadClass object_ a1 a2 = jmethod object_ "oldLoadClass" (\() -> (oldLoadClass_impl (javaCast object_ :: AbeClassLoader))) () a1 a2

oldLoadClass_super :: (JavaObjectClass this_) => this_ -> String -> Bool -> IO (Class.Class)
oldLoadClass_super object_ a1 a2 = (oldLoadClass_impl (javaCast object_ :: AbeClassLoader)) a1 a2

oldLoadClass_impl :: AbeClassLoader -> String -> Bool -> IO (Class.Class)
oldLoadClass_impl this name resolve = do
    javaCatchReturn $ do
        loadedWith <- newIORef ("findLoadedClass1")
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Failure loading: " ++ name) "AbeClassLoader" (jget (this).lOAD_CLASS) e)
            pure (javaNull)
            ) $ do
            myClass <- newIORef =<< (AbeClassLoader.findLoadedClass1 this name)
            if ((jget myClass) == javaNull) then do
                handle (\(e :: JavaException) -> do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADER))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Failed Loaded Class: " ++ name) ++ " with: ") ++ (jget loadedWith)) this (jget (this).lOAD_CLASS))
                    ) $ do
                    jset loadedWith ("super.loadClass")
                    normalClass <- (ClassLoader.loadClass_super this.base name resolve)
                    when (normalClass /= javaNull) $ do
                        javaReturn (normalClass)
                jset loadedWith ("loadClassBytes")
                classBytes <- (AbeClassLoader.loadClassBytesFromFile this name)
                when (classBytes == javaNull) $ do
                    javaThrow ((JavaException "ClassNotFoundException" ("Bytes not loaded for: " ++ name)))
                assignedValue <- (ClassLoader.defineClass this name classBytes 0 (jlength classBytes))
                jset myClass (assignedValue)
                when ((jget myClass) == javaNull) $ do
                    javaThrow ((JavaException "ClassNotFoundException" ("Class Not Defineable for: " ++ name)))
                Control.Monad.void (put ((jget AbeClassLoader.classes)) name (jget myClass))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Already Loaded: " ++ name) ++ " with: ") ++ (jget loadedWith)) this (jget (this).lOAD_CLASS))
            Control.Monad.void (ClassLoader.resolveClass this (jget myClass))
            pure ((jget myClass))


