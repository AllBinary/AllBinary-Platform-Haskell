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
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
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

logging :: IORef (BasicArrayList.BasicArrayList)
{-# NOINLINE logging #-}
logging = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

gRAPHICSPAINT :: LOGGING
{-# NOINLINE gRAPHICSPAINT #-}
gRAPHICSPAINT = unsafePerformIO ((new_1 "Graphics Paint"))

gRAPHICSCREATION :: LOGGING
{-# NOINLINE gRAPHICSCREATION #-}
gRAPHICSCREATION = unsafePerformIO ((new_1 "Graphics Creation"))

gRAPHICSDELETION :: LOGGING
{-# NOINLINE gRAPHICSDELETION #-}
gRAPHICSDELETION = unsafePerformIO ((new_1 "Graphics Deletion"))

lOADINGERROR :: LOGGING
{-# NOINLINE lOADINGERROR #-}
lOADINGERROR = unsafePerformIO ((new_1 "Loading Error"))

mENUEVENT :: LOGGING
{-# NOINLINE mENUEVENT #-}
mENUEVENT = unsafePerformIO ((new_1 "Menu Action Event"))

mOUSEEVENT :: LOGGING
{-# NOINLINE mOUSEEVENT #-}
mOUSEEVENT = unsafePerformIO ((new_1 "Mouse Action Event"))

kEYEVENT :: LOGGING
{-# NOINLINE kEYEVENT #-}
kEYEVENT = unsafePerformIO ((new_1 "Keyboard Action Event"))

aCTIONEVENT :: LOGGING
{-# NOINLINE aCTIONEVENT #-}
aCTIONEVENT = unsafePerformIO ((new_1 "Action Event"))

aDJUSTMENTEVENT :: LOGGING
{-# NOINLINE aDJUSTMENTEVENT #-}
aDJUSTMENTEVENT = unsafePerformIO ((new_1 "Adjustment Action Event"))

cOMPONENTEVENT :: LOGGING
{-# NOINLINE cOMPONENTEVENT #-}
cOMPONENTEVENT = unsafePerformIO ((new_1 "Component Action Event"))

cONTAINEREVENT :: LOGGING
{-# NOINLINE cONTAINEREVENT #-}
cONTAINEREVENT = unsafePerformIO ((new_1 "Container Action Event"))

fOCUSEVENT :: LOGGING
{-# NOINLINE fOCUSEVENT #-}
fOCUSEVENT = unsafePerformIO ((new_1 "Focus Action Event"))

hIERARCHYEVENT :: LOGGING
{-# NOINLINE hIERARCHYEVENT #-}
hIERARCHYEVENT = unsafePerformIO ((new_1 "Hierarchy Action Event"))

iNPUTEVENT :: LOGGING
{-# NOINLINE iNPUTEVENT #-}
iNPUTEVENT = unsafePerformIO ((new_1 "Input Action Event"))

iNVOCATIONEVENT :: LOGGING
{-# NOINLINE iNVOCATIONEVENT #-}
iNVOCATIONEVENT = unsafePerformIO ((new_1 "Invocation Action Event"))

iTEMEVENT :: LOGGING
{-# NOINLINE iTEMEVENT #-}
iTEMEVENT = unsafePerformIO ((new_1 "Item Action Event"))

pAINTEVENT :: LOGGING
{-# NOINLINE pAINTEVENT #-}
pAINTEVENT = unsafePerformIO ((new_1 "Paint Action Event"))

tEXTEVENT :: LOGGING
{-# NOINLINE tEXTEVENT #-}
tEXTEVENT = unsafePerformIO ((new_1 "Text Action Event"))

wINDOWEVENT :: LOGGING
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
        Control.Monad.void (BasicArrayList.add ((jget LOGGING.logging)) value)
        pure ()


contains :: LOGGING -> IO (Bool)
contains logType = do
        (BasicArrayList.contains ((jget LOGGING.logging)) (jio (LOGGING.toString logType)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LOGGING))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LOGGING))

toString_impl :: LOGGING -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


