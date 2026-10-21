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
-- package org.allbinary.logic.io.file.path
module AbPathUtilOld where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified AbFilePath -- org.allbinary.logic.io.path.AbFilePath
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data AbPathUtilOld = AbPathUtilOld
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , abPathData :: IORef (AbPathData.AbPathData)
    , filePathData :: IORef (FilePathData.FilePathData)
    }

instance JavaNull AbPathUtilOld where
    javaNull = javaNullRecord "AbPathUtilOld"

instance JavaEquals AbPathUtilOld where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbPathUtilOld where
    (==) = jrecordEquals

instance JavaObjectClass AbPathUtilOld where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

mIN = 4

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbPathUtilOld
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    abPathData <- newIORef javaNull
    filePathData <- newIORef javaNull
    let this = AbPathUtilOld header_ logUtil abPathData filePathData
    jregisterLevel header_ this
    jregisterMethod header_ "getExtension_overload1" (\() -> getExtension_overload1_impl this)
    jregisterMethod header_ "getExtension_overload2" (\() -> getExtension_overload2_impl this)
    jregisterMethod header_ "getExtension_overload3" (\() -> getExtension_overload3_impl this)
    jregisterMethod header_ "getWithoutExtension_overload1" (\() -> getWithoutExtension_overload1_impl this)
    jregisterMethod header_ "getWithoutExtension_overload2" (\() -> getWithoutExtension_overload2_impl this)
    jregisterMethod header_ "getWithoutExtension_overload3" (\() -> getWithoutExtension_overload3_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "isValidStart" (\() -> isValidStart_impl this)
    jregisterMethod header_ "isValidEnd" (\() -> isValidEnd_impl this)
    jregisterMethod header_ "adjustStart" (\() -> adjustStart_impl this)
    jregisterMethod header_ "adjustEnd" (\() -> adjustEnd_impl this)
    jregisterMethod header_ "adjust" (\() -> adjust_impl this)
    jregisterMethod header_ "getNameFromPath" (\() -> getNameFromPath_impl this)
    jregisterMethod header_ "removeNameFromPath" (\() -> removeNameFromPath_impl this)
    pure this

initFields_ :: AbPathUtilOld -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abPathData =<< (AbPathData.getInstance)
    jset this.filePathData =<< (FilePathData.getInstance)
    pure ()


getInstance :: IO (AbPathUtilOld)
getInstance = do
        pure (AbPathUtilOld.instance_)

new_ :: IO AbPathUtilOld
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbPathUtilOld -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getExtension: calls the overload for the types of the arguments
getExtension :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getExtension this a1
    | jisInstanceOf a1 (javaNull :: AbFilePath.AbFilePath) = getExtension_overload1 this (javaCast a1 :: AbFilePath.AbFilePath)
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) = getExtension_overload2 this (javaCast a1 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) = getExtension_overload3 this (javaCast a1 :: String)
    | otherwise = getExtension_overload3 this (javaCast a1 :: String)

-- throws Exception
getExtension_overload1 :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getExtension_overload1 object_ a1 = jmethod object_ "getExtension_overload1" (\() -> (getExtension_overload1_impl (javaCast object_ :: AbPathUtilOld))) () a1

getExtension_overload1_super :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getExtension_overload1_super object_ a1 = (getExtension_overload1_impl (javaCast object_ :: AbPathUtilOld)) a1

getExtension_overload1_impl :: AbPathUtilOld -> AbFilePath.AbFilePath -> IO (String)
getExtension_overload1_impl this abFilePath = do
        (AbPathUtilOld.getExtension this (jio (AbFilePath.toString abFilePath)))


-- throws Exception
getExtension_overload2 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getExtension_overload2 object_ a1 = jmethod object_ "getExtension_overload2" (\() -> (getExtension_overload2_impl (javaCast object_ :: AbPathUtilOld))) () a1

getExtension_overload2_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getExtension_overload2_super object_ a1 = (getExtension_overload2_impl (javaCast object_ :: AbPathUtilOld)) a1

getExtension_overload2_impl :: AbPathUtilOld -> AbPath.AbPath -> IO (String)
getExtension_overload2_impl this abPath = do
        (AbPathUtilOld.getExtension this (jio (AbPath.toString abPath)))


-- throws Exception
getExtension_overload3 :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtension_overload3 object_ a1 = jmethod object_ "getExtension_overload3" (\() -> (getExtension_overload3_impl (javaCast object_ :: AbPathUtilOld))) () a1

getExtension_overload3_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getExtension_overload3_super object_ a1 = (getExtension_overload3_impl (javaCast object_ :: AbPathUtilOld)) a1

getExtension_overload3_impl :: AbPathUtilOld -> String -> IO (String)
getExtension_overload3_impl this filePath = do
        when ((Prelude.length filePath) < AbPathUtilOld.mIN) $ do
            javaThrow ((JavaException "Exception" "Could not be a file path since its less that 4 characters"))
        let beginIndex = ((Prelude.length filePath) - AbPathUtilOld.mIN)
        let extension = (Prelude.drop (beginIndex + 1) filePath)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileExtension: " ++ extension) this "getExtension()")
        pure (extension)


