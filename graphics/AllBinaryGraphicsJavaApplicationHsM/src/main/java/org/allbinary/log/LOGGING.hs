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
-- package org.allbinary.log
module LOGGING where

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
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data LOGGING = LOGGING
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull LOGGING where
    javaNull = javaNullRecord "LOGGING"

instance JavaEquals LOGGING where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LOGGING where
    (==) = jrecordEquals

instance JavaObjectClass LOGGING where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE logging #-}
logging = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

{-# NOINLINE gRAPHICSPAINT #-}
gRAPHICSPAINT = unsafePerformIO ((new_1 "Graphics Paint"))

{-# NOINLINE gRAPHICSCREATION #-}
gRAPHICSCREATION = unsafePerformIO ((new_1 "Graphics Creation"))

{-# NOINLINE gRAPHICSDELETION #-}
gRAPHICSDELETION = unsafePerformIO ((new_1 "Graphics Deletion"))

{-# NOINLINE lOADINGERROR #-}
lOADINGERROR = unsafePerformIO ((new_1 "Loading Error"))

{-# NOINLINE mENUEVENT #-}
mENUEVENT = unsafePerformIO ((new_1 "Menu Action Event"))

{-# NOINLINE mOUSEEVENT #-}
mOUSEEVENT = unsafePerformIO ((new_1 "Mouse Action Event"))

{-# NOINLINE kEYEVENT #-}
kEYEVENT = unsafePerformIO ((new_1 "Keyboard Action Event"))

{-# NOINLINE aCTIONEVENT #-}
aCTIONEVENT = unsafePerformIO ((new_1 "Action Event"))

{-# NOINLINE aDJUSTMENTEVENT #-}
aDJUSTMENTEVENT = unsafePerformIO ((new_1 "Adjustment Action Event"))

{-# NOINLINE cOMPONENTEVENT #-}
cOMPONENTEVENT = unsafePerformIO ((new_1 "Component Action Event"))

{-# NOINLINE cONTAINEREVENT #-}
cONTAINEREVENT = unsafePerformIO ((new_1 "Container Action Event"))

{-# NOINLINE fOCUSEVENT #-}
fOCUSEVENT = unsafePerformIO ((new_1 "Focus Action Event"))

{-# NOINLINE hIERARCHYEVENT #-}
hIERARCHYEVENT = unsafePerformIO ((new_1 "Hierarchy Action Event"))

{-# NOINLINE iNPUTEVENT #-}
iNPUTEVENT = unsafePerformIO ((new_1 "Input Action Event"))

{-# NOINLINE iNVOCATIONEVENT #-}
iNVOCATIONEVENT = unsafePerformIO ((new_1 "Invocation Action Event"))

{-# NOINLINE iTEMEVENT #-}
iTEMEVENT = unsafePerformIO ((new_1 "Item Action Event"))

{-# NOINLINE pAINTEVENT #-}
pAINTEVENT = unsafePerformIO ((new_1 "Paint Action Event"))

{-# NOINLINE tEXTEVENT #-}
tEXTEVENT = unsafePerformIO ((new_1 "Text Action Event"))

{-# NOINLINE wINDOWEVENT #-}
wINDOWEVENT = unsafePerformIO ((new_1 "Window Action Event"))

newRecord_ :: IO LOGGING
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = LOGGING header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: LOGGING -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO LOGGING
new_1 value = do
    this <- newRecord_
    init_1 this value
    pure this

init_1 :: LOGGING -> String -> IO ()
init_1 this value = do
        initFields_ this
        jset (this).name (value)
        Control.Monad.void (add ((jget LOGGING.logging)) value)
        pure ()


contains :: LOGGING -> IO (Bool)
contains logType = do
        (contains ((jget LOGGING.logging)) (jio (LOGGING.toString logType)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LOGGING))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LOGGING))

toString_impl :: LOGGING -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


