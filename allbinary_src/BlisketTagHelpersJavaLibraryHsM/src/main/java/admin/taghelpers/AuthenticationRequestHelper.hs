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
module AuthenticationRequestHelper (module AuthenticationRequestHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, generateNewPassword, generateNewPassword_super, generateNewPassword_impl, newPassword, newPassword_super, newPassword_impl, changePassword, changePassword_super, changePassword_impl, isRoleValid, isRoleValid_super, isRoleValid_impl, logUtil, abeClientInformation, weblisketSession, request)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified UserData -- org.allbinary.business.user.UserData
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified Password -- org.allbinary.business.user.password.Password
import qualified BasicUserRole -- org.allbinary.business.user.role.BasicUserRole
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified UserEntityInterface -- org.allbinary.data.tables.user.UserEntityInterface
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified WeblisketSessionData -- org.allbinary.logic.communication.http.request.session.WeblisketSessionData
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified NewPasswordEmail -- org.allbinary.logic.communication.smtp.email.NewPasswordEmail
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TagHelper

data AuthenticationRequestHelper = AuthenticationRequestHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    }

instance JavaNull AuthenticationRequestHelper where
    javaNull = javaNullRecord "AuthenticationRequestHelper"

instance JavaEquals AuthenticationRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthenticationRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass AuthenticationRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AuthenticationRequestHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    request <- newIORef javaNull
    let this = AuthenticationRequestHelper header_ base logUtil abeClientInformation weblisketSession request
    jregisterLevel header_ this
    jregisterMethod header_ "generateNewPassword" (\() -> generateNewPassword_impl this)
    jregisterMethod header_ "newPassword" (\() -> newPassword_impl this)
    jregisterMethod header_ "changePassword" (\() -> changePassword_impl this)
    jregisterMethod header_ "isRoleValid" (\() -> isRoleValid_impl this)
    pure this

