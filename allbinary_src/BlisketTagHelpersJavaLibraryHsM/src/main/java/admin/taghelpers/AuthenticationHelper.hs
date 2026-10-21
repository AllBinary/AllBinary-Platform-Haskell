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
module AuthenticationHelper (module AuthenticationHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, invalidateSession, invalidateSession_super, invalidateSession_impl, isSessionOld, isSessionOld_super, isSessionOld_impl, isRarelyUsedSession, isRarelyUsedSession_super, isRarelyUsedSession_impl, validRole, validRole_super, validRole_impl, invalidRole, invalidRole_super, invalidRole_impl, isAuthenticated, isAuthenticated_super, isAuthenticated_impl, isAuthenticationSessionValid, isAuthenticationSessionValid_super, isAuthenticationSessionValid_impl, nextAttempt, nextAttempt_super, nextAttempt_impl, processIfNewLogin, processIfNewLogin_super, processIfNewLogin_impl, processInvalidation, processInvalidation_super, processInvalidation_impl, outputSessionInfo, outputSessionInfo_super, outputSessionInfo_impl, getRole, getRole_super, getRole_impl, logUtil, weblisketSession, authenticated, sessionUserName, role, timeout, attemptsInteger)
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
import qualified CommonStrings -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified BasicUserRole -- org.allbinary.business.user.role.BasicUserRole
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleFactory -- org.allbinary.business.user.role.UserRoleFactory
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified UserEntityInterface -- org.allbinary.data.tables.user.UserEntityInterface
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified BooleanUtil -- org.allbinary.logic.java.bool.BooleanUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TagHelper

data AuthenticationHelper = AuthenticationHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , authenticated :: IORef (String)
    , sessionUserName :: IORef (String)
    , role :: IORef (UserRole.UserRole)
    , timeout :: IORef (String)
    , attemptsInteger :: IORef (Int)
    }

instance JavaNull AuthenticationHelper where
    javaNull = javaNullRecord "AuthenticationHelper"

instance JavaEquals AuthenticationHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationHelper where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AuthenticationHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    authenticated <- newIORef ""
    sessionUserName <- newIORef ""
    role <- newIORef javaNull
    timeout <- newIORef ""
    attemptsInteger <- newIORef javaNull
    let this = AuthenticationHelper header_ base logUtil weblisketSession authenticated sessionUserName role timeout attemptsInteger
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "invalidateSession" (\() -> invalidateSession_impl this)
    jregisterMethod header_ "isSessionOld" (\() -> isSessionOld_impl this)
    jregisterMethod header_ "isRarelyUsedSession" (\() -> isRarelyUsedSession_impl this)
    jregisterMethod header_ "validRole" (\() -> validRole_impl this)
    jregisterMethod header_ "invalidRole" (\() -> invalidRole_impl this)
    jregisterMethod header_ "isAuthenticated" (\() -> isAuthenticated_impl this)
    jregisterMethod header_ "isAuthenticationSessionValid" (\() -> isAuthenticationSessionValid_impl this)
    jregisterMethod header_ "nextAttempt" (\() -> nextAttempt_impl this)
    jregisterMethod header_ "processIfNewLogin" (\() -> processIfNewLogin_impl this)
    jregisterMethod header_ "processInvalidation" (\() -> processInvalidation_impl this)
    jregisterMethod header_ "outputSessionInfo" (\() -> outputSessionInfo_impl this)
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    pure this

