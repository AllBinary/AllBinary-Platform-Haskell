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
-- package org.allbinary.logic.string.regex.replace
module Replace where

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
import qualified BasicArrayList -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified J2SEUtil -- org.allbinary.J2SEUtil
import qualified AppUrlGlobals -- org.allbinary.globals.AppUrlGlobals
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes

data Replace = Replace
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , j2seUtil :: IORef (J2SEUtil.J2SEUtil)
    , rEPLACERS_ :: IORef (String)
    , aLL :: IORef (String)
    , fOUND_KEY :: IORef (String)
    , hashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull Replace where
    javaNull = javaNullRecord "Replace"

instance JavaEquals Replace where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Replace where
    (==) = jrecordEquals

instance JavaObjectClass Replace where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Replace
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    j2seUtil <- newIORef javaNull
    rEPLACERS_ <- newIORef ""
    aLL <- newIORef ""
    fOUND_KEY <- newIORef ""
    hashMap <- newIORef javaNull
    let this = Replace header_ logUtil j2seUtil rEPLACERS_ aLL fOUND_KEY hashMap
    jregisterLevel header_ this
    jregisterMethod header_ "all" (\() -> all_impl this)
    jregisterMethod header_ "upTo" (\() -> upTo_impl this)
    jregisterMethod header_ "line" (\() -> line_impl this)
    pure this

initFields_ :: Replace -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.j2seUtil =<< (J2SEUtil.getInstance)
    jset this.rEPLACERS_ ("Replacers: ")
    jset this.aLL ("all")
    jset this.fOUND_KEY ("found key total: ")
    jset this.hashMap (javaNull)
    pure ()

new_2 :: String -> String -> IO Replace
new_2 key value = do
    this <- newRecord_
    init_2 this key value
    pure this

init_2 :: Replace -> String -> String -> IO ()
init_2 this key value = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).hashMap (assignedValue)
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) (jarrayFromList [key]) (jarrayFromList [value]))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: JavaArray (String) -> JavaArray (String) -> IO Replace
new_2 keys values = do
    this <- newRecord_
    init_2 this keys values
    pure this

init_2 :: Replace -> JavaArray (String) -> JavaArray (String) -> IO ()
init_2 this keys values = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).hashMap (assignedValue)
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) keys values)
        pure ()

new_1 :: HashMap.HashMap -> IO Replace
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: Replace -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).hashMap (hashMap)
        pure ()


all :: (JavaObjectClass this_) => this_ -> String -> IO (String)
all object_ a1 = jmethod object_ "all" (\() -> (all_impl (javaCast object_ :: Replace))) () a1

all_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
all_super object_ a1 = (all_impl (javaCast object_ :: Replace)) a1

all_impl :: Replace -> String -> IO (String)
all_impl this replace = do
        (Replace.upTo this replace ((-2147483648) :: Int))


upTo :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (String)
upTo object_ a1 a2 = jmethod object_ "upTo" (\() -> (upTo_impl (javaCast object_ :: Replace))) () a1 a2

upTo_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (String)
upTo_super object_ a1 a2 = (upTo_impl (javaCast object_ :: Replace)) a1 a2

upTo_impl :: Replace -> String -> Int -> IO (String)
upTo_impl this replace total = do
        replace <- newIORef replace
        newStringBuffer <- (StringMaker.new_)
        totalNumberOfReplaces <- newIORef (0)
        keys <- newIORef (javaNull)
        values <- newIORef (javaNull)
        keyArray <- (J2SEUtil.getHashMapAsArray ((jget (this).j2seUtil)) (jget (this).hashMap))
        let size = (jlength keyArray)
        forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
            jset keys ((javaCast (jindex keyArray (index2)) :: JavaArray (String)))
            jset values ((javaCast (jio (HashMap.get ((jget (this).hashMap)) (jget keys))) :: JavaArray (String)))
            foundTotal <- newIORef (0)
            index <- newIORef (0)
            nextKey <- newIORef ("")
            end <- newIORef (0)
            nextSecondKey <- newIORef ("")
            begin2 <- newIORef (0)
            fix $ \loop -> when ((jget index) < (Prelude.length (jget replace))) $ javaIteration (loop) $ do
                let begin = (jstringIndexOf (jget replace) (jindex ((jget keys)) (0)) (jget index))
                if (begin /= (Prelude.negate 1)) then do
                    jset foundTotal ((jget foundTotal) + 1)
                    when (((jget foundTotal) `rem` 100) == 0) $ do
                        Control.Monad.void (putStrLn (javaToString ((jget (this).fOUND_KEY) ++ javaToString (jget foundTotal))))
                    jset nextKey ((jindex ((jget keys)) (0)))
                    jset end ((begin + (Prelude.length (jget nextKey))))
                    Control.Monad.void (StringMaker.delete newStringBuffer 0 (jio (StringMaker.length newStringBuffer)))
                    Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take ((begin) - (0)) (Prelude.drop (0) (jget replace))))
                    Control.Monad.void (StringMaker.append newStringBuffer (jindex ((jget values)) (0)))
                    assignedValue <- (StringMaker.length newStringBuffer)
                    jset index (assignedValue)
                    Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take (((Prelude.length (jget replace))) - ((jget end))) (Prelude.drop ((jget end)) (jget replace))))
                    assignedValue <- (StringMaker.toString newStringBuffer)
                    jset replace (assignedValue)
                    when ((jlength (jget keys)) > 1) $ do
                        jset nextSecondKey ((jindex ((jget keys)) (1)))
                        jset begin2 ((jstringIndexOf (jget replace) (jget nextSecondKey) (jget index)))
                        when ((jget begin2) /= (Prelude.negate 1)) $ do
                            let end2 = ((jget begin2) + (Prelude.length (jget nextSecondKey)))
                            Control.Monad.void (StringMaker.delete newStringBuffer 0 (jio (StringMaker.length newStringBuffer)))
                            Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take (((jget begin2)) - (0)) (Prelude.drop (0) (jget replace))))
                            Control.Monad.void (StringMaker.append newStringBuffer (jindex ((jget values)) (1)))
                            assignedValue <- (StringMaker.length newStringBuffer)
                            jset index (assignedValue)
                            Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take (((Prelude.length (jget replace))) - (end2)) (Prelude.drop (end2) (jget replace))))
                            assignedValue <- (StringMaker.toString newStringBuffer)
                            jset replace (assignedValue)
                    jset totalNumberOfReplaces ((jget totalNumberOfReplaces) + 1)
                    when ((total /= ((-2147483648) :: Int)) && ((jget totalNumberOfReplaces) >= total)) $ do
                        throwIO JavaBreak
                else do
                    throwIO JavaBreak
        when ((jget totalNumberOfReplaces) > 0) $ do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).rEPLACE))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Total Number Of Replaces: " ++ javaToString (jget totalNumberOfReplaces)) this (jget (this).aLL))
        pure ((jget replace))