initFields_ :: AuthenticationRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.request (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO AuthenticationRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: AuthenticationRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO AuthenticationRequestHelper
new_2 hashMap httpServletRequest = do
    this <- newRecord_
    init_2 this hashMap httpServletRequest
    pure this

init_2 :: AuthenticationRequestHelper -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO ()
init_2 this hashMap httpServletRequest = do
        TagHelper.init_ this.base
        initFields_ this
        assignedValue <- (WeblisketSession.new_2 hashMap httpServletRequest)
        jset (this).weblisketSession (assignedValue)
        jset (this).request (httpServletRequest)
        pure ()


-- throws Exception
generateNewPassword :: (JavaObjectClass this_) => this_ -> IO (String)
generateNewPassword object_ = jmethod object_ "generateNewPassword" (\() -> (generateNewPassword_impl (javaCast object_ :: AuthenticationRequestHelper))) ()

generateNewPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateNewPassword_super object_ = (generateNewPassword_impl (javaCast object_ :: AuthenticationRequestHelper))

generateNewPassword_impl :: AuthenticationRequestHelper -> IO (String)
generateNewPassword_impl this = do
    javaCatchReturn $ do
        if (((jget (this).weblisketSession) /= javaNull) && ((jio (WeblisketSession.getId ((jget (this).weblisketSession)))) /= javaNull)) then do
            let startIndex = (Prelude.length (jio (WeblisketSession.getId ((jget (this).weblisketSession)))))
            if (startIndex >= 8) then do
                javaReturn ((Prelude.drop (startIndex - 8) (jio (WeblisketSession.getId ((jget (this).weblisketSession))))))
            else do
                javaThrow ((JavaException "Exception" "Error Generating New Password"))
        else do
            javaThrow ((JavaException "Exception" "No Session Available For Generating New Password"))


newPassword :: (JavaObjectClass this_) => this_ -> IO (Bool)
newPassword object_ = jmethod object_ "newPassword" (\() -> (newPassword_impl (javaCast object_ :: AuthenticationRequestHelper))) ()

newPassword_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
newPassword_super object_ = (newPassword_impl (javaCast object_ :: AuthenticationRequestHelper))

newPassword_impl :: AuthenticationRequestHelper -> IO (Bool)
newPassword_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "newPassword()" e)
            pure (False)
            ) $ do
            userName <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
            email <- (HttpServletRequest.getParameter ((jget (this).request)) (UserData.mAINEMAIL))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Generating New Password For: " ++ userName) this "newPassword()")
            userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
            userInterface <- (UserEntityInterface.getUser userEntityInterface userName)
            when ((jio (UserInterface.compareTo ((jio (UserInterface.getMainEmail userInterface))) email)) /= 0) $ do
                when (((jio (UserInterface.getSecondaryEmail userInterface)) /= javaNull) && ((jio (UserInterface.compareTo ((jio (UserInterface.getSecondaryEmail userInterface))) email)) /= 0)) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Requested Email Is Not In User Profile" this "newPassword()")
                    javaReturn (False)
            newPassword <- (AuthenticationRequestHelper.generateNewPassword this)
            Control.Monad.void (UserInterface.setPassword userInterface newPassword)
            newPasswordHashMap <- (UserInterface.toPasswordHashMap userInterface)
            Control.Monad.void (UserEntity.update ((jio (UserEntityFactory.getInstance))) userName newPasswordHashMap)
            Control.Monad.void (NewPasswordEmail.process ((jio (NewPasswordEmail.new_3 (jget (this).abeClientInformation) userInterface newPassword))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Generated New Password For: " ++ userName) this "newPassword()")
            pure (True)


changePassword :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword object_ = jmethod object_ "changePassword" (\() -> (changePassword_impl (javaCast object_ :: AuthenticationRequestHelper))) ()

changePassword_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
changePassword_super object_ = (changePassword_impl (javaCast object_ :: AuthenticationRequestHelper))

changePassword_impl :: AuthenticationRequestHelper -> IO (Bool)
changePassword_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Authentication Failed" this "changePassword()" e)
            pure (False)
            ) $ do
            userName <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
            passwordString <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEPASSWORD))
            newPassword <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLENEWPASSWORD))
            newReenteredPassword <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEREENTERNEWPASSWORD))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Changing Password For User: " ++ userName) this "changePassword()")
            password <- (Password.new_1 newPassword)
            when (Prelude.not (jio (Password.isValid password))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New Password Is Not Valid" this "changePassword()")
                javaReturn (False)
            when ((Prelude.fromEnum (Prelude.compare newPassword newReenteredPassword) - 1) /= 0) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "New Password Fields Do Not Match" this "changePassword()")
                javaReturn (False)
            sessionPassword <- (WeblisketSession.getPassword ((jget (this).weblisketSession)))
            userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
            userInterface <- (UserEntityInterface.getUser userEntityInterface userName)
            login <- (UserEntityInterface.login userEntityInterface userName passwordString)
            when ((Prelude.fromEnum (Prelude.compare login (GLOBALS2.lOGINSUCCESS)) - 1) == 0) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Authentication Successful" this "changePassword()")
                newPasswordHashMap <- (Password.toHashMap password javaNull)
                Control.Monad.void (UserEntity.update ((jio (UserEntityFactory.getInstance))) userName newPasswordHashMap)
                Control.Monad.void (NewPasswordEmail.process ((jio (NewPasswordEmail.new_3 (jget (this).abeClientInformation) userInterface newPassword))))
                javaReturn (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Authentication Failed" this "changePassword()")
            pure (False)


isRoleValid :: (JavaObjectClass this_) => this_ -> String -> String -> BasicArrayList.BasicArrayList -> IO (Bool)
isRoleValid object_ a1 a2 a3 = jmethod object_ "isRoleValid" (\() -> (isRoleValid_impl (javaCast object_ :: AuthenticationRequestHelper))) () a1 a2 a3

isRoleValid_super :: (JavaObjectClass this_) => this_ -> String -> String -> BasicArrayList.BasicArrayList -> IO (Bool)
isRoleValid_super object_ a1 a2 a3 = (isRoleValid_impl (javaCast object_ :: AuthenticationRequestHelper)) a1 a2 a3

isRoleValid_impl :: AuthenticationRequestHelper -> String -> String -> BasicArrayList.BasicArrayList -> IO (Bool)
isRoleValid_impl this userName password roles = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "isRoleValid()" e)
            pure (False)
            ) $ do
            userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
            userInterface <- (UserEntityInterface.getUser userEntityInterface userName)
            when ((jio (UserInterface.getRole userInterface)) == javaNull) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Role is null: " ++ javaToString (jio (UserInterface.getRole userInterface))) ++ " Valid Roles: ") ++ (jio (BasicArrayList.toString roles))) this "isRoleValid()")
                javaReturn (False)
            basicUserRoleArray <- (BasicArrayList.toArray roles)
            let size = (jlength basicUserRoleArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let nextRole = (javaCast (jindex basicUserRoleArray (index)) :: BasicUserRole.BasicUserRole)
                when (jio (UserInterface.equals ((jio (UserInterface.getBasicUserRole ((jio (UserInterface.getRole userInterface)))))) nextRole)) $ do
                    Control.Monad.void (UserInterface.validateSession userInterface (javaCast (jget (this).weblisketSession) :: WeblisketSessionInterface.WeblisketSessionInterface))
                    Control.Monad.void (HttpServletRequest.removeAttribute ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
                    Control.Monad.void (HttpServletRequest.removeAttribute ((jget (this).request)) (WeblisketSessionData.rEMOVABLEPASSWORD))
                    javaReturn (True)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Role is not valid: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (UserInterface.toString ((jio (UserInterface.getRole userInterface))))))
                Control.Monad.void (StringMaker.append stringBuffer " Valid Roles: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (BasicArrayList.toString roles)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "isRoleValid()")
            pure (False)


