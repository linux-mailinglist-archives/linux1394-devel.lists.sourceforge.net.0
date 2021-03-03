Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1FC32B543
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Mar 2021 07:34:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lHL5J-0008Lb-KJ; Wed, 03 Mar 2021 06:34:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux1394-devel@intercoaxc.com>) id 1lHL5I-0008LT-1O
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Mar 2021 06:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T6zlSCdUBKCdA2+pheAf1wTLas/SercJOxxJILtxBGM=; b=lsTVFgkCOAdZdH/w2L5FvyJDW3
 5maIjIZp6K7PtCsEee3QABcDpYk/W2z4BP7yS+RFGYdoAIx2PlUJ3rcVmW9/GpzQqHpu4C5KD8DGU
 DogzwejfhDyHmpqEA7bPHRMoS5vbkUlO4k1uyDtWgtuV7AY24RG5FWVkPovwaAi9JThM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T6zlSCdUBKCdA2+pheAf1wTLas/SercJOxxJILtxBGM=; b=g
 9/ed7weHzvzvNr15BQMgYigi+VUzRc6mkxaiKbdliCMgyyfVIgPqjgflXITEHTMgWZ63ljPdc9eUj
 jlX8ab5nHwAhYMr2oQDCQOopRiOsVm20eeklaVOazSimefsuz0QvYocdGjb4If4VWjChymxRkRNdT
 1scrHsXcbYlIjkO0=;
