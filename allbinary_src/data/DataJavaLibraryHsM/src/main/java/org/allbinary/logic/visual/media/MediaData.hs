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
-- package org.allbinary.logic.visual.media
module MediaData where

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
import qualified MediaTypeData -- same package or java.lang
import qualified MediaDataFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil

data MediaData = MediaData
    { header_ :: JavaHeader
    , name :: IORef (String)
    , type_ :: IORef (String)
    , extension :: IORef (String)
    }

instance JavaNull MediaData where
    javaNull = javaNullRecord "MediaData"

instance JavaEquals MediaData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaData where
    (==) = jrecordEquals

instance JavaObjectClass MediaData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashMap #-}
hashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

newRecord_ :: IO MediaData
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    type_ <- newIORef ""
    extension <- newIORef ""
    let this = MediaData header_ name type_ extension
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getExtension" (\() -> getExtension_impl this)
    jregisterMethod header_ "isConvertableTo" (\() -> isConvertableTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: MediaData -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.type_ (javaNull)
    jset this.extension (javaNull)
    pure ()

new_1 :: String -> IO MediaData
new_1 a_Name = do
    this <- newRecord_
    init_1 this a_Name
    pure this

init_1 :: MediaData -> String -> IO ()
init_1 this a_Name = do
        initFields_ this
        jset (this).name (a_Name)
        jset (this).extension (("." ++ (jget (this).name)))
        jset (this).type_ ((jget ((jio (MediaTypeData.getInstance))).nOT_RESIZABLE_MEDIA))
        Control.Monad.void (put ((jget MediaData.hashMap)) a_Name this)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: MediaData))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: MediaData))

getName_impl :: MediaData -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: MediaData))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: MediaData))

getType_impl :: MediaData -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


getExtension :: (JavaObjectClass this_) => this_ -> IO (String)
getExtension object_ = jmethod object_ "getExtension" (\() -> (getExtension_impl (javaCast object_ :: MediaData))) ()

getExtension_super :: (JavaObjectClass this_) => this_ -> IO (String)
getExtension_super object_ = (getExtension_impl (javaCast object_ :: MediaData))

getExtension_impl :: MediaData -> IO (String)
getExtension_impl this = do
        pure ((jget (this).extension))


isConvertableTo :: (JavaObjectClass this_) => this_ -> MediaData -> IO (Bool)
isConvertableTo object_ a1 = jmethod object_ "isConvertableTo" (\() -> (isConvertableTo_impl (javaCast object_ :: MediaData))) () a1

isConvertableTo_super :: (JavaObjectClass this_) => this_ -> MediaData -> IO (Bool)
isConvertableTo_super object_ a1 = (isConvertableTo_impl (javaCast object_ :: MediaData)) a1

isConvertableTo_impl :: MediaData -> MediaData -> IO (Bool)
isConvertableTo_impl this mediaData = do
    javaCatchReturn $ do
        when ((this == (jget ((jio (MediaDataFactory.getInstance))).gIF)) && (mediaData == (jget ((jio (MediaDataFactory.getInstance))).jPG))) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MediaData))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MediaData))

toString_impl :: MediaData -> IO (String)
toString_impl this = do
        (MediaData.getName this)


-- throws Exception
get :: String -> IO (MediaData)
get a_Name = do
    javaCatchReturn $ do
        let mediaData = (javaCast (jio (get ((jget MediaData.hashMap)) a_Name)) :: MediaData)
        if (mediaData /= javaNull) then do
            javaReturn (mediaData)
        else do
            javaThrow ((JavaException "Exception" "No Such MediaData"))


getDefault :: IO (MediaData)
getDefault = do
        pure ((jget ((jio (MediaDataFactory.getInstance))).jPG))


toHashMap :: IO (HashMap.HashMap)
toHashMap = do
        pure ((jget MediaData.hashMap))