initFields_ :: AuthenticationHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.authenticated ("")
    jset this.sessionUserName ("")
    jset this.role (javaNull)
    jset this.timeout ("")
    jset this.attemptsInteger (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO AuthenticationHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: AuthenticationHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        init_2 this (hashMap) (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
        pure () -- this(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO AuthenticationHelper
new_2 hashMap httpServletRequest = do
    this <- newRecord_
    init_2 this hashMap httpServletRequest
    pure this

init_2 :: AuthenticationHelper -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO ()
init_2 this hashMap httpServletRequest = do
        TagHelper.init_ this.base
        initFields_ this
        assignedValue <- (WeblisketSession.new_2 hashMap httpServletRequest)
        jset (this).weblisketSession (assignedValue)
        Control.Monad.void (AuthenticationHelper.getFormData this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (AuthenticationHelper.outputSessionInfo this)) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: AuthenticationHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: AuthenticationHelper))

getFormData_impl :: AuthenticationHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (WeblisketSession.getAuthentication ((jget (this).weblisketSession)))
        jset (this).authenticated (assignedValue)
        assignedValue <- (WeblisketSession.getUserName ((jget (this).weblisketSession)))
        jset (this).sessionUserName (assignedValue)
        assignedValue <- (WeblisketSession.getRole ((jget (this).weblisketSession)))
        jset (this).role (assignedValue)
        assignedValue <- (WeblisketSession.getAttempts ((jget (this).weblisketSession)))
        jset (this).attemptsInteger (assignedValue)
        assignedValue <- (WeblisketSession.getTimeout ((jget (this).weblisketSession)))
        jset (this).timeout (assignedValue)
        pure ()


-- throws Exception
invalidateSession :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession object_ = jmethod object_ "invalidateSession" (\() -> (invalidateSession_impl (javaCast object_ :: AuthenticationHelper))) ()

invalidateSession_super :: (JavaObjectClass this_) => this_ -> IO (Int)
invalidateSession_super object_ = (invalidateSession_impl (javaCast object_ :: AuthenticationHelper))

invalidateSession_impl :: AuthenticationHelper -> IO (Int)
invalidateSession_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "invalidateSession()" e)
            pure (javaNull)
            ) $ do
            Control.Monad.void (WeblisketSession.clear ((jget (this).weblisketSession)))
            pure ((Prelude.fromIntegral ((TagSupport.eVAL_BODY_INCLUDE)) :: Int))


isSessionOld :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld object_ = jmethod object_ "isSessionOld" (\() -> (isSessionOld_impl (javaCast object_ :: AuthenticationHelper))) ()

isSessionOld_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionOld_super object_ = (isSessionOld_impl (javaCast object_ :: AuthenticationHelper))

isSessionOld_impl :: AuthenticationHelper -> IO (Bool)
isSessionOld_impl this = do
    javaCatchReturn $ do
        if ((jget (this).role) /= javaNull) then do
            timeCreated <- (WeblisketSession.getCreationTime ((jget (this).weblisketSession)))
            sessionTimout <- (UserRole.getSessionTimeout ((jget (this).role)))
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
                javaReturn (True)
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role Is Not In Session" this "isSessionOld()")
        (AuthenticationHelper.isRarelyUsedSession this)


isRarelyUsedSession :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRarelyUsedSession object_ = jmethod object_ "isRarelyUsedSession" (\() -> (isRarelyUsedSession_impl (javaCast object_ :: AuthenticationHelper))) ()

isRarelyUsedSession_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRarelyUsedSession_super object_ = (isRarelyUsedSession_impl (javaCast object_ :: AuthenticationHelper))

isRarelyUsedSession_impl :: AuthenticationHelper -> IO (Bool)
isRarelyUsedSession_impl this = do
        if ((jget (this).role) /= javaNull) then do
            timeCreated <- (WeblisketSession.getCreationTime ((jget (this).weblisketSession)))
            lastAccess <- (WeblisketSession.getLastAccessedTime ((jget (this).weblisketSession)))
            inactivityAllowed <- (UserRole.getSessionInactivityTimeout ((jget (this).role)))
            calendar <- (Calendar.getInstance)
            let timeFirst = ((jio (Calendar.getTimeInMillis calendar)) - lastAccess)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Session Is Rarely Used - Timeout: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer lastAccess)
                Control.Monad.void (StringMaker.append stringBuffer " Eval: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer timeFirst)
                Control.Monad.void (StringMaker.append stringBuffer " > ")
                Control.Monad.void (StringMaker.appendlong stringBuffer inactivityAllowed)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "isRarelyUsedSession()")
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role Is Not In Session" this "isRarelyUsedSession()")
        pure (False)


validRole :: (JavaObjectClass this_) => this_ -> IO (String)
validRole object_ = jmethod object_ "validRole" (\() -> (validRole_impl (javaCast object_ :: AuthenticationHelper))) ()

validRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
validRole_super object_ = (validRole_impl (javaCast object_ :: AuthenticationHelper))

validRole_impl :: AuthenticationHelper -> IO (String)
validRole_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set valid role"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "validRole()" e)
            pure (error)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Trying New login<p/>")
            (StringMaker.toString stringBuffer)


invalidRole :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole object_ = jmethod object_ "invalidRole" (\() -> (invalidRole_impl (javaCast object_ :: AuthenticationHelper))) ()

invalidRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
invalidRole_super object_ = (invalidRole_impl (javaCast object_ :: AuthenticationHelper))

