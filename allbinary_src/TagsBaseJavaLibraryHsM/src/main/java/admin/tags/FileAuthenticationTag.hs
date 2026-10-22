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
-- package admin.tags
module FileAuthenticationTag (module FileAuthenticationTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, setUserName, setUserName_super, setUserName_impl, setPassword, setPassword_super, setPassword_impl, setNewPassword, setNewPassword_super, setNewPassword_impl, setRoles, setRoles_super, setRoles_impl, makeSessionValid, makeSessionValid_super, makeSessionValid_impl, getFormData, getFormData_super, getFormData_impl, nextAttempt, nextAttempt_super, nextAttempt_impl, changePassword, changePassword_super, changePassword_impl, invalidateSession, invalidateSession_super, invalidateSession_impl, isSessionOld, isSessionOld_super, isSessionOld_impl, isRarelyUsedSession, isRarelyUsedSession_super, isRarelyUsedSession_impl, isRoleValid, isRoleValid_super, isRoleValid_impl, validRole, validRole_super, validRole_impl, invalidRole, invalidRole_super, invalidRole_impl, isAuthenticationSessionValid, isAuthenticationSessionValid_super, isAuthenticationSessionValid_impl, processIfNewLogin, processIfNewLogin_super, processIfNewLogin_impl, processInvalidation, processInvalidation_super, processInvalidation_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, attemptsInteger, weblisketSession, request, command, userName, password, newPassword, authenticated, sessionUserName, role, timeout, roles)
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
import qualified CommonStrings -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified InstallerInfo -- org.allbinary.business.init.InstallerInfo
import qualified BasicUserRole -- org.allbinary.business.user.role.BasicUserRole
import qualified BasicUserRoleFactory -- org.allbinary.business.user.role.BasicUserRoleFactory
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified BasicWeblisketSession -- org.allbinary.logic.communication.http.request.session.BasicWeblisketSession
import qualified WeblisketSessionData -- org.allbinary.logic.communication.http.request.session.WeblisketSessionData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified BooleanUtil -- org.allbinary.logic.java.bool.BooleanUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport

data FileAuthenticationTag = FileAuthenticationTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , attemptsInteger :: IORef (Int)
    , weblisketSession :: IORef (BasicWeblisketSession.BasicWeblisketSession)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , command :: IORef (String)
    , userName :: IORef (String)
    , password :: IORef (String)
    , newPassword :: IORef (String)
    , authenticated :: IORef (String)
    , sessionUserName :: IORef (String)
    , role :: IORef (BasicUserRole.BasicUserRole)
    , timeout :: IORef (String)
    , roles :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull FileAuthenticationTag where
    javaNull = javaNullRecord "FileAuthenticationTag"

instance JavaEquals FileAuthenticationTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileAuthenticationTag where
    (==) = jrecordEquals

