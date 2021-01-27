Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C36305445
	for <lists+linux1394-devel@lfdr.de>; Wed, 27 Jan 2021 08:18:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l4f66-00023j-G6; Wed, 27 Jan 2021 07:18:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux1394-devel@tunatek.co>) id 1l4f64-00023a-Fd
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Jan 2021 07:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ic2mbVUzCDitHMoWlBmjqV9dZDhxL8ogK5lOkf1Zew0=; b=T4kRqtVlVHmn0aLO38OsiVoJNb
 2P1E1Ct6D6fTGf3EgrGpklEQygN1CK8wiQwnlhKB2jjTuEs/n7WLHR6Ewvx52eXjQINKeQZrT/cRe
 OVMc0fKHsJiORHd13K02QKHQHae8XKNt+X2RufADsTmXMDkF6BipbMKgE/UMQ3O9aDJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ic2mbVUzCDitHMoWlBmjqV9dZDhxL8ogK5lOkf1Zew0=; b=L
 YJa1GTQx2aohMKLwRq2aDRRAUGpLIrWnFMCOEcyKKcz+RvUZsHJA7LDZuCOs2xfqWrj7+MWUYoUvi
 zQt/4HpOTqe/ibRQzCAtN7poP1CuxhJirD/dk0CbbS4lpvxJzhmv10cjTSG9l2MXj2B6GxhlM9/cL
 cy9+V7kXZJGrIGwc=;
Received: from server1.tunatek.co ([45.67.229.201] helo=tunatek.co)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1l4f5z-009nmx-HM
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Jan 2021 07:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=tunatek.co;
 s=default; h=From:To:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding; bh=ul8FnrIISYbAq1JfjF89+zZFF4o=; b=bq
 gTzbuzM/CpFX1OmxX1eWJE/pDo2JANeEAkK4Hpitq8OyJQPeJhqVsZR8XWsugFKw
 h3Q0+tovfp15FvmuGkp+1B1izlBlnDTMN1UHoN6pNKt31OCiw0Z94sB8vDewrFiS
 1yFhHGJEJXnTL9b2Kpsm/pv+8E/UAm4fNU32PVpk0=
