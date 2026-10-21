{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidKeyFactory (module AndroidKeyFactory, module ActivityFractureUtil) where

import ActivityFractureUtil hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isSubmission, isSubmission_super, isSubmission_impl, isDelete, isDelete_super, isDelete_impl, isBackSpace, isBackSpace_super, isBackSpace_impl, isLeft, isLeft_super, isLeft_impl, isRight, isRight_super, isRight_impl, isUp, isUp_super, isUp_impl, isDown, isDown_super, isDown_impl, isEnter, isEnter_super, isEnter_impl, logUtil, uNKNOWN, kEYCODE_BUTTON_L1, kEYCODE_BUTTON_R1, kEYCODE_BUTTON_THUMBR, kEYCODE_BUTTON_THUMBL, kEYCODE_BUTTON_START, kEYCODE_BUTTON_MODE, kEYCODE_BUTTON_B, kEYCODE_BUTTON_A, kEYCODE_BUTTON_X, kEYCODE_BUTTON_Y, kEYCODE_BUTTON_L2, kEYCODE_BUTTON_R2, kEYCODE_BUTTON_SELECT, kEYCODE_BUTTON_C, kEYCODE_BUTTON_Z, kEYCODE_BUTTON_1, kEYCODE_BUTTON_10, kEYCODE_BUTTON_11, kEYCODE_BUTTON_12, kEYCODE_BUTTON_13, kEYCODE_BUTTON_14, kEYCODE_BUTTON_15, kEYCODE_BUTTON_16, kEYCODE_BUTTON_2, kEYCODE_BUTTON_3, kEYCODE_BUTTON_4, kEYCODE_BUTTON_5, kEYCODE_BUTTON_6, kEYCODE_BUTTON_7, kEYCODE_BUTTON_8, kEYCODE_BUTTON_9, sOFT_LEFT, sOFT_RIGHT, hOME, bACK, cALL, eNDCALL, zERO, oNE, tWO, tHREE, fOUR, fIVE, sIX, sEVEN, eIGHT, nINE, sTAR, pOUND, dPAD_UP, dPAD_DOWN, dPAD_LEFT, dPAD_RIGHT, dPAD_CENTER, vOLUME_UP, vOLUME_DOWN, pOWER, cAMERA, cLEAR, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, cOMMA, pERIOD, aLT_LEFT, aLT_RIGHT, sHIFT_LEFT, sHIFT_RIGHT, tAB, sPACE, sYM, eXPLORER, eNVELOPE, eNTER, dEL, gRAVE, mINUS, eQUALS, lEFT_BRACKET, rIGHT_BRACKET, bACKSLASH, sEMICOLON, aPOSTROPHE, sLASH, aT, nUM, hEADSETHOOK, fOCUS, pLUS, mENU, nOTIFICATION, sEARCH)
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
import qualified AndroidGameKey -- same package or java.lang
import qualified Input -- same package or java.lang
import qualified KeyEvent -- android.view.KeyEvent
import qualified ActivityFractureUtil -- org.allbinary.android.ActivityFractureUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data AndroidKeyFactory = AndroidKeyFactory
    { header_ :: JavaHeader
    , base :: ActivityFractureUtil.ActivityFractureUtil
    , logUtil :: IORef (LogUtil.LogUtil)
    , uNKNOWN :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_L1 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_R1 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_THUMBR :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_THUMBL :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_START :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_MODE :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_B :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_A :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_X :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_Y :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_L2 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_R2 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_SELECT :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_C :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_Z :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_1 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_10 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_11 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_12 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_13 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_14 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_15 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_16 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_2 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_3 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_4 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_5 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_6 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_7 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_8 :: IORef (AndroidGameKey.AndroidGameKey)
    , kEYCODE_BUTTON_9 :: IORef (AndroidGameKey.AndroidGameKey)
    , sOFT_LEFT :: IORef (AndroidGameKey.AndroidGameKey)
    , sOFT_RIGHT :: IORef (AndroidGameKey.AndroidGameKey)
    , hOME :: IORef (AndroidGameKey.AndroidGameKey)
    , bACK :: IORef (AndroidGameKey.AndroidGameKey)
    , cALL :: IORef (AndroidGameKey.AndroidGameKey)
    , eNDCALL :: IORef (AndroidGameKey.AndroidGameKey)
    , zERO :: IORef (AndroidGameKey.AndroidGameKey)
    , oNE :: IORef (AndroidGameKey.AndroidGameKey)
    , tWO :: IORef (AndroidGameKey.AndroidGameKey)
    , tHREE :: IORef (AndroidGameKey.AndroidGameKey)
    , fOUR :: IORef (AndroidGameKey.AndroidGameKey)
    , fIVE :: IORef (AndroidGameKey.AndroidGameKey)
    , sIX :: IORef (AndroidGameKey.AndroidGameKey)
    , sEVEN :: IORef (AndroidGameKey.AndroidGameKey)
    , eIGHT :: IORef (AndroidGameKey.AndroidGameKey)
    , nINE :: IORef (AndroidGameKey.AndroidGameKey)
    , sTAR :: IORef (AndroidGameKey.AndroidGameKey)
    , pOUND :: IORef (AndroidGameKey.AndroidGameKey)
    , dPAD_UP :: IORef (AndroidGameKey.AndroidGameKey)
    , dPAD_DOWN :: IORef (AndroidGameKey.AndroidGameKey)
    , dPAD_LEFT :: IORef (AndroidGameKey.AndroidGameKey)
    , dPAD_RIGHT :: IORef (AndroidGameKey.AndroidGameKey)
    , dPAD_CENTER :: IORef (AndroidGameKey.AndroidGameKey)
    , vOLUME_UP :: IORef (AndroidGameKey.AndroidGameKey)
    , vOLUME_DOWN :: IORef (AndroidGameKey.AndroidGameKey)
    , pOWER :: IORef (AndroidGameKey.AndroidGameKey)
    , cAMERA :: IORef (AndroidGameKey.AndroidGameKey)
    , cLEAR :: IORef (AndroidGameKey.AndroidGameKey)
    , a :: IORef (AndroidGameKey.AndroidGameKey)
    , b :: IORef (AndroidGameKey.AndroidGameKey)
    , c :: IORef (AndroidGameKey.AndroidGameKey)
    , d :: IORef (AndroidGameKey.AndroidGameKey)
    , e :: IORef (AndroidGameKey.AndroidGameKey)
    , f :: IORef (AndroidGameKey.AndroidGameKey)
    , g :: IORef (AndroidGameKey.AndroidGameKey)
    , h :: IORef (AndroidGameKey.AndroidGameKey)
    , i :: IORef (AndroidGameKey.AndroidGameKey)
    , j :: IORef (AndroidGameKey.AndroidGameKey)
    , k :: IORef (AndroidGameKey.AndroidGameKey)
    , l :: IORef (AndroidGameKey.AndroidGameKey)
    , m :: IORef (AndroidGameKey.AndroidGameKey)
    , n :: IORef (AndroidGameKey.AndroidGameKey)
    , o :: IORef (AndroidGameKey.AndroidGameKey)
    , p :: IORef (AndroidGameKey.AndroidGameKey)
    , q :: IORef (AndroidGameKey.AndroidGameKey)
    , r :: IORef (AndroidGameKey.AndroidGameKey)
    , s :: IORef (AndroidGameKey.AndroidGameKey)
    , t :: IORef (AndroidGameKey.AndroidGameKey)
    , u :: IORef (AndroidGameKey.AndroidGameKey)
    , v :: IORef (AndroidGameKey.AndroidGameKey)
    , w :: IORef (AndroidGameKey.AndroidGameKey)
    , x :: IORef (AndroidGameKey.AndroidGameKey)
    , y :: IORef (AndroidGameKey.AndroidGameKey)
    , z :: IORef (AndroidGameKey.AndroidGameKey)
    , cOMMA :: IORef (AndroidGameKey.AndroidGameKey)
    , pERIOD :: IORef (AndroidGameKey.AndroidGameKey)
    , aLT_LEFT :: IORef (AndroidGameKey.AndroidGameKey)
    , aLT_RIGHT :: IORef (AndroidGameKey.AndroidGameKey)
    , sHIFT_LEFT :: IORef (AndroidGameKey.AndroidGameKey)
    , sHIFT_RIGHT :: IORef (AndroidGameKey.AndroidGameKey)
    , tAB :: IORef (AndroidGameKey.AndroidGameKey)
    , sPACE :: IORef (AndroidGameKey.AndroidGameKey)
    , sYM :: IORef (AndroidGameKey.AndroidGameKey)
    , eXPLORER :: IORef (AndroidGameKey.AndroidGameKey)
    , eNVELOPE :: IORef (AndroidGameKey.AndroidGameKey)
    , eNTER :: IORef (AndroidGameKey.AndroidGameKey)
    , dEL :: IORef (AndroidGameKey.AndroidGameKey)
    , gRAVE :: IORef (AndroidGameKey.AndroidGameKey)
    , mINUS :: IORef (AndroidGameKey.AndroidGameKey)
    , eQUALS :: IORef (AndroidGameKey.AndroidGameKey)
    , lEFT_BRACKET :: IORef (AndroidGameKey.AndroidGameKey)
    , rIGHT_BRACKET :: IORef (AndroidGameKey.AndroidGameKey)
    , bACKSLASH :: IORef (AndroidGameKey.AndroidGameKey)
    , sEMICOLON :: IORef (AndroidGameKey.AndroidGameKey)
    , aPOSTROPHE :: IORef (AndroidGameKey.AndroidGameKey)
    , sLASH :: IORef (AndroidGameKey.AndroidGameKey)
    , aT :: IORef (AndroidGameKey.AndroidGameKey)
    , nUM :: IORef (AndroidGameKey.AndroidGameKey)
    , hEADSETHOOK :: IORef (AndroidGameKey.AndroidGameKey)
    , fOCUS :: IORef (AndroidGameKey.AndroidGameKey)
    , pLUS :: IORef (AndroidGameKey.AndroidGameKey)
    , mENU :: IORef (AndroidGameKey.AndroidGameKey)
    , nOTIFICATION :: IORef (AndroidGameKey.AndroidGameKey)
    , sEARCH :: IORef (AndroidGameKey.AndroidGameKey)
    }