instance JavaObjectClass FileAuthenticationTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FileAuthenticationTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    attemptsInteger <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    request <- newIORef javaNull
    command <- newIORef ""
    userName <- newIORef ""
    password <- newIORef ""
    newPassword <- newIORef ""
    authenticated <- newIORef ""
    sessionUserName <- newIORef ""
    role <- newIORef javaNull
    timeout <- newIORef ""
    roles <- newIORef javaNull
    let this = FileAuthenticationTag header_ base logUtil attemptsInteger weblisketSession request command userName password newPassword authenticated sessionUserName role timeout roles
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setNewPassword" (\() -> setNewPassword_impl this)
    jregisterMethod header_ "setRoles" (\() -> setRoles_impl this)
    jregisterMethod header_ "makeSessionValid" (\() -> makeSessionValid_impl this)
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "nextAttempt" (\() -> nextAttempt_impl this)
    jregisterMethod header_ "changePassword" (\() -> changePassword_impl this)
    jregisterMethod header_ "invalidateSession" (\() -> invalidateSession_impl this)
    jregisterMethod header_ "isSessionOld" (\() -> isSessionOld_impl this)
    jregisterMethod header_ "isRarelyUsedSession" (\() -> isRarelyUsedSession_impl this)
    jregisterMethod header_ "isRoleValid" (\() -> isRoleValid_impl this)
    jregisterMethod header_ "validRole" (\() -> validRole_impl this)
    jregisterMethod header_ "invalidRole" (\() -> invalidRole_impl this)
    jregisterMethod header_ "isAuthenticationSessionValid" (\() -> isAuthenticationSessionValid_impl this)
    jregisterMethod header_ "processIfNewLogin" (\() -> processIfNewLogin_impl this)
    jregisterMethod header_ "processInvalidation" (\() -> processInvalidation_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: FileAuthenticationTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.attemptsInteger (javaNull)
    jset this.weblisketSession (javaNull)
    jset this.request (javaNull)
    jset this.command ("")
    jset this.userName ("")
    jset this.password ("")
    jset this.newPassword ("")
    jset this.authenticated ("")
    jset this.sessionUserName ("")
    jset this.role (javaNull)
    jset this.timeout ("")
    jset this.roles (javaNull)
    pure ()

new_ :: IO FileAuthenticationTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileAuthenticationTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: FileAuthenticationTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: FileAuthenticationTag)) a1

setCommand_impl :: FileAuthenticationTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: FileAuthenticationTag))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: FileAuthenticationTag)) a1

setUserName_impl :: FileAuthenticationTag -> String -> IO (())
setUserName_impl this userName = do
        jset (this).userName (userName)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: FileAuthenticationTag))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: FileAuthenticationTag)) a1

setPassword_impl :: FileAuthenticationTag -> String -> IO (())
setPassword_impl this value = do
        jset (this).password (value)
        pure ()


setNewPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewPassword object_ a1 = jmethod object_ "setNewPassword" (\() -> (setNewPassword_impl (javaCast object_ :: FileAuthenticationTag))) () a1

setNewPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewPassword_super object_ a1 = (setNewPassword_impl (javaCast object_ :: FileAuthenticationTag)) a1

setNewPassword_impl :: FileAuthenticationTag -> String -> IO (())
setNewPassword_impl this value = do
        jset (this).newPassword (value)
        pure ()


setRoles :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRoles object_ a1 = jmethod object_ "setRoles" (\() -> (setRoles_impl (javaCast object_ :: FileAuthenticationTag))) () a1

setRoles_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRoles_super object_ a1 = (setRoles_impl (javaCast object_ :: FileAuthenticationTag)) a1

setRoles_impl :: FileAuthenticationTag -> BasicArrayList.BasicArrayList -> IO (())
setRoles_impl this values = do
        jset (this).roles (values)
        pure ()


makeSessionValid :: (JavaObjectClass this_) => this_ -> BasicUserRole.BasicUserRole -> String -> IO (())
makeSessionValid object_ a1 a2 = jmethod object_ "makeSessionValid" (\() -> (makeSessionValid_impl (javaCast object_ :: FileAuthenticationTag))) () a1 a2

makeSessionValid_super :: (JavaObjectClass this_) => this_ -> BasicUserRole.BasicUserRole -> String -> IO (())
makeSessionValid_super object_ a1 a2 = (makeSessionValid_impl (javaCast object_ :: FileAuthenticationTag)) a1 a2

makeSessionValid_impl :: FileAuthenticationTag -> BasicUserRole.BasicUserRole -> String -> IO (())
makeSessionValid_impl this storedRole userName = do
        Control.Monad.void (BasicWeblisketSession.setAuthenticated ((jget (this).weblisketSession)))
        Control.Monad.void (BasicWeblisketSession.setRole ((jget (this).weblisketSession)) storedRole)
        Control.Monad.void (BasicWeblisketSession.setUserName ((jget (this).weblisketSession)) userName)
        Control.Monad.void (HttpServletRequest.removeAttribute ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
        Control.Monad.void (HttpServletRequest.removeAttribute ((jget (this).request)) (WeblisketSessionData.rEMOVABLEPASSWORD))
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: FileAuthenticationTag))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: FileAuthenticationTag))

