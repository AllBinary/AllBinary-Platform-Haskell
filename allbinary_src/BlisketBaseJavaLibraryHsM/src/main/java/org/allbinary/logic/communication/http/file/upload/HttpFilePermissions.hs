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
-- package org.allbinary.logic.communication.http.file.upload
module HttpFilePermissions where

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
import qualified FileUploadData -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicUserRoleFactory -- org.allbinary.business.user.role.BasicUserRoleFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data HttpFilePermissions = HttpFilePermissions
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , file :: IORef (AbFile.AbFile)
    , userRoles :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HttpFilePermissions where
    javaNull = javaNullRecord "HttpFilePermissions"

instance JavaEquals HttpFilePermissions where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpFilePermissions where
    (==) = jrecordEquals

instance JavaObjectClass HttpFilePermissions where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HttpFilePermissions
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    file <- newIORef javaNull
    userRoles <- newIORef javaNull
    let this = HttpFilePermissions header_ logUtil commonStrings file userRoles
    jregisterLevel header_ this
    jregisterMethod header_ "isFile" (\() -> isFile_impl this)
    jregisterMethod header_ "getUserRoles" (\() -> getUserRoles_impl this)
    pure this

initFields_ :: HttpFilePermissions -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.file (javaNull)
    jset this.userRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_1 :: AbPath.AbPath -> IO HttpFilePermissions
new_1 fullPath = do
    this <- newRecord_
    init_1 this fullPath
    pure this

init_1 :: HttpFilePermissions -> AbPath.AbPath -> IO ()
init_1 this fullPath = do
        initFields_ this
        assignedValue <- (AbFile.createAbFileFromAbPath (jio (AbPath.new_2 (jio (AbPath.toFileSystemString fullPath)) (jget ((jio (FileUploadData.getInstance))).fILE))))
        jset (this).file (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Loading Privileges: " ++ javaToString (jio (AbPath.toFileSystemString fullPath))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        when (jio (HttpFilePermissions.isFile this)) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).userRoles)) (jget ((jio (BasicUserRoleFactory.getInstance))).aDMINISTRATOR))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("User Roles: " ++ javaToString (jget (this).userRoles)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


isFile :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile object_ = jmethod object_ "isFile" (\() -> (isFile_impl (javaCast object_ :: HttpFilePermissions))) ()

isFile_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFile_super object_ = (isFile_impl (javaCast object_ :: HttpFilePermissions))

isFile_impl :: HttpFilePermissions -> IO (Bool)
isFile_impl this = do
        (AbFile.isFile ((jget (this).file)))


getUserRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getUserRoles object_ = jmethod object_ "getUserRoles" (\() -> (getUserRoles_impl (javaCast object_ :: HttpFilePermissions))) ()

getUserRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getUserRoles_super object_ = (getUserRoles_impl (javaCast object_ :: HttpFilePermissions))

getUserRoles_impl :: HttpFilePermissions -> IO (BasicArrayList.BasicArrayList)
getUserRoles_impl this = do
        pure ((jget (this).userRoles))