instance JavaNull AndroidKeyFactory where
    javaNull = javaNullRecord "AndroidKeyFactory"

instance JavaEquals AndroidKeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidKeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidKeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidKeyFactory
newRecord_ = do
    base <- ActivityFractureUtil.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    uNKNOWN <- newIORef javaNull
    kEYCODE_BUTTON_L1 <- newIORef javaNull
    kEYCODE_BUTTON_R1 <- newIORef javaNull
    kEYCODE_BUTTON_THUMBR <- newIORef javaNull
    kEYCODE_BUTTON_THUMBL <- newIORef javaNull
    kEYCODE_BUTTON_START <- newIORef javaNull
    kEYCODE_BUTTON_MODE <- newIORef javaNull
    kEYCODE_BUTTON_B <- newIORef javaNull
    kEYCODE_BUTTON_A <- newIORef javaNull
    kEYCODE_BUTTON_X <- newIORef javaNull
    kEYCODE_BUTTON_Y <- newIORef javaNull
    kEYCODE_BUTTON_L2 <- newIORef javaNull
    kEYCODE_BUTTON_R2 <- newIORef javaNull
    kEYCODE_BUTTON_SELECT <- newIORef javaNull
    kEYCODE_BUTTON_C <- newIORef javaNull
    kEYCODE_BUTTON_Z <- newIORef javaNull
    kEYCODE_BUTTON_1 <- newIORef javaNull
    kEYCODE_BUTTON_10 <- newIORef javaNull
    kEYCODE_BUTTON_11 <- newIORef javaNull
    kEYCODE_BUTTON_12 <- newIORef javaNull
    kEYCODE_BUTTON_13 <- newIORef javaNull
    kEYCODE_BUTTON_14 <- newIORef javaNull
    kEYCODE_BUTTON_15 <- newIORef javaNull
    kEYCODE_BUTTON_16 <- newIORef javaNull
    kEYCODE_BUTTON_2 <- newIORef javaNull
    kEYCODE_BUTTON_3 <- newIORef javaNull
    kEYCODE_BUTTON_4 <- newIORef javaNull
    kEYCODE_BUTTON_5 <- newIORef javaNull
    kEYCODE_BUTTON_6 <- newIORef javaNull
    kEYCODE_BUTTON_7 <- newIORef javaNull
    kEYCODE_BUTTON_8 <- newIORef javaNull
    kEYCODE_BUTTON_9 <- newIORef javaNull
    sOFT_LEFT <- newIORef javaNull
    sOFT_RIGHT <- newIORef javaNull
    hOME <- newIORef javaNull
    bACK <- newIORef javaNull
    cALL <- newIORef javaNull
    eNDCALL <- newIORef javaNull
    zERO <- newIORef javaNull
    oNE <- newIORef javaNull
    tWO <- newIORef javaNull
    tHREE <- newIORef javaNull
    fOUR <- newIORef javaNull
    fIVE <- newIORef javaNull
    sIX <- newIORef javaNull
    sEVEN <- newIORef javaNull
    eIGHT <- newIORef javaNull
    nINE <- newIORef javaNull
    sTAR <- newIORef javaNull
    pOUND <- newIORef javaNull
    dPAD_UP <- newIORef javaNull
    dPAD_DOWN <- newIORef javaNull
    dPAD_LEFT <- newIORef javaNull
    dPAD_RIGHT <- newIORef javaNull
    dPAD_CENTER <- newIORef javaNull
    vOLUME_UP <- newIORef javaNull
    vOLUME_DOWN <- newIORef javaNull
    pOWER <- newIORef javaNull
    cAMERA <- newIORef javaNull
    cLEAR <- newIORef javaNull
    a <- newIORef javaNull
    b <- newIORef javaNull
    c <- newIORef javaNull
    d <- newIORef javaNull
    e <- newIORef javaNull
    f <- newIORef javaNull
    g <- newIORef javaNull
    h <- newIORef javaNull
    i <- newIORef javaNull
    j <- newIORef javaNull
    k <- newIORef javaNull
    l <- newIORef javaNull
    m <- newIORef javaNull
    n <- newIORef javaNull
    o <- newIORef javaNull
    p <- newIORef javaNull
    q <- newIORef javaNull
    r <- newIORef javaNull
    s <- newIORef javaNull
    t <- newIORef javaNull
    u <- newIORef javaNull
    v <- newIORef javaNull
    w <- newIORef javaNull
    x <- newIORef javaNull
    y <- newIORef javaNull
    z <- newIORef javaNull
    cOMMA <- newIORef javaNull
    pERIOD <- newIORef javaNull
    aLT_LEFT <- newIORef javaNull
    aLT_RIGHT <- newIORef javaNull
    sHIFT_LEFT <- newIORef javaNull
    sHIFT_RIGHT <- newIORef javaNull
    tAB <- newIORef javaNull
    sPACE <- newIORef javaNull
    sYM <- newIORef javaNull
    eXPLORER <- newIORef javaNull
    eNVELOPE <- newIORef javaNull
    eNTER <- newIORef javaNull
    dEL <- newIORef javaNull
    gRAVE <- newIORef javaNull
    mINUS <- newIORef javaNull
    eQUALS <- newIORef javaNull
    lEFT_BRACKET <- newIORef javaNull
    rIGHT_BRACKET <- newIORef javaNull
    bACKSLASH <- newIORef javaNull
    sEMICOLON <- newIORef javaNull
    aPOSTROPHE <- newIORef javaNull
    sLASH <- newIORef javaNull
    aT <- newIORef javaNull
    nUM <- newIORef javaNull
    hEADSETHOOK <- newIORef javaNull
    fOCUS <- newIORef javaNull
    pLUS <- newIORef javaNull
    mENU <- newIORef javaNull
    nOTIFICATION <- newIORef javaNull
    sEARCH <- newIORef javaNull
    let this = AndroidKeyFactory header_ base logUtil uNKNOWN kEYCODE_BUTTON_L1 kEYCODE_BUTTON_R1 kEYCODE_BUTTON_THUMBR kEYCODE_BUTTON_THUMBL kEYCODE_BUTTON_START kEYCODE_BUTTON_MODE kEYCODE_BUTTON_B kEYCODE_BUTTON_A kEYCODE_BUTTON_X kEYCODE_BUTTON_Y kEYCODE_BUTTON_L2 kEYCODE_BUTTON_R2 kEYCODE_BUTTON_SELECT kEYCODE_BUTTON_C kEYCODE_BUTTON_Z kEYCODE_BUTTON_1 kEYCODE_BUTTON_10 kEYCODE_BUTTON_11 kEYCODE_BUTTON_12 kEYCODE_BUTTON_13 kEYCODE_BUTTON_14 kEYCODE_BUTTON_15 kEYCODE_BUTTON_16 kEYCODE_BUTTON_2 kEYCODE_BUTTON_3 kEYCODE_BUTTON_4 kEYCODE_BUTTON_5 kEYCODE_BUTTON_6 kEYCODE_BUTTON_7 kEYCODE_BUTTON_8 kEYCODE_BUTTON_9 sOFT_LEFT sOFT_RIGHT hOME bACK cALL eNDCALL zERO oNE tWO tHREE fOUR fIVE sIX sEVEN eIGHT nINE sTAR pOUND dPAD_UP dPAD_DOWN dPAD_LEFT dPAD_RIGHT dPAD_CENTER vOLUME_UP vOLUME_DOWN pOWER cAMERA cLEAR a b c d e f g h i j k l m n o p q r s t u v w x y z cOMMA pERIOD aLT_LEFT aLT_RIGHT sHIFT_LEFT sHIFT_RIGHT tAB sPACE sYM eXPLORER eNVELOPE eNTER dEL gRAVE mINUS eQUALS lEFT_BRACKET rIGHT_BRACKET bACKSLASH sEMICOLON aPOSTROPHE sLASH aT nUM hEADSETHOOK fOCUS pLUS mENU nOTIFICATION sEARCH
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isSubmission" (\() -> isSubmission_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isBackSpace" (\() -> isBackSpace_impl this)
    jregisterMethod header_ "isLeft" (\() -> isLeft_impl this)
    jregisterMethod header_ "isRight" (\() -> isRight_impl this)
    jregisterMethod header_ "isUp" (\() -> isUp_impl this)
    jregisterMethod header_ "isDown" (\() -> isDown_impl this)
    jregisterMethod header_ "isEnter" (\() -> isEnter_impl this)
    pure this