getFormData_impl :: FileAuthenticationTag -> IO (())
getFormData_impl this = do
        assignedValue <- (BasicWeblisketSession.getAuthentication ((jget (this).weblisketSession)))
        jset (this).authenticated (assignedValue)
        assignedValue <- (BasicWeblisketSession.getUserName ((jget (this).weblisketSession)))
        jset (this).sessionUserName (assignedValue)
        assignedValue <- (BasicWeblisketSession.getRole ((jget (this).weblisketSession)))
        jset (this).role (assignedValue)
        assignedValue <- (BasicWeblisketSession.getAttempts ((jget (this).weblisketSession)))
        jset (this).attemptsInteger (assignedValue)
        assignedValue <- (BasicWeblisketSession.getTimeout ((jget (this).weblisketSession)))
        jset (this).timeout (assignedValue)
        pure ()


nextAttempt :: (JavaObjectClass this_) => this_ -> IO (())
nextAttempt object_ = jmethod object_ "nextAttempt" (\() -> (nextAttempt_impl (javaCast object_ :: FileAuthenticationTag))) ()

nextAttempt_super :: (JavaObjectClass this_) => this_ -> IO (())
nextAttempt_super object_ = (nextAttempt_impl (javaCast object_ :: FileAuthenticationTag))

nextAttempt_impl :: FileAuthenticationTag -> IO (())
nextAttempt_impl this = do
        if (((jget (this).attemptsInteger) /= javaNull) && ((jget (this).attemptsInteger) > 0)) then do
            Control.Monad.void (BasicWeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (((jget (this).attemptsInteger) + 1)) :: Int))
        else do
            Control.Monad.void (BasicWeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (1) :: Int))
        pure ()


-- throws LicensingException
changePassword :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword object_ = jmethod object_ "changePassword" (\() -> (changePassword_impl (javaCast object_ :: FileAuthenticationTag))) ()

changePassword_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword_super object_ = (changePassword_impl (javaCast object_ :: FileAuthenticationTag))

changePassword_impl :: FileAuthenticationTag -> IO (Bool)
changePassword_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            userName <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
            password <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEPASSWORD))
            newPassword <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLENEWPASSWORD))
            newReenteredPassword <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEREENTERNEWPASSWORD))
            when ((Prelude.fromEnum (Prelude.compare newPassword newReenteredPassword) - 1) /= 0) $ do
                javaReturn (False)
            installerInfo <- (InstallerInfo.new_)
            when (jio (InstallerInfo.isValid installerInfo userName password)) $ do
                Control.Monad.void (InstallerInfo.setPassword installerInfo newPassword)
                Control.Monad.void (InstallerInfo.write installerInfo)
                Control.Monad.void (BasicWeblisketSession.setUserName ((jget (this).weblisketSession)) userName)
                Control.Monad.void (BasicWeblisketSession.setPassword ((jget (this).weblisketSession)) newPassword)
                javaReturn (True)
            pure (False)


invalidateSession :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession object_ = jmethod object_ "invalidateSession" (\() -> (invalidateSession_impl (javaCast object_ :: FileAuthenticationTag))) ()

invalidateSession_super :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession_super object_ = (invalidateSession_impl (javaCast object_ :: FileAuthenticationTag))

invalidateSession_impl :: FileAuthenticationTag -> IO (Int)
invalidateSession_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "invalidateSession()" e)
            pure (TagSupport.sKIP_BODY)
            ) $ do
            Control.Monad.void (BasicWeblisketSession.clear ((jget (this).weblisketSession)))
            pure ((Prelude.fromIntegral ((TagSupport.eVAL_BODY_INCLUDE)) :: Int))


-- throws LicensingException
isSessionOld :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld object_ = jmethod object_ "isSessionOld" (\() -> (isSessionOld_impl (javaCast object_ :: FileAuthenticationTag))) ()

