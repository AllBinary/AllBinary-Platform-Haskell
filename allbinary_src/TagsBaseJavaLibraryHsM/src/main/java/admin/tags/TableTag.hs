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
module TableTag (module TableTag, module PropertiesTag) where

import PropertiesTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setIsSelected, setIsSelected_super, setIsSelected_impl, isEnabled, isEnabled_super, isEnabled_impl, setTagHelperFactory, setTagHelperFactory_super, setTagHelperFactory_impl, getTagHelperFactoryInterface, getTagHelperFactoryInterface_super, getTagHelperFactoryInterface_impl, setTagRequestHelperFactory, setTagRequestHelperFactory_super, setTagRequestHelperFactory_impl, getTagRequestHelperFactoryInterface, getTagRequestHelperFactoryInterface_super, getTagRequestHelperFactoryInterface_impl, setCurrent, setCurrent_super, setCurrent_impl, getCurrent, getCurrent_super, getCurrent_impl, setTotal, setTotal_super, setTotal_impl, getTotal, getTotal_super, getTotal_impl, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, enabled, tagHelperFactoryInterface, tagRequestHelperFactoryInterface, requestObject, current, total)
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
import qualified TagStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SqlStrings -- org.allbinary.logic.communication.sql.SqlStrings
import qualified BooleanUtil -- org.allbinary.logic.java.bool.BooleanUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified PropertiesTag -- tags.PropertiesTag

data TableTag = TableTag
    { header_ :: JavaHeader
    , base :: PropertiesTag.PropertiesTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , enabled :: IORef (String)
    , tagHelperFactoryInterface :: IORef (TagHelperFactoryInterface.TagHelperFactoryInterface)
    , tagRequestHelperFactoryInterface :: IORef (TagHelperFactoryInterface.TagHelperFactoryInterface)
    , requestObject :: IORef (Any.Any)
    , current :: IORef (Int)
    , total :: IORef (Int)
    }

instance JavaNull TableTag where
    javaNull = javaNullRecord "TableTag"

instance JavaEquals TableTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TableTag where
    (==) = jrecordEquals

instance JavaObjectClass TableTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TableTag
newRecord_ = do
    base <- PropertiesTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    enabled <- newIORef ""
    tagHelperFactoryInterface <- newIORef javaNull
    tagRequestHelperFactoryInterface <- newIORef javaNull
    requestObject <- newIORef javaNull
    current <- newIORef javaNull
    total <- newIORef javaNull
    let this = TableTag header_ base logUtil enabled tagHelperFactoryInterface tagRequestHelperFactoryInterface requestObject current total
    jregisterLevel header_ this
    jregisterMethod header_ "setIsSelected" (\() -> setIsSelected_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    jregisterMethod header_ "setTagHelperFactory" (\() -> setTagHelperFactory_impl this)
    jregisterMethod header_ "getTagHelperFactoryInterface" (\() -> getTagHelperFactoryInterface_impl this)
    jregisterMethod header_ "setTagRequestHelperFactory" (\() -> setTagRequestHelperFactory_impl this)
    jregisterMethod header_ "getTagRequestHelperFactoryInterface" (\() -> getTagRequestHelperFactoryInterface_impl this)
    jregisterMethod header_ "setCurrent" (\() -> setCurrent_impl this)
    jregisterMethod header_ "getCurrent" (\() -> getCurrent_impl this)
    jregisterMethod header_ "setTotal" (\() -> setTotal_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: TableTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.enabled ("")
    jset this.tagHelperFactoryInterface (javaNull)
    jset this.tagRequestHelperFactoryInterface (javaNull)
    jset this.requestObject (javaNull)
    jset this.current (javaNull)
    jset this.total (javaNull)
    pure ()

new_ :: IO TableTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TableTag -> IO ()
init_ this = do
        PropertiesTag.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


setIsSelected :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIsSelected object_ a1 = jmethod object_ "setIsSelected" (\() -> (setIsSelected_impl (javaCast object_ :: TableTag))) () a1

setIsSelected_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIsSelected_super object_ a1 = (setIsSelected_impl (javaCast object_ :: TableTag)) a1

setIsSelected_impl :: TableTag -> String -> IO (())
setIsSelected_impl this enabled = do
        jset (this).enabled (enabled)
        pure ()


-- throws Exception
isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: TableTag))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: TableTag))