initFields_ :: AndroidKeyFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.uNKNOWN =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_UNKNOWN) "UNKNOWN")
    jset this.kEYCODE_BUTTON_L1 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_R1 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_THUMBR ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_THUMBL ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_START ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_MODE ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_B ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_A ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_X ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_Y ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_L2 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_R2 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_SELECT ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_C ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_Z ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_1 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_10 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_11 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_12 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_13 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_14 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_15 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_16 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_2 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_3 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_4 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_5 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_6 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_7 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_8 ((jget (this).uNKNOWN))
    jset this.kEYCODE_BUTTON_9 ((jget (this).uNKNOWN))
    jset this.sOFT_LEFT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SOFT_LEFT) "SOFT_LEFT")
    jset this.sOFT_RIGHT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SOFT_RIGHT) "SOFT_RIGHT")
    jset this.hOME =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_HOME) "HOME")
    jset this.bACK =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BACK) "BACK")
    jset this.cALL =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_CALL) "CALL")
    jset this.eNDCALL =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_ENDCALL) "ENDCALL")
    jset this.zERO =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_0) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
    jset this.oNE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_1) (jget ((jio (CommonPhoneStrings.getInstance))).oNE))
    jset this.tWO =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_2) (jget ((jio (CommonPhoneStrings.getInstance))).tWO))
    jset this.tHREE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_3) (jget ((jio (CommonPhoneStrings.getInstance))).tHREE))
    jset this.fOUR =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_4) (jget ((jio (CommonPhoneStrings.getInstance))).fOUR))
    jset this.fIVE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_5) (jget ((jio (CommonPhoneStrings.getInstance))).fIVE))
    jset this.sIX =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_6) (jget ((jio (CommonPhoneStrings.getInstance))).sIX))
    jset this.sEVEN =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_7) (jget ((jio (CommonPhoneStrings.getInstance))).sEVEN))
    jset this.eIGHT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_8) (jget ((jio (CommonPhoneStrings.getInstance))).eIGHT))
    jset this.nINE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_9) (jget ((jio (CommonPhoneStrings.getInstance))).nINE))
    jset this.sTAR =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_STAR) (jget ((jio (CommonPhoneStrings.getInstance))).sTAR))
    jset this.pOUND =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_POUND) (jget ((jio (CommonPhoneStrings.getInstance))).pOUND))
    jset this.dPAD_UP =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DPAD_UP) "UP")
    jset this.dPAD_DOWN =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DPAD_DOWN) "DOWN")
    jset this.dPAD_LEFT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DPAD_LEFT) "LEFT")
    jset this.dPAD_RIGHT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DPAD_RIGHT) "RIGHT")
    jset this.dPAD_CENTER =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DPAD_CENTER) "CENTER")
    jset this.vOLUME_UP =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_VOLUME_UP) "VOLUME_UP")
    jset this.vOLUME_DOWN =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_VOLUME_DOWN) "VOLUME_DOWN")
    jset this.pOWER =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_POWER) "POWER")
    jset this.cAMERA =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_CAMERA) "CAMERA")
    jset this.cLEAR =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_CLEAR) "CLEAR")
    jset this.a =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_A) "A")
    jset this.b =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_B) "B")
    jset this.c =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_C) "C")
    jset this.d =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_D) "D")
    jset this.e =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_E) "E")
    jset this.f =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_F) "F")
    jset this.g =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_G) "G")
    jset this.h =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_H) "H")
    jset this.i =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_I) "I")
    jset this.j =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_J) "J")
    jset this.k =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_K) "K")
    jset this.l =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_L) "L")
    jset this.m =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_M) "M")
    jset this.n =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_N) "N")
    jset this.o =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_O) "O")
    jset this.p =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_P) "P")
    jset this.q =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_Q) "Q")
    jset this.r =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_R) "R")
    jset this.s =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_S) "S")
    jset this.t =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_T) "T")
    jset this.u =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_U) "U")
    jset this.v =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_V) "V")
    jset this.w =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_W) "W")
    jset this.x =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_X) "X")
    jset this.y =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_Y) "Y")
    jset this.z =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_Z) "Z")
    jset this.cOMMA =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_COMMA) "COMMA")
    jset this.pERIOD =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_PERIOD) (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
    jset this.aLT_LEFT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_ALT_LEFT) "ALT_LEFT")
    jset this.aLT_RIGHT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_ALT_RIGHT) "ALT_RIGHT")
    jset this.sHIFT_LEFT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SHIFT_LEFT) "SHIFT_LEFT")
    jset this.sHIFT_RIGHT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SHIFT_RIGHT) "SHIFT_RIGHT")
    jset this.tAB =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_TAB) "TAB")
    jset this.sPACE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SPACE) "SPACE")
    jset this.sYM =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SYM) "SYM")
    jset this.eXPLORER =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_EXPLORER) "EXPLORER")
    jset this.eNVELOPE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_ENVELOPE) "ENVELOPE")
    jset this.eNTER =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_ENTER) "ENTER")
    jset this.dEL =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_DEL) "DEL")
    jset this.gRAVE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_GRAVE) "GRAVE")
    jset this.mINUS =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_MINUS) "MINUS")
    jset this.eQUALS =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_EQUALS) "EQUALS")
    jset this.lEFT_BRACKET =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_LEFT_BRACKET) "LEFT_BRACKET")
    jset this.rIGHT_BRACKET =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_RIGHT_BRACKET) "RIGHT_BRACKET")
    jset this.bACKSLASH =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BACKSLASH) "BACKSLASH")
    jset this.sEMICOLON =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SEMICOLON) "SEMICOLON")
    jset this.aPOSTROPHE =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_APOSTROPHE) "APOSTROPHE")
    jset this.sLASH =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SLASH) "SLASH")
    jset this.aT =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_AT) "AT")
    jset this.nUM =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_NUM) "NUM")
    jset this.hEADSETHOOK =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_HEADSETHOOK) "HEADSETHOOK")
    jset this.fOCUS =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_FOCUS) "FOCUS")
    jset this.pLUS =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_PLUS) "PLUS")
    jset this.mENU =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_MENU) "MENU")
    jset this.nOTIFICATION =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_NOTIFICATION) "NOTIFICATION")
    jset this.sEARCH =<< (AndroidGameKey.new_2 (KeyEvent.kEYCODE_SEARCH) "SEARCH")
    pure ()

