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
module AuthenticationTag (module AuthenticationTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, setUserName, setUserName_super, setUserName_impl, setPassword, setPassword_super, setPassword_impl, setNewPassword, setNewPassword_super, setNewPassword_impl, setRoles, setRoles_super, setRoles_impl, changePassword, changePassword_super, changePassword_impl, newPassword, newPassword_super, newPassword_impl, invalidateSession, invalidateSession_super, invalidateSession_impl, isSessionOld, isSessionOld_super, isSessionOld_impl, isRoleValid, isRoleValid_super, isRoleValid_impl, validRole, validRole_super, validRole_impl, invalidRole, invalidRole_super, invalidRole_impl, isAuthenticationSessionValid, isAuthenticationSessionValid_super, isAuthenticationSessionValid_impl, processIfNewLogin, processIfNewLogin_super, processIfNewLogin_impl, processInvalidation, processInvalidation_super, processInvalidation_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, command, userName, password, newPassword, roles, propertiesHashMap)
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
import qualified Class -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified AuthenticationHelperFactory -- admin.taghelpers.AuthenticationHelperFactory
import qualified AuthenticationRequestHelperFactory -- admin.taghelpers.AuthenticationRequestHelperFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified WeblisketSessionData -- org.allbinary.logic.communication.http.request.session.WeblisketSessionData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport

data AuthenticationTag = AuthenticationTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , command :: IORef (String)
    , userName :: IORef (String)
    , password :: IORef (String)
    , newPassword :: IORef (String)
    , roles :: IORef (BasicArrayList.BasicArrayList)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull AuthenticationTag where
    javaNull = javaNullRecord "AuthenticationTag"

instance JavaEquals AuthenticationTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationTag where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AuthenticationTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    command <- newIORef ""
    userName <- newIORef ""
    password <- newIORef ""
    newPassword <- newIORef ""
    roles <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    let this = AuthenticationTag header_ base logUtil command userName password newPassword roles propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setNewPassword" (\() -> setNewPassword_impl this)
    jregisterMethod header_ "setRoles" (\() -> setRoles_impl this)
    jregisterMethod header_ "changePassword" (\() -> changePassword_impl this)
    jregisterMethod header_ "newPassword" (\() -> newPassword_impl this)
    jregisterMethod header_ "invalidateSession" (\() -> invalidateSession_impl this)
    jregisterMethod header_ "isSessionOld" (\() -> isSessionOld_impl this)
    jregisterMethod header_ "isRoleValid" (\() -> isRoleValid_impl this)
    jregisterMethod header_ "validRole" (\() -> validRole_impl this)
    jregisterMethod header_ "invalidRole" (\() -> invalidRole_impl this)
    jregisterMethod header_ "isAuthenticationSessionValid" (\() -> isAuthenticationSessionValid_impl this)
    jregisterMethod header_ "processIfNewLogin" (\() -> processIfNewLogin_impl this)
    jregisterMethod header_ "processInvalidation" (\() -> processInvalidation_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: AuthenticationTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.command ("")
    jset this.userName (javaNull)
    jset this.password (javaNull)
    jset this.newPassword ("")
    jset this.roles (javaNull)
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO AuthenticationTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthenticationTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        stringUtil <- (StringUtil.getInstance)
        jset (this).userName ((jget (stringUtil).eMPTY_STRING))
        jset (this).password ((jget (stringUtil).eMPTY_STRING))
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: AuthenticationTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: AuthenticationTag)) a1

setCommand_impl :: AuthenticationTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: AuthenticationTag))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: AuthenticationTag)) a1

setUserName_impl :: AuthenticationTag -> String -> IO (())
setUserName_impl this userName = do
        jset (this).userName (userName)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: AuthenticationTag))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: AuthenticationTag)) a1

setPassword_impl :: AuthenticationTag -> String -> IO (())
setPassword_impl this value = do
        jset (this).password (value)
        pure ()


setNewPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewPassword object_ a1 = jmethod object_ "setNewPassword" (\() -> (setNewPassword_impl (javaCast object_ :: AuthenticationTag))) () a1

setNewPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewPassword_super object_ a1 = (setNewPassword_impl (javaCast object_ :: AuthenticationTag)) a1

setNewPassword_impl :: AuthenticationTag -> String -> IO (())
setNewPassword_impl this value = do
        jset (this).newPassword (value)
        pure ()


setRoles :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRoles object_ a1 = jmethod object_ "setRoles" (\() -> (setRoles_impl (javaCast object_ :: AuthenticationTag))) () a1

setRoles_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setRoles_super object_ a1 = (setRoles_impl (javaCast object_ :: AuthenticationTag)) a1

setRoles_impl :: AuthenticationTag -> BasicArrayList.BasicArrayList -> IO (())
setRoles_impl this values = do
        jset (this).roles (values)
        pure ()