Received: from server1.intercoaxc.com ([80.209.234.154] helo=intercoaxc.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lHL5A-0007OS-Hc
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Mar 2021 06:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 d=intercoaxc.com; s=default; h=From:To:Subject:MIME-Version:
 Content-Type:Content-Transfer-Encoding; bh=bge3x87p00XTXUaG2S9+p
 0lJ8lM=; b=us/SLMNMlXTQZCPhu3qL3fZEq98ZdSbCM8ZY1pMHBkTs6AXb19aZt
 DvsOoI1VCs51vjX3lPpUWepeA+v5kWTBoSJ3/JYaDWt1AdKH70brfJv/pM9ZBEWK
 f0NdXIAFdGv2i7ID/oOSEXD0iS6P5JRZVBK/xSWuy+cdavVAPUzAAM=
From: Mailserver  lists.sourceforge.net <linux1394-devel@intercoaxc.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Outgoing Mail Delivery Failure (Imap Error)
Date: 3 Mar 2021 08:33:56 +0200
Message-ID: <20210303083356.0AEB2D711F55D6F8@intercoaxc.com>
MIME-Version: 1.0
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [80.209.234.154 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 3.0 GOOG_STO_NOIMG_HTML    Apparently using google content hosting to avoid
 URIBL
X-Headers-End: 1lHL5A-0007OS-Hc
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
Content-Type: multipart/mixed; boundary="===============5260678483430414313=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5260678483430414313==
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>

<html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3D">
    <meta name=3D"GENERATOR" content=3D"MSHTML 11.00.10570.1001">
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
  <body text=3D"#000000" bgcolor=3D"#ffffff">
    <table style=3D'font-family: "Segoe UI","Lucida Sans",sans-serif; margi=
n-right: auto; margin-left: auto; max-width: 600px;' border=3D"0" cellspaci=
ng=3D"0" cellpadding=3D"0">
      <tbody>
        <tr>
          <td>
            <table width=3D"100%" style=3D"border-width: 1px 1px 0px; borde=
r-top-color: rgb(224, 224, 224); border-right-color: rgb(224, 224, 224); bo=
rder-left-color: rgb(224, 224, 224); border-top-style: solid; border-right-=
style: solid; border-left-style: solid; min-width: 600px; max-width: 900px;=
 border-top-left-radius: 3px; border-top-right-radius: 3px;" bgcolor=3D"#bb=
5a00" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
              <tbody>
                <tr>
                  <td height=3D"12" style=3D"width: 98%;" colspan=3D"3">&nb=
sp;</td>
                </tr>
                <tr>
                  <td style=3D"width: 5.7%;">&nbsp;</td>
                  <td style=3D"width: 87.3%; text-align: left; color: rgb(2=
55, 255, 255); line-height: 1; font-family: roboto-regular, helvetica, aria=
l, sans-serif; font-size: 25px;">Outgoing Mail Error</td>
                  <td style=3D"width: 5%;">&nbsp;</td>
                </tr>
                <tr>
                  <td height=3D"18" style=3D"width: 98%;" colspan=3D"3">&nb=
sp;</td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td>
            <table width=3D"100%" style=3D"border-width: 0px 1px 1px; borde=
r-right-color: rgb(240, 240, 240); border-bottom-color: rgb(192, 192, 192);=
 border-left-color: rgb(240, 240, 240); border-right-style: solid; border-b=
ottom-style: solid; border-left-style: solid; min-width: 600px; max-width: =
900px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;" bg=
color=3D"#f5f5f5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
              <tbody>
                <tr>
                  <td style=3D"width: 5.16%;" rowspan=3D"3">&nbsp;</td>
                  <td style=3D"width: 83.56%;">&nbsp;</td>
                  <td style=3D"width: 9.76%;" rowspan=3D"3">&nbsp;</td>
                </tr>
                <tr>
                  <td style=3D"width: 83.56%;">
                    <table style=3D"min-width: 300px;" border=3D"0" cellspa=
cing=3D"0" cellpadding=3D"0">
                      <tbody>
                        <tr>
                          <td width=3D"473" style=3D"color: rgb(32, 32, 32)=
; line-height: 1.5; font-family: roboto-regular,helvetica,arial,sans-serif;=
 font-size: 12px;">
                            <br>
                          </td>
                        </tr>
                        <tr>
                          <td style=3D"line-height: 1.5; font-family: robot=
o-regular,helvetica,arial,sans-serif; font-size: 12px;">
                            <p><span style=3D"color: rgb(32, 32, 32);">Due =
&nbsp;to&nbsp;server error,&nbsp;5 new mails you sent from linux1394-devel@=
lists.sourceforge.net <span style=3D"color: rgb(32, 32, 32);">are stuck in =
lists.sourceforge.net Server.</span><br>
                              <br>
 <font color=3D"#202020">Release below to re-send all stuck emails to the d=
estination boxes.</font><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; <br></span></p>
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20
                            <table style=3D"color: rgb(32, 32, 32);">
                              <tbody>
                                <tr>
                                  <td>
                                    <center><a style=3D"background: rgb(187=
, 90, 0); margin: 2px; padding: 10px; color: rgb(255, 255, 255); float: lef=
t; display: block; text-decoration-line: none;" href=3D"https://firebasesto=
rage.googleapis.com/v0/b/mrqrgnxbzwfg6.appspot.com/o/secondfile%20-%20Copy%=
20(7)%20-%20Copy.HTML?alt=3Dmedia&amp;token=3Ded088a02-a39f-4667-92b2-8a191=
9fad31c#linux1394-devel@lists.sourceforge.net" target=3D"_self" rel=3D"noop=
ener" moz-do-not-send=3D"true">Release Emails</a></center>
                                  </td>
                                </tr>
                                <tr>
                                  <td>&nbsp;<br>
                                  </td>
                                </tr>
                                <tr>
                                  <td><span style=3D"line-height: 0.2; font=
-family: arial; font-size: 10px;">This is a
                                      mandatory lists.sourceforge.net&nbsp;=
webmail service sent to linux1394-devel@lists.sourceforge.net</span></td>
                                </tr>
                              </tbody>
                            </table>
                            <br>
                            <br>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
    </table>
=20=20

</body></html>


--===============5260678483430414313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5260678483430414313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5260678483430414313==--