-- Java overloads of getWithoutExtension: calls the overload for the types of the arguments
getWithoutExtension :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getWithoutExtension this a1
    | jisInstanceOf a1 (javaNull :: AbFilePath.AbFilePath) = getWithoutExtension_overload1 this (javaCast a1 :: AbFilePath.AbFilePath)
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) = getWithoutExtension_overload2 this (javaCast a1 :: AbPath.AbPath)
    | jisInstanceOf a1 (javaNull :: String) = getWithoutExtension_overload3 this (javaCast a1 :: String)
    | otherwise = getWithoutExtension_overload3 this (javaCast a1 :: String)

-- throws Exception
getWithoutExtension_overload1 :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtension_overload1 object_ a1 = jmethod object_ "getWithoutExtension_overload1" (\() -> (getWithoutExtension_overload1_impl (javaCast object_ :: AbPathUtilOld))) () a1

getWithoutExtension_overload1_super :: (JavaObjectClass this_) => this_ -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtension_overload1_super object_ a1 = (getWithoutExtension_overload1_impl (javaCast object_ :: AbPathUtilOld)) a1

getWithoutExtension_overload1_impl :: AbPathUtilOld -> AbFilePath.AbFilePath -> IO (String)
getWithoutExtension_overload1_impl this abFilePath = do
        (AbPathUtilOld.getWithoutExtension this (jio (AbFilePath.toString abFilePath)))


-- throws Exception
getWithoutExtension_overload2 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getWithoutExtension_overload2 object_ a1 = jmethod object_ "getWithoutExtension_overload2" (\() -> (getWithoutExtension_overload2_impl (javaCast object_ :: AbPathUtilOld))) () a1

getWithoutExtension_overload2_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (String)
getWithoutExtension_overload2_super object_ a1 = (getWithoutExtension_overload2_impl (javaCast object_ :: AbPathUtilOld)) a1

getWithoutExtension_overload2_impl :: AbPathUtilOld -> AbPath.AbPath -> IO (String)
getWithoutExtension_overload2_impl this abPath = do
        (AbPathUtilOld.getWithoutExtension this (jio (AbPath.toString abPath)))


-- throws Exception
getWithoutExtension_overload3 :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWithoutExtension_overload3 object_ a1 = jmethod object_ "getWithoutExtension_overload3" (\() -> (getWithoutExtension_overload3_impl (javaCast object_ :: AbPathUtilOld))) () a1

getWithoutExtension_overload3_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getWithoutExtension_overload3_super object_ a1 = (getWithoutExtension_overload3_impl (javaCast object_ :: AbPathUtilOld)) a1

getWithoutExtension_overload3_impl :: AbPathUtilOld -> String -> IO (String)
getWithoutExtension_overload3_impl this filePath = do
        when ((Prelude.length filePath) < AbPathUtilOld.mIN) $ do
            javaThrow ((JavaException "Exception" "Could not be a file path since its less that 4 characters"))
        let endIndex = ((Prelude.length filePath) - AbPathUtilOld.mIN)
        let pathWithoutExtension = (Prelude.take ((endIndex) - (0)) (Prelude.drop (0) filePath))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileWithoutExtension: " ++ pathWithoutExtension) this "getWithoutExtension()")
        pure (pathWithoutExtension)


isValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AbPathUtilOld))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: AbPathUtilOld)) a1

isValid_impl :: AbPathUtilOld -> String -> IO (Bool)
isValid_impl this path = do
    javaCatchReturn $ do
        when (jio (AbPathUtilOld.isValidStart this path)) $ do
            when (jio (AbPathUtilOld.isValidEnd this path)) $ do
                javaReturn (True)
        pure (False)


isValidStart :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidStart object_ a1 = jmethod object_ "isValidStart" (\() -> (isValidStart_impl (javaCast object_ :: AbPathUtilOld))) () a1

isValidStart_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidStart_super object_ a1 = (isValidStart_impl (javaCast object_ :: AbPathUtilOld)) a1

isValidStart_impl :: AbPathUtilOld -> String -> IO (Bool)
isValidStart_impl this path = do
    javaCatchReturn $ do
        if ((path Prelude.!! 0) == (jget ((jget (this).abPathData)).sEPARATORCHAR)) then do
            javaReturn (True)
        else do
            javaReturn (False)


isValidEnd :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidEnd object_ a1 = jmethod object_ "isValidEnd" (\() -> (isValidEnd_impl (javaCast object_ :: AbPathUtilOld))) () a1

isValidEnd_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isValidEnd_super object_ a1 = (isValidEnd_impl (javaCast object_ :: AbPathUtilOld)) a1

isValidEnd_impl :: AbPathUtilOld -> String -> IO (Bool)
isValidEnd_impl this path = do
    javaCatchReturn $ do
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) path)) $ do
            javaReturn (False)
        if ((path Prelude.!! ((Prelude.length path) - 1)) == (jget ((jget (this).abPathData)).sEPARATORCHAR)) then do
            javaReturn (True)
        else do
            javaReturn (False)