-- throws LicensingException
changePassword :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword object_ = jmethod object_ "changePassword" (\() -> (changePassword_impl (javaCast object_ :: AuthenticationTag))) ()

changePassword_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword_super object_ = (changePassword_impl (javaCast object_ :: AuthenticationTag))

changePassword_impl :: AuthenticationTag -> IO (Bool)
changePassword_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationRequestHelperFactory.getInstance ((jio (AuthenticationRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "changePassword" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (result)


-- throws LicensingException
newPassword :: (JavaObjectClass this_) => this_ -> IO (Bool)
newPassword object_ = jmethod object_ "newPassword" (\() -> (newPassword_impl (javaCast object_ :: AuthenticationTag))) ()

newPassword_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
newPassword_super object_ = (newPassword_impl (javaCast object_ :: AuthenticationTag))

newPassword_impl :: AuthenticationTag -> IO (Bool)
newPassword_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationRequestHelperFactory.getInstance ((jio (AuthenticationRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "newPassword" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (result)


-- throws LicensingException
invalidateSession :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession object_ = jmethod object_ "invalidateSession" (\() -> (invalidateSession_impl (javaCast object_ :: AuthenticationTag))) ()

invalidateSession_super :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession_super object_ = (invalidateSession_impl (javaCast object_ :: AuthenticationTag))

invalidateSession_impl :: AuthenticationTag -> IO (Int)
invalidateSession_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "invalidateSession" javaNull)
            let resultInteger = (javaCast (jio (Method.invoke method anyType javaNull)) :: Int)
            pure (resultInteger)


-- throws LicensingException
isSessionOld :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld object_ = jmethod object_ "isSessionOld" (\() -> (isSessionOld_impl (javaCast object_ :: AuthenticationTag))) ()

isSessionOld_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld_super object_ = (isSessionOld_impl (javaCast object_ :: AuthenticationTag))

isSessionOld_impl :: AuthenticationTag -> IO (Bool)
isSessionOld_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "isSessionOld" javaNull)
            let resultBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (resultBoolean)


-- throws LicensingException
isRoleValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoleValid object_ = jmethod object_ "isRoleValid" (\() -> (isRoleValid_impl (javaCast object_ :: AuthenticationTag))) ()

isRoleValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoleValid_super object_ = (isRoleValid_impl (javaCast object_ :: AuthenticationTag))

isRoleValid_impl :: AuthenticationTag -> IO (Bool)
isRoleValid_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationRequestHelperFactory.getInstance ((jio (AuthenticationRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            let methodParams = (jarrayFromList [(jio (jobjectGetClass (jget (this).userName))), (jio (jobjectGetClass (jget (this).password))), (jio (jobjectGetClass (jget (this).roles)))])
            method <- (Class.getMethod addressHelperClass "isRoleValid" methodParams)
            let methodArgs = (jarrayFromList [(jget (this).userName), (jget (this).password), (jget (this).roles)])
            let resultBoolean = (javaCast (jio (Method.invoke method anyType methodArgs)) :: Bool)
            pure (resultBoolean)


-- throws LicensingException
validRole :: (JavaObjectClass this_) => this_ -> IO (String)
validRole object_ = jmethod object_ "validRole" (\() -> (validRole_impl (javaCast object_ :: AuthenticationTag))) ()

validRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
validRole_super object_ = (validRole_impl (javaCast object_ :: AuthenticationTag))

validRole_impl :: AuthenticationTag -> IO (String)
validRole_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "validRole" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
invalidRole :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole object_ = jmethod object_ "invalidRole" (\() -> (invalidRole_impl (javaCast object_ :: AuthenticationTag))) ()

invalidRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole_super object_ = (invalidRole_impl (javaCast object_ :: AuthenticationTag))

invalidRole_impl :: AuthenticationTag -> IO (String)
invalidRole_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "invalidRole" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
isAuthenticationSessionValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticationSessionValid object_ = jmethod object_ "isAuthenticationSessionValid" (\() -> (isAuthenticationSessionValid_impl (javaCast object_ :: AuthenticationTag))) ()

isAuthenticationSessionValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticationSessionValid_super object_ = (isAuthenticationSessionValid_impl (javaCast object_ :: AuthenticationTag))

isAuthenticationSessionValid_impl :: AuthenticationTag -> IO (Bool)
isAuthenticationSessionValid_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            let methodParams = (jarrayFromList [(jio (jobjectGetClass (jget (this).roles)))])
            method <- (Class.getMethod addressHelperClass "isAuthenticationSessionValid" methodParams)
            let methodArgs = (jarrayFromList [(jget (this).roles)])
            let resultBoolean = (javaCast (jio (Method.invoke method anyType methodArgs)) :: Bool)
            pure (resultBoolean)


-- throws LicensingException
processIfNewLogin :: (JavaObjectClass this_) => this_ -> IO (Bool)
processIfNewLogin object_ = jmethod object_ "processIfNewLogin" (\() -> (processIfNewLogin_impl (javaCast object_ :: AuthenticationTag))) ()

processIfNewLogin_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
processIfNewLogin_super object_ = (processIfNewLogin_impl (javaCast object_ :: AuthenticationTag))

processIfNewLogin_impl :: AuthenticationTag -> IO (Bool)
processIfNewLogin_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            let methodParams = (jarrayFromList [(jio (jobjectGetClass (jget (this).userName))), (jio (jobjectGetClass (jget (this).password)))])
            method <- (Class.getMethod helperClass "processIfNewLogin" methodParams)
            let methodArgs = (jarrayFromList [(jget (this).userName), (jget (this).password)])
            let resultBoolean = (javaCast (jio (Method.invoke method anyType methodArgs)) :: Bool)
            pure (resultBoolean)


-- throws LicensingException
processInvalidation :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation object_ = jmethod object_ "processInvalidation" (\() -> (processInvalidation_impl (javaCast object_ :: AuthenticationTag))) ()

processInvalidation_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation_super object_ = (processInvalidation_impl (javaCast object_ :: AuthenticationTag))

processInvalidation_impl :: AuthenticationTag -> IO (Bool)
processInvalidation_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "processInvalidation" javaNull)
            let resultBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (resultBoolean)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: AuthenticationTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: AuthenticationTag))

doStartTag_impl :: AuthenticationTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                let request = (javaCast (jio (getRequest ((jget (this).base.pageContext)))) :: HttpServletRequest.HttpServletRequest)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer " Request URI: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (HttpServletRequest.getRequestURI request)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.tagStrings)).dO_START_TAG))
            when ((jget (this).command) /= javaNull) $ do
                assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
                jset (this).propertiesHashMap (assignedValue)
                if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).nEWPASSWORD)) - 1) == 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New Password" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                    if (Prelude.not (jio (AuthenticationTag.newPassword this))) then do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "New Password Request Failed.<p/>")
                        javaReturn (eVAL_BODY_INCLUDE)
                    else do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "New Password Was Sent.<p/>")
                        javaReturn (sKIP_BODY)
                else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).cHANGEPASSWORD)) - 1) == 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Change Password" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                    if (Prelude.not (jio (AuthenticationTag.changePassword this))) then do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Password Change Attempt Failed.<p/>")
                        javaReturn (eVAL_BODY_INCLUDE)
                    else do
                        Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Password Changed Successfully.<p/>")
                        javaReturn (sKIP_BODY)
                else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (WeblisketSessionData.iNVALIDATESESSION)) - 1) == 0) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "INVALIDATESESSION" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                    javaReturn =<< (AuthenticationTag.invalidateSession this)
                else do
                    when (jio (AuthenticationTag.isSessionOld this)) $ do
                        if (jio (AuthenticationTag.processInvalidation this)) then do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing Invalidation" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Please login again.<p>")
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (TagSupport.sKIP_BODY)
                            else do
                                javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                        else do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Preparing session for invalidation" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (TagSupport.sKIP_BODY)
                            else do
                                javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                    when (((((((jget (this).userName) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).userName) (jget (stringUtil).eMPTY_STRING)) - 1) == 0))) && ((((jget (this).password) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).password) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)))) && ((jget (this).roles) /= javaNull)) && (jio (AuthenticationTag.isAuthenticationSessionValid this))) $ do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Authenticated session is valid" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                        if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                            javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                        else do
                            javaReturn (TagSupport.sKIP_BODY)
                    if ((((jget (this).userName) /= javaNull) && ((jget (this).password) /= javaNull)) && (jio (AuthenticationTag.processIfNewLogin this))) then do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing new login." this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                        if (jio (AuthenticationTag.isRoleValid this)) then do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role is valid - Processing new login" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (AuthenticationTag.validRole this)))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (eVAL_BODY_INCLUDE)
                            else do
                                javaReturn (sKIP_BODY)
                        else do
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role is not valid - Processing new login" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (AuthenticationTag.invalidRole this)))
                            if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                                javaReturn (sKIP_BODY)
                            else do
                                javaReturn (eVAL_BODY_INCLUDE)
                    else do
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Invalid Login" this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                        when (((((jget (this).userName) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).userName) (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) && ((jget (this).password) /= javaNull)) && ((Prelude.fromEnum (Prelude.compare (jget (this).password) (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) $ do
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) "Sorry your username and/or password is invalid.<p/>")
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Major authentication error - userName: "))) (jget (this).userName)))) " Password: "))) (jget (this).password)))) " Command: "))) (jget (this).command)))))) this (jget ((jget this.base.tagStrings)).dO_START_TAG))
                    if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).pROCESSBODYIFAUTHENTICATED)) - 1) == 0) then do
                        javaReturn (TagSupport.sKIP_BODY)
                    else do
                        javaReturn (TagSupport.eVAL_BODY_INCLUDE)
            pure (sKIP_BODY)