isEnabled_impl :: TableTag -> IO (Bool)
isEnabled_impl this = do
    javaCatchReturn $ do
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).enabled)))) $ do
            when ((jio (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).enabled))) || ((Prelude.fromEnum (Prelude.compare (jget (this).enabled) "on") - 1) == 0)) $ do
                javaReturn (True)
        pure (False)


setTagHelperFactory :: (JavaObjectClass this_) => this_ -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagHelperFactory object_ a1 = jmethod object_ "setTagHelperFactory" (\() -> (setTagHelperFactory_impl (javaCast object_ :: TableTag))) () a1

setTagHelperFactory_super :: (JavaObjectClass this_) => this_ -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagHelperFactory_super object_ a1 = (setTagHelperFactory_impl (javaCast object_ :: TableTag)) a1

setTagHelperFactory_impl :: TableTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagHelperFactory_impl this tagHelperFactoryInterface = do
        jset (this).tagHelperFactoryInterface (tagHelperFactoryInterface)
        pure ()


getTagHelperFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagHelperFactoryInterface object_ = jmethod object_ "getTagHelperFactoryInterface" (\() -> (getTagHelperFactoryInterface_impl (javaCast object_ :: TableTag))) ()

getTagHelperFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagHelperFactoryInterface_super object_ = (getTagHelperFactoryInterface_impl (javaCast object_ :: TableTag))

getTagHelperFactoryInterface_impl :: TableTag -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagHelperFactoryInterface_impl this = do
        pure ((jget (this).tagHelperFactoryInterface))


setTagRequestHelperFactory :: (JavaObjectClass this_) => this_ -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagRequestHelperFactory object_ a1 = jmethod object_ "setTagRequestHelperFactory" (\() -> (setTagRequestHelperFactory_impl (javaCast object_ :: TableTag))) () a1

setTagRequestHelperFactory_super :: (JavaObjectClass this_) => this_ -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagRequestHelperFactory_super object_ a1 = (setTagRequestHelperFactory_impl (javaCast object_ :: TableTag)) a1

setTagRequestHelperFactory_impl :: TableTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO (())
setTagRequestHelperFactory_impl this tagHelperFactoryInterface = do
        jset (this).tagRequestHelperFactoryInterface (tagHelperFactoryInterface)
        pure ()


getTagRequestHelperFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagRequestHelperFactoryInterface object_ = jmethod object_ "getTagRequestHelperFactoryInterface" (\() -> (getTagRequestHelperFactoryInterface_impl (javaCast object_ :: TableTag))) ()

getTagRequestHelperFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagRequestHelperFactoryInterface_super object_ = (getTagRequestHelperFactoryInterface_impl (javaCast object_ :: TableTag))

getTagRequestHelperFactoryInterface_impl :: TableTag -> IO (TagHelperFactoryInterface.TagHelperFactoryInterface)
getTagRequestHelperFactoryInterface_impl this = do
        pure ((jget (this).tagRequestHelperFactoryInterface))


setCurrent :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrent object_ a1 = jmethod object_ "setCurrent" (\() -> (setCurrent_impl (javaCast object_ :: TableTag))) () a1

setCurrent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrent_super object_ a1 = (setCurrent_impl (javaCast object_ :: TableTag)) a1

setCurrent_impl :: TableTag -> Int -> IO (())
setCurrent_impl this current = do
        jset (this).current (current)
        pure ()


getCurrent :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent object_ = jmethod object_ "getCurrent" (\() -> (getCurrent_impl (javaCast object_ :: TableTag))) ()

getCurrent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent_super object_ = (getCurrent_impl (javaCast object_ :: TableTag))

getCurrent_impl :: TableTag -> IO (Int)
getCurrent_impl this = do
        pure ((jget (this).current))


setTotal :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal object_ a1 = jmethod object_ "setTotal" (\() -> (setTotal_impl (javaCast object_ :: TableTag))) () a1

setTotal_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal_super object_ a1 = (setTotal_impl (javaCast object_ :: TableTag)) a1

setTotal_impl :: TableTag -> Int -> IO (())
setTotal_impl this total = do
        jset (this).total (total)
        pure ()


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: TableTag))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: TableTag))

getTotal_impl :: TableTag -> IO (Int)
getTotal_impl this = do
        pure ((jget (this).total))


-- throws LicensingException
drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: TableTag))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: TableTag))

drop_impl :: TableTag -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagHelperFactoryInterface this))) (jio (PropertiesTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "drop" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: TableTag))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: TableTag))

create_impl :: TableTag -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagHelperFactoryInterface this))) (jio (PropertiesTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "create" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: TableTag))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: TableTag))

