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
-- package org.allbinary.logic.java.jar
module JarUtil where

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
import qualified IOException -- java.io.IOException
import qualified URL -- java.net.URL
import qualified URLConnection -- java.net.URLConnection
import qualified JarEntry -- java.util.jar.JarEntry
import qualified JarInputStream -- java.util.jar.JarInputStream

data JarUtil = JarUtil
    { header_ :: JavaHeader
    , jarURL :: IORef (URL.URL)
    }

instance JavaNull JarUtil where
    javaNull = javaNullRecord "JarUtil"

instance JavaEquals JarUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JarUtil where
    (==) = jrecordEquals

instance JavaObjectClass JarUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JarUtil
newRecord_ = do
    header_ <- newJavaHeader
    jarURL <- newIORef javaNull
    let this = JarUtil header_ jarURL
    jregisterLevel header_ this
    jregisterMethod header_ "show" (\() -> show_impl this)
    pure this

initFields_ :: JarUtil -> IO ()
initFields_ this = do
    jset this.jarURL (javaNull)
    pure ()

new_1 :: URL.URL -> IO JarUtil
new_1 jarURL = do
    this <- newRecord_
    init_1 this jarURL
    pure this

init_1 :: JarUtil -> URL.URL -> IO ()
init_1 this jarURL = do
        initFields_ this
        jset (this).jarURL (jarURL)
        pure ()


show :: (JavaObjectClass this_) => this_ -> IO (())
show object_ = jmethod object_ "show" (\() -> (show_impl (javaCast object_ :: JarUtil))) ()

show_super :: (JavaObjectClass this_) => this_ -> IO (())
show_super object_ = (show_impl (javaCast object_ :: JarUtil))

show_impl :: JarUtil -> IO (())
show_impl this = do
        cache <- newIORef ((jnewArray (1024) 0))
        handle (\(ex :: JavaException) -> do
            Control.Monad.void (putStrLn (javaToString ex))
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show ex))
            ) $ do
            conn <- (URL.openConnection ((jget (this).jarURL)))
            jis <- (JarInputStream.new_1 (jio (URLConnection.getInputStream conn)))
            fix $ \loop -> when True $ javaIteration (loop) $ do
                entry <- (JarInputStream.getNextJarEntry jis)
                if (entry /= javaNull) then do
                    when (Prelude.not (jio (JarEntry.isDirectory entry))) $ do
                        offset <- newIORef (0)
                        i <- newIORef (0)
                        fix $ \loop -> when (((jassign i ((jio (JarInputStream.read jis (jget cache) (jget offset) ((jlength (jget cache)) - (jget offset))))))) /= (Prelude.negate 1)) $ javaIteration (loop) $ do
                            jset offset (((jget offset) + (jget i)))
                            when ((jget offset) >= (jlength (jget cache))) $ do
                                let newcache = (jnewArray (((jlength (jget cache)) + 1024)) 0)
                                Control.Monad.void (jarraycopy (jget cache) 0 newcache 0 (jlength (jget cache)))
                                jset cache (newcache)
                        let tmp = (jnewArray ((jget offset)) 0)
                        Control.Monad.void (jarraycopy (jget cache) 0 tmp 0 (jget offset))
                        Control.Monad.void (putStrLn (javaToString (jio (JarEntry.getName entry))))
                else do
                    throwIO JavaBreak
        pure ()


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (JarUtil.show ((jio (new_1 (jio (URL.new_1 "file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar"))))))
        pure ()