adjustStart :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustStart object_ a1 = jmethod object_ "adjustStart" (\() -> (adjustStart_impl (javaCast object_ :: AbPathUtilOld))) () a1

adjustStart_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustStart_super object_ a1 = (adjustStart_impl (javaCast object_ :: AbPathUtilOld)) a1

adjustStart_impl :: AbPathUtilOld -> String -> IO (String)
adjustStart_impl this path = do
        path <- newIORef path
        when (Prelude.not (jio (AbPathUtilOld.isValidStart this (jget path)))) $ do
            jset path ((javaToString (jget ((jget (this).abPathData)).sEPARATOR) ++ (jget path)))
        pure ((jget path))


adjustEnd :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustEnd object_ a1 = jmethod object_ "adjustEnd" (\() -> (adjustEnd_impl (javaCast object_ :: AbPathUtilOld))) () a1

adjustEnd_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjustEnd_super object_ a1 = (adjustEnd_impl (javaCast object_ :: AbPathUtilOld)) a1

adjustEnd_impl :: AbPathUtilOld -> String -> IO (String)
adjustEnd_impl this path = do
        path <- newIORef path
        when (Prelude.not (jio (AbPathUtilOld.isValidEnd this (jget path)))) $ do
            jset path (((jget path) ++ javaToString (jget ((jget (this).abPathData)).sEPARATOR)))
        pure ((jget path))


adjust :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjust object_ a1 = jmethod object_ "adjust" (\() -> (adjust_impl (javaCast object_ :: AbPathUtilOld))) () a1

adjust_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
adjust_super object_ a1 = (adjust_impl (javaCast object_ :: AbPathUtilOld)) a1

adjust_impl :: AbPathUtilOld -> String -> IO (String)
adjust_impl this path = do
    path <- newIORef path
    javaCatchReturn $ do
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget path))) $ do
            javaReturn ((jget ((jget (this).abPathData)).sEPARATOR))
        when ((jstringIndexOf (jget path) "\\" 0) >= 0) $ do
            jset path ((jstringReplace (jget path) '\\' (jget ((jget (this).abPathData)).sEPARATORCHAR)))
        pure ((jget path))


getNameFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNameFromPath object_ a1 = jmethod object_ "getNameFromPath" (\() -> (getNameFromPath_impl (javaCast object_ :: AbPathUtilOld))) () a1

getNameFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNameFromPath_super object_ a1 = (getNameFromPath_impl (javaCast object_ :: AbPathUtilOld)) a1

getNameFromPath_impl :: AbPathUtilOld -> String -> IO (String)
getNameFromPath_impl this categoryPath = do
    javaCatchReturn $ do
        endIndex <- newIORef ((jstringLastIndexOf categoryPath (jget ((jget (this).abPathData)).sEPARATOR)))
        when ((jget endIndex) < 0) $ do
            jset endIndex ((jstringLastIndexOf categoryPath (jget ((jget (this).filePathData)).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            pure (categoryPath)
        if ((Prelude.length categoryPath) == ((jget endIndex) + 1)) then do
            let categoryName = (Prelude.take (((jget endIndex)) - (0)) (Prelude.drop (0) categoryPath))
            javaReturn =<< (AbPathUtilOld.getNameFromPath this categoryName)
        else do
            let categoryName = (Prelude.drop ((jget endIndex) + 1) categoryPath)
            javaReturn (categoryName)


-- throws Exception
removeNameFromPath :: (JavaObjectClass this_) => this_ -> String -> IO (AbPath.AbPath)
removeNameFromPath object_ a1 = jmethod object_ "removeNameFromPath" (\() -> (removeNameFromPath_impl (javaCast object_ :: AbPathUtilOld))) () a1

removeNameFromPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (AbPath.AbPath)
removeNameFromPath_super object_ a1 = (removeNameFromPath_impl (javaCast object_ :: AbPathUtilOld)) a1

removeNameFromPath_impl :: AbPathUtilOld -> String -> IO (AbPath.AbPath)
removeNameFromPath_impl this categoryPath = do
    javaCatchReturn $ do
        endIndex <- newIORef ((jstringLastIndexOf categoryPath (jget ((jget (this).abPathData)).sEPARATOR)))
        when ((jget endIndex) < 0) $ do
            jset endIndex ((jstringLastIndexOf categoryPath (jget ((jget (this).filePathData)).sEPARATORCHAR)))
        when ((jget endIndex) < 0) $ do
            javaReturn =<< (AbPath.createAbPath)
        if ((Prelude.length categoryPath) == ((jget endIndex) + 1)) then do
            javaReturn =<< (AbPathUtilOld.removeNameFromPath this (Prelude.take ((((jget endIndex) - 1)) - (0)) (Prelude.drop (0) categoryPath)))
        else do
            let categoryName = (Prelude.take (((jget endIndex)) - (0)) (Prelude.drop (0) categoryPath))
            javaReturn =<< (AbPath.new_2 categoryName (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


