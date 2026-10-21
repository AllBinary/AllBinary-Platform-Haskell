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
module CurrentlyPressedTouchButtonSingletonDebug (module CurrentlyPressedTouchButtonSingletonDebug, module CurrentlyPressedTouchButtonSingleton) where

import CurrentlyPressedTouchButtonSingleton hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, appendTouchButtonInput, appendTouchButtonInput_super, appendTouchButtonInput_impl, append, append_super, append_impl, clearLog, clearLog_super, clearLog_impl, releaseAndNotFired, releaseAndNotFired_super, releaseAndNotFired_impl, releaseAndFired, releaseAndFired_super, releaseAndFired_impl, releaseAndFired2, releaseAndFired2_super, releaseAndFired2_impl, releaseAndFiredAssociated, releaseAndFiredAssociated_super, releaseAndFiredAssociated_impl, pressedAndFired, pressedAndFired_super, pressedAndFired_impl, pressedAndNotFired, pressedAndNotFired_super, pressedAndNotFired_impl, removeAt, removeAt_super, removeAt_impl, remove, remove_super, remove_impl, add, add_super, add_impl, toString, toString_super, toString_impl, instanceC, string, listString, append, pRESSED_AND_FIRED, pRESSED_AND_NOT_FIRED, aSSOCIATED_RELEASED_AND_FIRED, rELEASED_AND_FIRED, rELEASED_AND_FIRED_2, rELEASED_AND_NOT_FIRED)
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
import qualified TouchButtonInput -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CurrentlyPressedTouchButtonSingleton

data CurrentlyPressedTouchButtonSingletonDebug = CurrentlyPressedTouchButtonSingletonDebug
    { header_ :: JavaHeader
    , base :: CurrentlyPressedTouchButtonSingleton.CurrentlyPressedTouchButtonSingleton
    , string :: IORef (String)
    , listString :: IORef (String)
    , append :: IORef (String)
    , pRESSED_AND_FIRED :: IORef (String)
    , pRESSED_AND_NOT_FIRED :: IORef (String)
    , aSSOCIATED_RELEASED_AND_FIRED :: IORef (String)
    , rELEASED_AND_FIRED :: IORef (String)
    , rELEASED_AND_FIRED_2 :: IORef (String)
    , rELEASED_AND_NOT_FIRED :: IORef (String)
    }

instance JavaNull CurrentlyPressedTouchButtonSingletonDebug where
    javaNull = javaNullRecord "CurrentlyPressedTouchButtonSingletonDebug"

instance JavaEquals CurrentlyPressedTouchButtonSingletonDebug where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CurrentlyPressedTouchButtonSingletonDebug where
    (==) = jrecordEquals

instance JavaObjectClass CurrentlyPressedTouchButtonSingletonDebug where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO CurrentlyPressedTouchButtonSingletonDebug
newRecord_ = do
    base <- CurrentlyPressedTouchButtonSingleton.newRecord_
    let header_ = base.header_
    string <- newIORef ""
    listString <- newIORef ""
    append <- newIORef ""
    pRESSED_AND_FIRED <- newIORef ""
    pRESSED_AND_NOT_FIRED <- newIORef ""
    aSSOCIATED_RELEASED_AND_FIRED <- newIORef ""
    rELEASED_AND_FIRED <- newIORef ""
    rELEASED_AND_FIRED_2 <- newIORef ""
    rELEASED_AND_NOT_FIRED <- newIORef ""
    let this = CurrentlyPressedTouchButtonSingletonDebug header_ base string listString append pRESSED_AND_FIRED pRESSED_AND_NOT_FIRED aSSOCIATED_RELEASED_AND_FIRED rELEASED_AND_FIRED rELEASED_AND_FIRED_2 rELEASED_AND_NOT_FIRED
    jregisterLevel header_ this
    jregisterMethod header_ "appendTouchButtonInput" (\() -> appendTouchButtonInput_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "clearLog" (\() -> clearLog_impl this)
    jregisterMethod header_ "releaseAndNotFired" (\() -> releaseAndNotFired_impl this)
    jregisterMethod header_ "releaseAndFired" (\() -> releaseAndFired_impl this)
    jregisterMethod header_ "releaseAndFired2" (\() -> releaseAndFired2_impl this)
    jregisterMethod header_ "releaseAndFiredAssociated" (\() -> releaseAndFiredAssociated_impl this)
    jregisterMethod header_ "pressedAndFired" (\() -> pressedAndFired_impl this)
    jregisterMethod header_ "pressedAndNotFired" (\() -> pressedAndNotFired_impl this)
    jregisterMethod header_ "removeAt" (\() -> removeAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CurrentlyPressedTouchButtonSingletonDebug -> IO ()
initFields_ this = do
    jset this.string ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.listString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.append ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.pRESSED_AND_FIRED ("pressed & fired")
    jset this.pRESSED_AND_NOT_FIRED ("pressed in button but not fired")
    jset this.aSSOCIATED_RELEASED_AND_FIRED ("assoc. rel & fired")
    jset this.rELEASED_AND_FIRED ("rel & fired 1")
    jset this.rELEASED_AND_FIRED_2 ("rel & fired 2")
    jset this.rELEASED_AND_NOT_FIRED ("rel & not fired")
    pure ()

new_ :: IO CurrentlyPressedTouchButtonSingletonDebug
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CurrentlyPressedTouchButtonSingletonDebug -> IO ()
init_ this = do
    CurrentlyPressedTouchButtonSingleton.init_ this.base
    initFields_ this


getInstance :: IO (CurrentlyPressedTouchButtonSingleton.CurrentlyPressedTouchButtonSingleton)
getInstance = do
        pure ((javaCast CurrentlyPressedTouchButtonSingletonDebug.instanceC :: CurrentlyPressedTouchButtonSingleton.CurrentlyPressedTouchButtonSingleton))


appendTouchButtonInput :: (JavaObjectClass this_) => this_ -> String -> TouchButtonInput.TouchButtonInput -> IO (())
appendTouchButtonInput object_ a1 a2 = jmethod object_ "appendTouchButtonInput" (\() -> (appendTouchButtonInput_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1 a2

appendTouchButtonInput_super :: (JavaObjectClass this_) => this_ -> String -> TouchButtonInput.TouchButtonInput -> IO (())
appendTouchButtonInput_super object_ a1 a2 = (appendTouchButtonInput_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1 a2

appendTouchButtonInput_impl :: CurrentlyPressedTouchButtonSingletonDebug -> String -> TouchButtonInput.TouchButtonInput -> IO (())
appendTouchButtonInput_impl this append touchButtonInput = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (TouchButtonInput.toString touchButtonInput)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer append)
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).append (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure ()


append :: (JavaObjectClass this_) => this_ -> String -> IO (())
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

append_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
append_super object_ a1 = (append_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

append_impl :: CurrentlyPressedTouchButtonSingletonDebug -> String -> IO (())
append_impl this append = do
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).append)))) append))))
        jset (this).append (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure ()


clearLog :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
clearLog object_ a1 a2 = jmethod object_ "clearLog" (\() -> (clearLog_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1 a2

clearLog_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
clearLog_super object_ a1 a2 = (clearLog_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1 a2

clearLog_impl :: CurrentlyPressedTouchButtonSingletonDebug -> Int -> Int -> IO (())
clearLog_impl this x y = do
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (GPoint.toStringStatic x y 0))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))))
        jset (this).append (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure ()


releaseAndNotFired :: (JavaObjectClass this_) => this_ -> IO (())
releaseAndNotFired object_ = jmethod object_ "releaseAndNotFired" (\() -> (releaseAndNotFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) ()

releaseAndNotFired_super :: (JavaObjectClass this_) => this_ -> IO (())
releaseAndNotFired_super object_ = (releaseAndNotFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))

releaseAndNotFired_impl :: CurrentlyPressedTouchButtonSingletonDebug -> IO (())
releaseAndNotFired_impl this = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.append this (jget (this).rELEASED_AND_NOT_FIRED))
        pure ()