isSessionOld_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld_super object_ = (isSessionOld_impl (javaCast object_ :: FileAuthenticationTag))

isSessionOld_impl :: FileAuthenticationTag -> IO (Bool)
isSessionOld_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isSessionOld()" e)
            pure (False)
            ) $ do
            if ((jget (this).role) /= javaNull) then do
                timeCreated <- (BasicWeblisketSession.getCreationTime ((jget (this).weblisketSession)))
                sessionTimout <- (BasicUserRole.getSessionTimeout ((jget (this).role)))
                calendar <- (Calendar.getInstance)
                let timeFirst = ((jio (Calendar.getTimeInMillis calendar)) - sessionTimout)
                when (timeFirst > timeCreated) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Session Is Old - Timeout: ")
                        Control.Monad.void (StringMaker.appendlong stringBuffer sessionTimout)
                        Control.Monad.void (StringMaker.append stringBuffer " Eval: ")
                        Control.Monad.void (StringMaker.appendlong stringBuffer timeFirst)
                        Control.Monad.void (StringMaker.append stringBuffer " > ")
                        Control.Monad.void (StringMaker.appendlong stringBuffer timeCreated)
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "isSessionOld()")
                    javaReturn =<< (booleanValue True)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role Is Not In Session" this "isSessionOld()")
            pure ((jio (FileAuthenticationTag.isRarelyUsedSession this)))


isRarelyUsedSession :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRarelyUsedSession object_ = jmethod object_ "isRarelyUsedSession" (\() -> (isRarelyUsedSession_impl (javaCast object_ :: FileAuthenticationTag))) ()

isRarelyUsedSession_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRarelyUsedSession_super object_ = (isRarelyUsedSession_impl (javaCast object_ :: FileAuthenticationTag))

isRarelyUsedSession_impl :: FileAuthenticationTag -> IO (Bool)
isRarelyUsedSession_impl this = do
        if ((jget (this).role) /= javaNull) then do
            timeCreated <- (BasicWeblisketSession.getCreationTime ((jget (this).weblisketSession)))
            lastAccess <- (BasicWeblisketSession.getLastAccessedTime ((jget (this).weblisketSession)))
            timePassed <- (BasicUserRole.getSessionInactivityTimeout ((jget (this).role)))
            calendar <- (Calendar.getInstance)
            let timeFirst = ((jio (Calendar.getTimeInMillis calendar)) - lastAccess)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Session Is Rarely Used - Timeout: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer lastAccess)
                Control.Monad.void (StringMaker.append stringBuffer " Eval: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer timeFirst)
                Control.Monad.void (StringMaker.append stringBuffer " > ")
                Control.Monad.void (StringMaker.appendlong stringBuffer timePassed)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "isRarelyUsedSession()")
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role Is Not In Session" this "isRarelyUsedSession()")
        pure (False)


-- throws LicensingException
isRoleValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoleValid object_ = jmethod object_ "isRoleValid" (\() -> (isRoleValid_impl (javaCast object_ :: FileAuthenticationTag))) ()

isRoleValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoleValid_super object_ = (isRoleValid_impl (javaCast object_ :: FileAuthenticationTag))

isRoleValid_impl :: FileAuthenticationTag -> IO (Bool)
isRoleValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isRoleValid()" e)
            pure (False)
            ) $ do
            Control.Monad.void (FileAuthenticationTag.makeSessionValid this (jget ((jio (BasicUserRoleFactory.getInstance))).iNSTALLER) (jget this.userName))
            (booleanValue True)


-- throws LicensingException
validRole :: (JavaObjectClass this_) => this_ -> IO (String)
validRole object_ = jmethod object_ "validRole" (\() -> (validRole_impl (javaCast object_ :: FileAuthenticationTag))) ()

validRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
validRole_super object_ = (validRole_impl (javaCast object_ :: FileAuthenticationTag))

validRole_impl :: FileAuthenticationTag -> IO (String)
validRole_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set valid role"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "validRole()" e)
            pure (error)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Trying New login<p>")
            (StringMaker.toString stringBuffer)