new_ :: IO AndroidKeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidKeyFactory -> IO ()
init_ this = do
    ActivityFractureUtil.init_ this.base
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AndroidKeyFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AndroidKeyFactory))

init_impl :: AndroidKeyFactory -> IO (())
init_impl this = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Start/End" this (jget (commonStrings).iNIT))
        pure ()


isSubmission :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission object_ a1 = jmethod object_ "isSubmission" (\() -> (isSubmission_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isSubmission_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission_super object_ a1 = (isSubmission_impl (javaCast object_ :: AndroidKeyFactory)) a1

isSubmission_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isSubmission_impl this input = do
    javaCatchReturn $ do
        if ((jtoObject input) == (jtoObject (jget (this).eNTER))) then do
            javaReturn (True)
        else when ((jtoObject input) == (jtoObject (jget (this).dPAD_CENTER))) $ do
            javaReturn (True)
        pure (False)


isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: AndroidKeyFactory)) a1

isDelete_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isDelete_impl this input = do
        pure (False)


isBackSpace :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace object_ a1 = jmethod object_ "isBackSpace" (\() -> (isBackSpace_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isBackSpace_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace_super object_ a1 = (isBackSpace_impl (javaCast object_ :: AndroidKeyFactory)) a1

isBackSpace_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isBackSpace_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dEL))) $ do
            javaReturn (True)
        pure (False)