invalidRole_impl :: AuthenticationHelper -> IO (String)
invalidRole_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set role invalid"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "invalidRole()" e)
            pure (error)
            ) $ do
            Control.Monad.void (WeblisketSession.setAuthenticated ((jget (this).weblisketSession)) False)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Sorry your username and password is invalid on this page. ")
            Control.Monad.void (StringMaker.append stringBuffer "Trying New login<p/>")
            (StringMaker.toString stringBuffer)


-- throws Exception
isAuthenticated :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticated object_ = jmethod object_ "isAuthenticated" (\() -> (isAuthenticated_impl (javaCast object_ :: AuthenticationHelper))) ()

isAuthenticated_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthenticated_super object_ = (isAuthenticated_impl (javaCast object_ :: AuthenticationHelper))

isAuthenticated_impl :: AuthenticationHelper -> IO (Bool)
isAuthenticated_impl this = do
    javaCatchReturn $ do
        if (jio (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).authenticated))) then do
            javaReturn (True)
        else do
            javaReturn (False)


isAuthenticationSessionValid :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isAuthenticationSessionValid object_ a1 = jmethod object_ "isAuthenticationSessionValid" (\() -> (isAuthenticationSessionValid_impl (javaCast object_ :: AuthenticationHelper))) () a1

isAuthenticationSessionValid_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isAuthenticationSessionValid_super object_ a1 = (isAuthenticationSessionValid_impl (javaCast object_ :: AuthenticationHelper)) a1

isAuthenticationSessionValid_impl :: AuthenticationHelper -> BasicArrayList.BasicArrayList -> IO (Bool)
isAuthenticationSessionValid_impl this roles = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isAuthenticatedSessionValid()" e)
            pure (False)
            ) $ do
            if ((jget (this).role) /= javaNull) then do
                when (jio (AuthenticationHelper.isAuthenticated this)) $ do
                    when ((jget (this).sessionUserName) /= javaNull) $ do
                        basicUserRole <- (UserRole.getBasicUserRole ((jget (this).role)))
                        basicUserRoleArray <- (BasicArrayList.toArray roles)
                        let size = (jlength basicUserRoleArray)
                        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                            let mustBeOfRole = (javaCast (jindex basicUserRoleArray (index)) :: BasicUserRole.BasicUserRole)
                            when (jio (BasicUserRole.equals basicUserRole mustBeOfRole)) $ do
                                when (jio (BasicUserRole.equals basicUserRole (jget ((jio (UserRoleFactory.getInstance))).cUSTOMER))) $ do
                                    userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
                                    userInterface <- (UserEntityInterface.getUser userEntityInterface (jget (this).sessionUserName))
                                    when (Prelude.not (jio (UserInterface.booleanValue ((jio (UserInterface.isSessionValid userInterface)))))) $ do
                                        javaReturn (False)
                                javaReturn (True)
                    javaReturn (False)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATION))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Role Is Not In Session" this "isAuthenticationSessionValid()")
            pure (False)


nextAttempt :: (JavaObjectClass this_) => this_ -> IO (())
nextAttempt object_ = jmethod object_ "nextAttempt" (\() -> (nextAttempt_impl (javaCast object_ :: AuthenticationHelper))) ()

nextAttempt_super :: (JavaObjectClass this_) => this_ -> IO (())
nextAttempt_super object_ = (nextAttempt_impl (javaCast object_ :: AuthenticationHelper))

nextAttempt_impl :: AuthenticationHelper -> IO (())
nextAttempt_impl this = do
        if (((jget (this).attemptsInteger) /= javaNull) && ((jget (this).attemptsInteger) > 0)) then do
            Control.Monad.void (WeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (((jget (this).attemptsInteger) + 1)) :: Int))
        else do
            Control.Monad.void (WeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (1) :: Int))
        pure ()


processIfNewLogin :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
processIfNewLogin object_ a1 a2 = jmethod object_ "processIfNewLogin" (\() -> (processIfNewLogin_impl (javaCast object_ :: AuthenticationHelper))) () a1 a2

processIfNewLogin_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
processIfNewLogin_super object_ a1 a2 = (processIfNewLogin_impl (javaCast object_ :: AuthenticationHelper)) a1 a2

