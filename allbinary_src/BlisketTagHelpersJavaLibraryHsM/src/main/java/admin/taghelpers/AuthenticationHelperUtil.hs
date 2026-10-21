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
-- package admin.taghelpers
module AuthenticationHelperUtil where

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
import qualified AuthenticationHelper -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicUserRole -- org.allbinary.business.user.role.BasicUserRole
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified HttpFilePermissions -- org.allbinary.logic.communication.http.file.upload.HttpFilePermissions
import qualified HttpRequestUtil -- org.allbinary.logic.communication.http.request.HttpRequestUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data AuthenticationHelperUtil = AuthenticationHelperUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AuthenticationHelperUtil where
    javaNull = javaNullRecord "AuthenticationHelperUtil"

instance JavaEquals AuthenticationHelperUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationHelperUtil where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationHelperUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AuthenticationHelperUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = AuthenticationHelperUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "isAuthorized" (\() -> isAuthorized_impl this)
    pure this

initFields_ :: AuthenticationHelperUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO AuthenticationHelperUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthenticationHelperUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AuthenticationHelperUtil)
getInstance = do
        pure (AuthenticationHelperUtil.instance_)


-- throws Exception
isAuthorized :: (JavaObjectClass this_) => this_ -> AuthenticationHelper.AuthenticationHelper -> String -> IO (Bool)
isAuthorized object_ a1 a2 = jmethod object_ "isAuthorized" (\() -> (isAuthorized_impl (javaCast object_ :: AuthenticationHelperUtil))) () a1 a2

isAuthorized_super :: (JavaObjectClass this_) => this_ -> AuthenticationHelper.AuthenticationHelper -> String -> IO (Bool)
isAuthorized_super object_ a1 a2 = (isAuthorized_impl (javaCast object_ :: AuthenticationHelperUtil)) a1 a2

isAuthorized_impl :: AuthenticationHelperUtil -> AuthenticationHelper.AuthenticationHelper -> String -> IO (Bool)
isAuthorized_impl this authenticationHelper filePath = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ filePath) this "isAuthorized()")
        endIndex <- (HttpRequestUtil.getLastSeparatorIndex ((jio (HttpRequestUtil.getInstance))) filePath)
        fullPath <- (AbPath.new_2 (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (Prelude.take ((endIndex) - (0)) (Prelude.drop (0) filePath))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        downloadFilePermissions <- (HttpFilePermissions.new_1 fullPath)
        userRoles <- (HttpFilePermissions.getUserRoles downloadFilePermissions)
        userRole <- (AuthenticationHelper.getRole authenticationHelper)
        basicUserRole <- (UserRole.getBasicUserRole userRole)
        if (jio (BasicArrayList.contains userRoles basicUserRole)) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Authorized" this "isAuthorized()")
            javaReturn (True)
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Not Authorized: " ++ (jio (BasicUserRole.toString basicUserRole))) this "isAuthorized()")
            javaReturn (False)