-- throws LicensingException
invalidRole :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole object_ = jmethod object_ "invalidRole" (\() -> (invalidRole_impl (javaCast object_ :: FileAuthenticationTag))) ()

invalidRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole_super object_ = (invalidRole_impl (javaCast object_ :: FileAuthenticationTag))

invalidRole_impl :: FileAuthenticationTag -> IO (String)
invalidRole_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set role invalid"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "invalidRole()" e)
            pure (error)
            ) $ do
            Control.Monad.void (BasicWeblisketSession.setAuthenticated_1 ((jget (this).weblisketSession)) False)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Sorry your username and password is invalid on this page.")
            Control.Monad.void (StringMaker.append stringBuffer "Trying New login<p>")
            (StringMaker.toString stringBuffer)


-- throws LicensingException
isAuthenticationSessionValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticationSessionValid object_ = jmethod object_ "isAuthenticationSessionValid" (\() -> (isAuthenticationSessionValid_impl (javaCast object_ :: FileAuthenticationTag))) ()

isAuthenticationSessionValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticationSessionValid_super object_ = (isAuthenticationSessionValid_impl (javaCast object_ :: FileAuthenticationTag))

isAuthenticationSessionValid_impl :: FileAuthenticationTag -> IO (Bool)
isAuthenticationSessionValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isAuthenticationSessionValid()" e)
            pure (False)
            ) $ do
            when (jio (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).authenticated))) $ do
                size <- (BasicArrayList.size ((jget (this).roles)))
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let mustBeOfRole = (javaCast (jio (BasicArrayList.get ((jget (this).roles)) index)) :: BasicUserRole.BasicUserRole)
                    when (((jget (this).sessionUserName) /= javaNull) && (jio (BasicUserRole.equals ((jget (this).role)) mustBeOfRole))) $ do
                        javaReturn =<< (booleanValue True)
                javaReturn =<< (booleanValue False)
            (booleanValue False)


-- throws LicensingException
processIfNewLogin :: (JavaObjectClass this_) => this_ -> IO (Bool)
processIfNewLogin object_ = jmethod object_ "processIfNewLogin" (\() -> (processIfNewLogin_impl (javaCast object_ :: FileAuthenticationTag))) ()

processIfNewLogin_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
processIfNewLogin_super object_ = (processIfNewLogin_impl (javaCast object_ :: FileAuthenticationTag))

processIfNewLogin_impl :: FileAuthenticationTag -> IO (Bool)
processIfNewLogin_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "processIfNewLogin()" e)
            pure (False)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Starting for User: " ++ (jget (this).userName)) ++ " Attempt: ") ++ javaToString (jio (BasicWeblisketSession.getAttempts ((jget (this).weblisketSession))))) this "processIfNewLogin()")
            when (((((jget (this).userName) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).userName) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) && ((jget (this).password) /= javaNull)) && ((Prelude.fromEnum (Prelude.compare (jget (this).password) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) $ do
                login <- newIORef ("")
                installerInfo <- (InstallerInfo.new_)
                if (jio (InstallerInfo.isValid installerInfo (jget (this).userName) (jget (this).password))) then do
                    jset login ((jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).lOGINSUCCESS))
                else do
                    jset login ((jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).lOGINFAILED))
                when ((Prelude.fromEnum (Prelude.compare (jget login) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).lOGINSUCCESS)) - 1) == 0) $ do
                    Control.Monad.void (BasicWeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (0) :: Int))
                    javaReturn =<< (booleanValue True)
                Control.Monad.void (FileAuthenticationTag.nextAttempt this)
                javaReturn =<< (booleanValue False)
            Control.Monad.void (FileAuthenticationTag.nextAttempt this)
            (booleanValue False)


-- throws LicensingException
processInvalidation :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation object_ = jmethod object_ "processInvalidation" (\() -> (processInvalidation_impl (javaCast object_ :: FileAuthenticationTag))) ()