processIfNewLogin_impl :: AuthenticationHelper -> String -> String -> IO (Bool)
processIfNewLogin_impl this userName password = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "processIfNewLogin()" e)
            pure (False)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Starting: " ++ userName) this "processIfNewLogin()")
            when ((((userName /= javaNull) && ((Prelude.fromEnum (Prelude.compare userName (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) && (password /= javaNull)) && ((Prelude.fromEnum (Prelude.compare password (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) /= 0)) $ do
                login <- newIORef ("")
                userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
                assignedValue <- (UserEntityInterface.login userEntityInterface userName password)
                jset login (assignedValue)
                when ((Prelude.fromEnum (Prelude.compare (jget login) (GLOBALS2.lOGINSUCCESS)) - 1) == 0) $ do
                    userInterface <- (UserEntityInterface.getUser userEntityInterface userName)
                    when (jio (UserInterface.booleanValue ((jio (UserInterface.isSessionValid userInterface))))) $ do
                        Control.Monad.void (WeblisketSession.setAttempts ((jget (this).weblisketSession)) (Prelude.fromIntegral (0) :: Int))
                        javaReturn (True)
                Control.Monad.void (AuthenticationHelper.nextAttempt this)
                javaReturn (False)
            Control.Monad.void (AuthenticationHelper.nextAttempt this)
            pure (False)


processInvalidation :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation object_ = jmethod object_ "processInvalidation" (\() -> (processInvalidation_impl (javaCast object_ :: AuthenticationHelper))) ()

processInvalidation_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
processInvalidation_super object_ = (processInvalidation_impl (javaCast object_ :: AuthenticationHelper))

processInvalidation_impl :: AuthenticationHelper -> IO (Bool)
processInvalidation_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).aUTHENTICATIONERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "processInvalidation()" e)
            pure (False)
            ) $ do
            when (jio (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).timeout))) $ do
                Control.Monad.void (AuthenticationHelper.invalidateSession this)
                javaReturn (True)
            do
                Control.Monad.void (WeblisketSession.setTimeout ((jget (this).weblisketSession)) (jget ((jio (BooleanFactory.getInstance))).tRUE_STRING))
                pure (False)


outputSessionInfo :: (JavaObjectClass this_) => this_ -> IO (String)
outputSessionInfo object_ = jmethod object_ "outputSessionInfo" (\() -> (outputSessionInfo_impl (javaCast object_ :: AuthenticationHelper))) ()

outputSessionInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
outputSessionInfo_super object_ = (outputSessionInfo_impl (javaCast object_ :: AuthenticationHelper))

outputSessionInfo_impl :: AuthenticationHelper -> IO (String)
outputSessionInfo_impl this = do
        handle (\(e :: JavaException) -> do
            pure ("Error")
            ) $ do
            calendar <- (Calendar.getInstance)
            timeCreated <- (WeblisketSession.getCreationTime ((jget (this).weblisketSession)))
            stringBuffer <- (StringMaker.new_)
            lastAccess <- (WeblisketSession.getLastAccessedTime ((jget (this).weblisketSession)))
            Control.Monad.void (StringMaker.append stringBuffer (("Time Since Last Access: " ++ javaToString (((jio (Calendar.getTimeInMillis calendar)) - lastAccess))) ++ "<br/>\n"))
            if ((jget (this).role) /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer "Auth: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).authenticated))
                Control.Monad.void (StringMaker.append stringBuffer " UserName: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).sessionUserName))
                Control.Monad.void (StringMaker.append stringBuffer " Role: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (UserRole.toString ((jget (this).role)))))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>\n")
                Control.Monad.void (StringMaker.append stringBuffer "Time Left: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromInteger (jnumericInteger (((jio (UserRole.getSessionTimeout ((jget (this).role)))) - (((jio (Calendar.getTimeInMillis calendar)) - timeCreated)))))))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>\n")
                Control.Monad.void (StringMaker.append stringBuffer "Inactivity Time Allowed: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer (jio (UserRole.getSessionTimeout ((jget (this).role)))))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>\n")
                Control.Monad.void (StringMaker.append stringBuffer "Inactivity Time Allowed: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer (jio (UserRole.getSessionInactivityTimeout ((jget (this).role)))))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>\n")
            else do
                Control.Monad.void (StringMaker.append stringBuffer "Role Is Not Set<br/>\n")
            (StringMaker.toString stringBuffer)


getRole :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: AuthenticationHelper))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: AuthenticationHelper))

getRole_impl :: AuthenticationHelper -> IO (UserRole.UserRole)
getRole_impl this = do
        pure ((jget (this).role))