line :: (JavaObjectClass this_) => this_ -> String -> IO (String)
line object_ a1 = jmethod object_ "line" (\() -> (line_impl (javaCast object_ :: Replace))) () a1

line_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
line_super object_ a1 = (line_impl (javaCast object_ :: Replace)) a1

line_impl :: Replace -> String -> IO (String)
line_impl this replace = do
        replace <- newIORef replace
        newStringBuffer <- (StringMaker.new_)
        totalNumberOfReplaces <- newIORef (0)
        key <- newIORef ("")
        value <- newIORef ("")
        keyArray <- (J2SEUtil.getHashMapAsArray ((jget (this).j2seUtil)) (jget (this).hashMap))
        let size = (jlength keyArray)
        forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
            jset key ((javaCast (jindex keyArray (index2)) :: String))
            jset value ((javaCast (jio (HashMap.get ((jget (this).hashMap)) (jget key))) :: String))
            index <- newIORef (0)
            fix $ \loop -> when ((jget index) < (Prelude.length (jget replace))) $ javaIteration (loop) $ do
                Control.Monad.void (StringMaker.delete newStringBuffer 0 (jio (StringMaker.length newStringBuffer)))
                let begin = (jstringIndexOf (jget replace) (jget key) (jget index))
                if (begin /= (Prelude.negate 1)) then do
                    Control.Monad.void (putStrLn (javaToString (jget (this).fOUND_KEY)))
                    let end = ((jstringIndexOf (jget replace) '\n' (begin + (Prelude.length (jget key)))) + 1)
                    when (end >= 0) $ do
                        Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take ((begin) - (0)) (Prelude.drop (0) (jget replace))))
                        assignedValue <- (StringMaker.length newStringBuffer)
                        jset index (assignedValue)
                        Control.Monad.void (StringMaker.append newStringBuffer (Prelude.take (((Prelude.length (jget replace))) - (end)) (Prelude.drop (end) (jget replace))))
                        assignedValue <- (StringMaker.toString newStringBuffer)
                        jset replace (assignedValue)
                        jset totalNumberOfReplaces ((jget totalNumberOfReplaces) + 1)
                else do
                    throwIO JavaBreak
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).rEPLACE))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Total Number Of Replaces: " ++ javaToString (jget totalNumberOfReplaces)) this (jget (this).aLL))
        pure ((jget replace))


main :: JavaArray (String) -> IO (())
main args = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            appUrlGlobals <- (AppUrlGlobals.new_)
            Control.Monad.void (AppUrlGlobals.setWebappPath appUrlGlobals "G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools")
            Control.Monad.void (URLGLOBALS.init (javaCast appUrlGlobals))
            testString <- newIORef ("\"super gun\" big tank \"goodgunriflegun")
            replace <- (new_2 "gun" "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz")
            Control.Monad.void (putStrLn (javaToString ("Old String: " ++ (jget testString))))
            assignedValue <- (Replace.all replace (jget testString))
            jset testString (assignedValue)
            Control.Monad.void (putStrLn (javaToString ("New String: " ++ (jget testString))))
            replaceCat <- (new_2 "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz" (jget (stringUtil).eMPTY_STRING))
            assignedValue <- (Replace.all replaceCat (jget testString))
            jset testString (assignedValue)
            Control.Monad.void (putStrLn (javaToString ("New String: " ++ (jget testString))))
        pure ()