processInvalidation_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation_super object_ = (processInvalidation_impl (javaCast object_ :: FileAuthenticationTag))

processInvalidation_impl :: FileAuthenticationTag -> IO (Bool)
processInvalidation_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isSetToInvalidate()" e)
            pure (False)
            ) $ do
            when (jio (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).timeout))) $ do
                Control.Monad.void (FileAuthenticationTag.invalidateSession this)
                javaReturn =<< (booleanValue True)
            do
                Control.Monad.void (BasicWeblisketSession.setTimeout ((jget (this).weblisketSession)) (jget ((jio (BooleanFactory.getInstance))).tRUE_STRING))
                (booleanValue False)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: FileAuthenticationTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: FileAuthenticationTag))

doStartTag_impl :: FileAuthenticationTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            jset (this).request ((javaCast (jio (getRequest ((jget this.base.pageContext)))) :: HttpServletRequest.HttpServletRequest))
            assignedValue <- (BasicWeblisketSession.new_1 (jget this.base.pageContext))
            jset (this).weblisketSession (assignedValue)
            Control.Monad.void (FileAuthenticationTag.getFormData this)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Started" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
            when ((jget (this).command) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).cHANGEPASSWORD)) - 1) == 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Change Password" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                    if (Prelude.not (jio (FileAuthenticationTag.changePassword this))) then do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Password Change Attempt Failed.<p>")
                        javaReturn (eVAL_BODY_INCLUDE)
                    else do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Password Changed Successfully.<p>")
                        javaReturn (sKIP_BODY)
                else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (WeblisketSessionData.iNVALIDATESESSION)) - 1) == 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "INVALIDATESESSION" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                    javaReturn =<< (FileAuthenticationTag.invalidateSession this)
                else do
                    when (jio (FileAuthenticationTag.isSessionOld this)) $ do
                        if (jio (FileAuthenticationTag.processInvalidation this)) then do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing Invalidation" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Please login again.<p>")
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (TagSupport.sKIP_BODY)
                            else do
                                javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                        else do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Preparing session for invalidation" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (TagSupport.sKIP_BODY)
                            else do
                                javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                    when (((((((jget (this).userName) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).userName) (jget (stringUtil).eMPTY_STRING)) - 1) == 0))) && ((((jget (this).password) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).password) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)))) && ((jget (this).roles) /= javaNull)) && (jio (FileAuthenticationTag.isAuthenticationSessionValid this))) $ do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Authenticated session is valid" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                        if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                            javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                        else do
                            javaReturn (TagSupport.sKIP_BODY)
                    if ((((jget (this).userName) /= javaNull) && ((jget (this).password) /= javaNull)) && (jio (FileAuthenticationTag.processIfNewLogin this))) then do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing new login." this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                        if (jio (FileAuthenticationTag.isRoleValid this)) then do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role is valid - Processing new login" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (FileAuthenticationTag.validRole this)))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (eVAL_BODY_INCLUDE)
                            else do
                                javaReturn (sKIP_BODY)
                        else do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role is not valid - Processing new login" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (FileAuthenticationTag.invalidRole this)))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (sKIP_BODY)
                            else do
                                javaReturn (eVAL_BODY_INCLUDE)
                    else do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Invalid Login" this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                        when (((((jget (this).userName) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).userName) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) && ((jget (this).password) /= javaNull)) && ((Prelude.fromEnum (Prelude.compare (jget (this).password) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) $ do
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Sorry your username and/or password is invalid.<p>")
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Major authentication error - userName: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jget (this).userName))
                        Control.Monad.void (StringMaker.append stringBuffer " Password: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jget (this).password))
                        Control.Monad.void (StringMaker.append stringBuffer " Command: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jget (this).command))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.tagStrings)).dO_START_TAG))
                    if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                        javaReturn (TagSupport.sKIP_BODY)
                    else do
                        javaReturn (TagSupport.eVAL_BODY_INCLUDE)
            pure (sKIP_BODY)