isLeft :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft object_ a1 = jmethod object_ "isLeft" (\() -> (isLeft_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isLeft_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft_super object_ a1 = (isLeft_impl (javaCast object_ :: AndroidKeyFactory)) a1

isLeft_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isLeft_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dPAD_LEFT))) $ do
            javaReturn (True)
        pure (False)


isRight :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight object_ a1 = jmethod object_ "isRight" (\() -> (isRight_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isRight_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight_super object_ a1 = (isRight_impl (javaCast object_ :: AndroidKeyFactory)) a1

isRight_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isRight_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dPAD_RIGHT))) $ do
            javaReturn (True)
        pure (False)


isUp :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp object_ a1 = jmethod object_ "isUp" (\() -> (isUp_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isUp_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp_super object_ a1 = (isUp_impl (javaCast object_ :: AndroidKeyFactory)) a1

isUp_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isUp_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dPAD_UP))) $ do
            javaReturn (True)
        pure (False)


isDown :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown object_ a1 = jmethod object_ "isDown" (\() -> (isDown_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isDown_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown_super object_ a1 = (isDown_impl (javaCast object_ :: AndroidKeyFactory)) a1

isDown_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isDown_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dPAD_DOWN))) $ do
            javaReturn (True)
        pure (False)


isEnter :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter object_ a1 = jmethod object_ "isEnter" (\() -> (isEnter_impl (javaCast object_ :: AndroidKeyFactory))) () a1

isEnter_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter_super object_ a1 = (isEnter_impl (javaCast object_ :: AndroidKeyFactory)) a1

isEnter_impl :: AndroidKeyFactory -> Input.Input -> IO (Bool)
isEnter_impl this input = do
    javaCatchReturn $ do
        if ((jtoObject input) == (jtoObject (jget (this).dPAD_CENTER))) then do
            javaReturn (True)
        else if ((jtoObject input) == (jtoObject (jget (this).eNTER))) then do
            javaReturn (True)
        else when ((jtoObject input) == (jtoObject (jget (this).cALL))) $ do
            javaReturn (True)
        pure (False)