releaseAndFired :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired object_ a1 = jmethod object_ "releaseAndFired" (\() -> (releaseAndFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

releaseAndFired_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired_super object_ a1 = (releaseAndFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

releaseAndFired_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput this (jget (this).rELEASED_AND_FIRED) touchButtonInput)
        pure ()


releaseAndFired2 :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired2 object_ a1 = jmethod object_ "releaseAndFired2" (\() -> (releaseAndFired2_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

releaseAndFired2_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired2_super object_ a1 = (releaseAndFired2_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

releaseAndFired2_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFired2_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput this (jget (this).rELEASED_AND_FIRED_2) touchButtonInput)
        pure ()


releaseAndFiredAssociated :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFiredAssociated object_ a1 = jmethod object_ "releaseAndFiredAssociated" (\() -> (releaseAndFiredAssociated_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

releaseAndFiredAssociated_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFiredAssociated_super object_ a1 = (releaseAndFiredAssociated_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

releaseAndFiredAssociated_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
releaseAndFiredAssociated_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput this (jget (this).aSSOCIATED_RELEASED_AND_FIRED) touchButtonInput)
        pure ()


pressedAndFired :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndFired object_ a1 = jmethod object_ "pressedAndFired" (\() -> (pressedAndFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

pressedAndFired_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndFired_super object_ a1 = (pressedAndFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

pressedAndFired_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndFired_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput this (jget (this).pRESSED_AND_FIRED) touchButtonInput)
        pure ()


pressedAndNotFired :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndNotFired object_ a1 = jmethod object_ "pressedAndNotFired" (\() -> (pressedAndNotFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

pressedAndNotFired_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndNotFired_super object_ a1 = (pressedAndNotFired_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

pressedAndNotFired_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
pressedAndNotFired_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput this (jget (this).pRESSED_AND_NOT_FIRED) touchButtonInput)
        pure ()


removeAt :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt object_ a1 = jmethod object_ "removeAt" (\() -> (removeAt_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

removeAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt_super object_ a1 = (removeAt_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

removeAt_impl :: CurrentlyPressedTouchButtonSingletonDebug -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt_impl this index = do
        touchButtonInput <- (CurrentlyPressedTouchButtonSingleton.removeAt_super this.base index)
        assignedValue <- (BasicArrayList.toString ((jget (this).base.list)))
        jset (this).listString (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure (touchButtonInput)


remove :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove_super object_ a1 = (remove_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

remove_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove_impl this touchButtonInput = do
        isRemoved <- (CurrentlyPressedTouchButtonSingleton.remove_super this.base touchButtonInput)
        assignedValue <- (BasicArrayList.toString ((jget (this).base.list)))
        jset (this).listString (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure (isRemoved)


add :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) () a1

add_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug)) a1

add_impl :: CurrentlyPressedTouchButtonSingletonDebug -> TouchButtonInput.TouchButtonInput -> IO (())
add_impl this touchButtonInput = do
        Control.Monad.void (CurrentlyPressedTouchButtonSingleton.add_super this.base touchButtonInput)
        assignedValue <- (BasicArrayList.toString ((jget (this).base.list)))
        jset (this).listString (assignedValue)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).listString)))) (jget (this).append)))))
        jset (this).string (assignedValue)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingletonDebug))

toString_impl :: CurrentlyPressedTouchButtonSingletonDebug -> IO (String)
toString_impl this = do
        pure ((jget (this).string))