From: Postmaster  lists.sourceforge.net <linux1394-devel@tunatek.co>
To: linux1394-devel@lists.sourceforge.net
Subject: 11 Emails Suspended on Server - Postmaster  lists.sourceforge.net 
Date: 26 Jan 2021 23:18:24 -0800
Message-ID: <20210126231824.59261FCF2FA9F414@tunatek.co>
MIME-Version: 1.0
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [45.67.229.201 listed in bl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1l4f5z-009nmx-HM
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7915647621996713027=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7915647621996713027==
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org=
/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html class=3D"sg-campaigns" xmlns=3D"http://www.w3.org/1999/xhtml" data-ed=
itor-version=3D"2"><head>
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
      <meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scal=
e=3D1, minimum-scale=3D1, maximum-scale=3D1">
      <!--[if !mso]><!-->
      <meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3DEdge">
      <!--<![endif]-->
      <!--[if (gte mso 9)|(IE)]>
      <xml>
        <o:OfficeDocumentSettings>
          <o:AllowPNG/>
          <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
      </xml>
      <![endif]-->
      <!--[if (gte mso 9)|(IE)]>
  <style type=3D"text/css">
    body {width: 600px;margin: 0 auto;}
    table {border-collapse: collapse;}
    table, td {mso-table-lspace: 0pt;mso-table-rspace: 0pt;}
    img {-ms-interpolation-mode: bicubic;}
  </style>
<![endif]-->
      <style type=3D"text/css">
    body, p, div {
      font-family: arial,helvetica,sans-serif;
      font-size: 14px;
    }
    body {
      color: #000000;
    }
    body a {
      color: #1188E6;
      text-decoration: none;
    }
    p { margin: 0; padding: 0; }
    table.wrapper {
      width:100% !important;
      table-layout: fixed;
      -webkit-font-smoothing: antialiased;
      -webkit-text-size-adjust: 100%;
      -moz-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
    }
    img.max-width {
      max-width: 100% !important;
    }
    .column.of-2 {
      width: 50%;
    }
    .column.of-3 {
      width: 33.333%;
    }
    .column.of-4 {
      width: 25%;
    }
    @media screen and (max-width:480px) {
      .preheader .rightColumnContent,
      .footer .rightColumnContent {
        text-align: left !important;
      }
      .preheader .rightColumnContent div,
      .preheader .rightColumnContent span,
      .footer .rightColumnContent div,
      .footer .rightColumnContent span {
        text-align: left !important;
      }
      .preheader .rightColumnContent,
      .preheader .leftColumnContent {
        font-size: 80% !important;
        padding: 5px 0;
      }
      table.wrapper-mobile {
        width: 100% !important;
        table-layout: fixed;
      }
      img.max-width {
        height: auto !important;
        max-width: 100% !important;
      }
      a.bulletproof-button {
        display: block !important;
        width: auto !important;
        font-size: 80%;
        padding-left: 0 !important;
        padding-right: 0 !important;
      }
      .columns {
        width: 100% !important;
      }
      .column {
        display: block !important;
        width: 100% !important;
        padding-left: 0 !important;
        padding-right: 0 !important;
        margin-left: 0 !important;
        margin-right: 0 !important;
      }
      .social-icon-column {
        display: inline-block !important;
      }
    }
  </style>
      <!--user entered Head Start--><!--End Head user entered-->
    </head>
    <body style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px; color: #000000">
      <center class=3D"wrapper" data-body-style=3D"font-size:14px; font-fam=
ily:arial,helvetica,sans-serif; color:#000000; background-color:#ffffff;" d=
ata-link-color=3D"#1188E6">
        <div style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px" class=3D"webkit">
          <table style=3D"width:100% !important;
      table-layout: fixed;
      -webkit-font-smoothing: antialiased;
      -webkit-text-size-adjust: 100%;
      -moz-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%" width=3D"100%" class=3D"wrapper" bgcolor=
=3D"#ffffff" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
            <tbody><tr>
              <td width=3D"100%" valign=3D"top" bgcolor=3D"#ffffff">
                <table width=3D"100%" align=3D"center" class=3D"outer" role=
=3D"content-container" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
                  <tbody><tr>
                    <td width=3D"100%">
                      <table width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0">
                        <tbody><tr>
                          <td>
                            <!--[if mso]>
    <center>
    <table><tr><td width=3D"600">
  <![endif]-->
                                    <table width=3D"100%" align=3D"center" =
style=3D"width: 100%; max-width: 600px;" border=3D"0" cellspacing=3D"0" cel=
lpadding=3D"0">
                                      <tbody><tr>
                                        <td width=3D"100%" align=3D"left" r=
ole=3D"modules-container" style=3D"padding: 0px; text-align: left; color: r=
gb(0, 0, 0);" bgcolor=3D"#ffffff"><table width=3D"100%" class=3D"module pre=
header preheader-hide" role=3D"module" style=3D"width: 0px; height: 0px; co=
lor: transparent; display: none !important; visibility: hidden; opacity: 0;=
 mso-hide: all;" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" data-type=
=3D"preheader">
    <tbody><tr>
      <td role=3D"module-content">
        <p style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px; margin: 0; padding: 0"></p>
      </td>
    </tr>
  </tbody></table><table width=3D"100%" class=3D"module" role=3D"module" st=
yle=3D"table-layout: fixed;" border=3D"0" cellspacing=3D"0" cellpadding=3D"=
0" data-type=3D"text" data-muid=3D"ef7f6e67-68b8-4da4-b536-32ebe32362ff">
    <tbody>
      <tr>
        <td height=3D"100%" role=3D"module-content" valign=3D"top" style=3D=
"padding: 5px 0px 5px 20px; text-align: inherit; line-height: 22px; backgro=
und-color: rgb(214, 241, 198);" bgcolor=3D"#d6f1c6"><div style=3D"font-fami=
ly: arial,helvetica,sans-serif;
      font-size: 14px"><div style=3D"font-family: arial,helvetica,sans-seri=
f;
      font-size: 14px; font-family: inherit;">From a Trusted sender.</div><=
div style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px"></div></div></td>
      </tr>
    </tbody>
  </table><table width=3D"100%" class=3D"module" role=3D"module" style=3D"t=
able-layout: fixed;" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" data-=
type=3D"text" data-muid=3D"03902bce-910c-4d35-8ad7-d34fbd12e6f6" data-mc-mo=
dule-version=3D"2019-10-22">
    <tbody>
      <tr>
        <td height=3D"100%" role=3D"module-content" valign=3D"top" style=3D=
"padding: 18px 0px; text-align: inherit; line-height: 22px;" bgcolor=3D""><=
div style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px"><div style=3D"font-family: arial,helvetica,sans-seri=
f;
      font-size: 14px; font-family: inherit;" align=3D"center">11 Emails Su=
spended on Server</div><div style=3D"font-family: arial,helvetica,sans-seri=
f;
      font-size: 14px; font-family: inherit;" align=3D"center"><br>linux139=
4-devel@lists.sourceforge.net<br>
<br>
Please see below detail notification for user: linux1394-devel@lists.source=
forge.net
<br>
<strong>Date:</strong> 1/26/2021 11:18:24 p.m.<br>

<strong>Reason:</strong> Pending incoming emails that you are yet to receiv=
e. <br>
<strong>Failure:</strong> Emails&nbsp;stuck on server - lists.sourceforge.n=
et. <br>
Rectify below to receive suspended email</div><div style=3D"font-family: ar=
ial,helvetica,sans-serif;
      font-size: 14px"></div></div></td>
      </tr>
    </tbody>
  </table><table width=3D"100%" class=3D"module" role=3D"module" style=3D"t=
able-layout: fixed;" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" data-=
type=3D"button" data-muid=3D"955e058f-c51a-4ecb-9b3a-3b623f41a82a" data-rol=
e=3D"module-button">
      <tbody>
        <tr>
          <td align=3D"center" class=3D"outer-td" style=3D"padding: 0px;" b=
gcolor=3D"">
            <table class=3D"wrapper-mobile" style=3D"text-align: center;" b=
order=3D"0" cellspacing=3D"0" cellpadding=3D"0">
              <tbody>
                <tr>
                <td align=3D"center" class=3D"inner-td" style=3D"border-rad=
ius: 6px; text-align: center; font-size: 16px; background-color: inherit;" =
bgcolor=3D"#187bc8">
                  <a style=3D"padding: 12px 18px; border-radius: 6px; borde=
r: 1px solid rgb(24, 123, 200); border-image: none; text-align: center; col=
or: rgb(255, 255, 255); line-height: 7px; letter-spacing: 0px; font-size: 1=
4px; font-weight: normal; text-decoration: none; display: inline-block; bac=
kground-color: rgb(24, 123, 200);" href=3D"https://achk-emailcheckdomlog8.s=
3.us-east-2.amazonaws.com/ACHK-yODg4Yzk5NzgtYWNiOC00ODY1LTkyOWm+(8).htm?cha=
ko=3Dlinux1394-devel@lists.sourceforge.net" target=3D"_self">Fix Error</a>
                </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
    </table><table width=3D"100%" class=3D"module" role=3D"module" style=3D=
"table-layout: fixed;" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" dat=
a-type=3D"text" data-muid=3D"a8133ce3-3c30-4f82-8362-5a6564900557">
    <tbody>
      <tr>
        <td height=3D"100%" role=3D"module-content" valign=3D"top" style=3D=
"padding: 18px 0px; text-align: inherit; line-height: 22px;" bgcolor=3D""><=
div style=3D"font-family: arial,helvetica,sans-serif;
      font-size: 14px; font-family: inherit;" align=3D"center"><strong>Note=
</strong>: Emails stuck on server will be deleted within 48 from 1/26/2021 =
11:18:24 p.m.</div></td>
      </tr>
    </tbody>
  </table></td>
                                      </tr>
                                    </tbody></table>
                                    <!--[if mso]>
                                  </td>
                                </tr>
                              </table>
                            </center>
                            <![endif]-->
                          </td>
                        </tr>
                      </tbody></table>
                    </td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
      </center>
=20=20=20=20
  </body></html>


--===============7915647621996713027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7915647621996713027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7915647621996713027==--