restore_impl :: TableTag -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagHelperFactoryInterface this))) (jio (PropertiesTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "restore" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: TableTag))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: TableTag))

backup_impl :: TableTag -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagHelperFactoryInterface this))) (jio (PropertiesTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "backup" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: TableTag))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: TableTag))

insert_impl :: TableTag -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to insert"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "insert()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).requestObject))
            method <- (Class.getMethod helperClass "insert" javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).requestObject) javaNull)) :: String)
            pure (result)


-- throws LicensingException
delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: TableTag))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: TableTag))

delete_impl :: TableTag -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to delete"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).requestObject))
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.commonStrings)).delete) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).requestObject) javaNull)) :: String)
            pure (result)


-- throws LicensingException
update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TableTag))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: TableTag))

update_impl :: TableTag -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).requestObject))
            method <- (Class.getMethod helperClass "update" javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).requestObject) javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: TableTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: TableTag))

doStartTag_impl :: TableTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                let request = (javaCast (jio (getRequest ((jget (this).base.pageContext)))) :: HttpServletRequest.HttpServletRequest)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "TableTag Helper: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass (jio (TableTag.getTagHelperFactoryInterface this))))))))
                Control.Monad.void (StringMaker.append stringBuffer " Request URI: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (HttpServletRequest.getRequestURI request)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.tagStrings)).dO_START_TAG))
            if ((jio (TableTag.getTagRequestHelperFactoryInterface this)) /= javaNull) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TableTag RequestHelper: " ++ (jio (Class.getName ((jio (jobjectGetClass (jio (TableTag.getTagRequestHelperFactoryInterface this)))))))) this (jget ((jget (this).base.base.tagStrings)).dO_START_TAG))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "TableTag RequestHelper: null" this (jget ((jget (this).base.base.tagStrings)).dO_START_TAG))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TableTag this.getCommand(): " ++ javaToString (jio (PropertiesTag.getCommand this))) this (jget ((jget this.base.base.tagStrings)).dO_START_TAG))
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (PropertiesTag.getCommand this)) /= javaNull) $ do
                    when ((((((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget (this).base.base.base.commonStrings)).iNSERT)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jio (SqlStrings.getInstance))).iNSERT_INTO)) - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).dELETE)) - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).uPDATE)) - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jio (SqlStrings.getInstance))).uPDATE)) - 1) == 0)) $ do
                        assignedValue <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagRequestHelperFactoryInterface this))) (jio (PropertiesTag.getPropertiesHashMap this)) (jget this.base.pageContext))
                        jset (this).requestObject (assignedValue)
                    if (((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget (this).base.base.base.commonStrings)).iNSERT)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jio (SqlStrings.getInstance))).iNSERT_INTO)) - 1) == 0)) then do
                        Control.Monad.void (TableTag.insert this)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).dELETE)) - 1) == 0) then do
                        Control.Monad.void (TableTag.delete this)
                    else when (((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).uPDATE)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jio (SqlStrings.getInstance))).uPDATE)) - 1) == 0)) $ do
                        Control.Monad.void (TableTag.update this)
                    if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).bACKUP)) - 1) == 0) then do
                        output <- (TableTag.backup this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                        javaReturn (sKIP_BODY)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).rESTORE)) - 1) == 0) then do
                        Control.Monad.void (HashMap.put ((jio (PropertiesTag.getPropertiesHashMap this))) "current" (jio (TableTag.getCurrent this)))
                        Control.Monad.void (HashMap.put ((jio (PropertiesTag.getPropertiesHashMap this))) "total" (jio (TableTag.getTotal this)))
                        output <- (TableTag.restore this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                        javaReturn (sKIP_BODY)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).dROP)) - 1) == 0) then do
                        output <- (TableTag.drop this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                        javaReturn (sKIP_BODY)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).cREATE)) - 1) == 0) then do
                        output <- (TableTag.create this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                        javaReturn (sKIP_BODY)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).iNSERT)) - 1) == 0) then do
                        output <- (TableTag.insert this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                    else if ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).dELETE)) - 1) == 0) then do
                        output <- (TableTag.delete this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                    else when ((Prelude.fromEnum (Prelude.compare (jio (PropertiesTag.getCommand this)) (jget ((jget this.base.base.base.commonStrings)).uPDATE)) - 1) == 0) $ do
                        output <- (TableTag.update this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
            pure (eVAL_BODY_INCLUDE)


