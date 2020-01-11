Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F7A137BBC
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Jan 2020 06:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:To:Subject:MIME-Version:Message-ID:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2JaUiAtRxgOii8CqWK2gzLP3bqm6RCG5KdGi+aXBQKo=; b=c7lH0WNQZpt5BEaoPxwnLzyKhN
	u0TWfDlJbsX0OHMbsghIWzZ541K8M4FlBbKsWhoJjh9PHedZkzEK3Vs03RU8B/3pW8NXT7Ra0tafH
	WoBKcaQnIx15UltCLBbtXkzaRHQvjB8R4ctRdg0yBsBPd9zshWk2F5z5fyn1S7TXXSMM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iq9jL-0000E8-T5; Sat, 11 Jan 2020 05:54:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounce-HP2v40000016f932b0f2bb101886e96c569c8063@comms.yahoo.net>)
 id 1iq9jK-0000Dw-2C
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Jan 2020 05:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Date:To:From:Subject:Reply-To:
 MIME-Version:Message-ID:List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=woW6yaZOuRwNLVwUtzUBth5NZbH86rdRcJ55nDKUV4g=; b=nMrM8E1y02Wbkg9VM3zz0h5Jq5
 QrIDfX3GqCs6ZXabZJ4ECsj2flFfODXguyTYJdCq/mrbfaekz3w6rbMKwXD7efMVAhy+tqRdhBCkS
 /6GjYSzdkhs92om7VOTg4IaRzjf1mklmSLaKu1mdC3+f2rGAxhiKOJ+l5Z9pDrVORv2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Date:To:From:Subject:Reply-To:MIME-Version:Message-ID:
 List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=woW6yaZOuRwNLVwUtzUBth5NZbH86rdRcJ55nDKUV4g=; b=GnY/D0mtrCGzaTK6rXDoI8X19D
 jOiZK6AG+bVFflTtaRGXaDEvmprMbKmw1yuHVc2+KcldJHkO1fQR7j8KBwQB8trTFWxOXrZItcbrf
 pXkXoFR5Y4BNupQ7HsX9pin/8ZPxXi+ngfNRGmeLksqx/jpbQDDYn2lQ88pFYL7G0+Nw=;
Received: from mta058aa.pmx1.epsl1.com ([159.127.162.58])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iq9jI-00G9i7-3W
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Jan 2020 05:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=comms.yahoo.net;
 s=ep1; t=1578722070;
 bh=Rb42ZRAQsQ+VyzGtwXmPVeK8f/qOk92WSUQh1PcpWz8=;
 h=MIME-Version:Subject:From:To:Date:Content-Type;
 b=j/O9y2KJt8RhwEtA6wq75njLRwNXc9ZUIO3fJ3Ua82AKhJftaQ6pth1DQ58XlOMi8
 9438MlCbKnc0hUY60SvmhGLmTmIpqgy8FocXVUE9clmS1qW2pCvWe5g/Rcw3hRzCtF
 utpNuxls48YqMkTphAbkAX8PotKzCKQ9Sm8Yk0XQ=
Received: from [10.233.84.197] ([10.233.84.197:33100])
 by pc1udsmtn2n17 (envelope-from
 <bounce-HP2v40000016f932b0f2bb101886e96c569c8063@comms.yahoo.net>)
 (ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ECSTREAM
 id BC/07-24528-613691E5; Sat, 11 Jan 2020 05:54:30 +0000
Message-ID: <HP2v40000016f932b0f2bb101886e96c569c8063@comms.yahoo.net>
MIME-Version: 1.0
Feedback-ID: 7c719de0-32af-46ac-853b-9a699ba077d7:fc977c31-a768-4358-bbc7-31a90c9fa9a6:email:epslh1
X-NSS: 7c719de0-32af-46ac-853b-9a699ba077d7
Subject: New deadline for Yahoo Groups data request
To: linux1394-devel@lists.sourceforge.net
Date: Sat, 11 Jan 2020 05:54:30 +0000
X-Spam-Score: 4.8 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yahoo.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?159.127.162.58>]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [159.127.162.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MIME_HTML_ONLY_MULTI   Multipart message only has text/html MIME parts
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iq9jI-00G9i7-3W
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
From: Yahoo via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: "noreply@comms.yahoo.net"
 <noreply-HP2v40000016f932b0f2bb101886e96c569c8063@comms.yahoo.net>
Cc: Yahoo <info@comms.yahoo.net>
Content-Type: multipart/mixed; boundary="===============2571059735019648440=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2571059735019648440==
Content-Type: multipart/alternative;
 boundary="-=Part.4559679.73ffd26adbd55682.16f932b0f73.93a0466920fd1e94=-"

---=Part.4559679.73ffd26adbd55682.16f932b0f73.93a0466920fd1e94=-
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1=2E0 Strict//EN" "http://www=2Ew=
3=2Eorg/TR/xhtml1/DTD/xhtml1-strict=2Edtd">
<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns=3D"http://www=2Ew3=
=2Eorg/1999/xhtml" xmlns:o=3D"urn:schemas-microsoft-com:office:office" dir=
=3D"ltr" style=3D"margin:0; padding:0" lang=3D"en">
<head></head>
<head>
	<title></title>
	<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
	<meta name=3D"viewport" content=3D"width=3Ddevice-width, user-scalable=3D=
no,initial-scale=3D1=2E0, minimum-scale=3D1=2E0, maximum-scale=3D1=2E0">
	<meta name=3D"format-detection" content=3D"telephone=3Dno">
	<link rel=3D"stylesheet" type=3D"text/css" href=3D"yahoo_groups_eol_sa=2E=
css">
	<style type=3D"text/css">
	</style>
</head>
<body dir=3D"ltr" class=3D"body" style=3D"font-size: 0;margin: 0;padding: =
0;">
	<!--[if mso]>
	<style type=3D"text/css">
	body, table, td, th, a, span, sup, sub, strong {font-family: Arial, Helve=
tica, sans-serif !important;}
	</style>
	<![endif]-->
	<!--[if gte mso 9]><xml>
	<o:OfficeDocumentSettings>
	<o:AllowPNG/>
	<o:PixelsPerInch>96</o:PixelsPerInch>
	</o:OfficeDocumentSettings>
	</xml><![endif]-->
	<div class=3D"preview" height=3D"0" style=3D"display: none;font-size: 0;h=
eight: 0;line-height: 0;"></div>
	<section>
		<table dir=3D"ltr" id=3D"full" cellpadding=3D"0" cellspacing=3D"0" align=
=3D"center" width=3D"100%" role=3D"presentation" style=3D"border: 0;border-=
collapse: collapse;mso-table-lspace: 0;mso-table-rspace: 0;padding: 0;margi=
n: 0 auto;width: 100%;">
			<tr>
				<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-rule: exac=
tly;">
					<table class=3D"container" cellpadding=3D"0" cellspacing=3D"0" align=
=3D"center" width=3D"600" role=3D"presentation" style=3D"width: 600px;borde=
r: 0;border-collapse: collapse;mso-table-lspace: 0;mso-table-rspace: 0;padd=
ing: 0;margin: 0 auto;table-layout: fixed;background-color: #FFFFFF;">
						<tr>
							<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-rule: e=
xactly;">
								<table class=3D"c-inner email-border" cellpadding=3D"0" cellspacin=
g=3D"0" align=3D"center" width=3D"600" role=3D"presentation" style=3D"width=
: 600px;border: 1px solid #e0e0e0;border-collapse: collapse;mso-table-lspac=
e: 0;mso-table-rspace: 0;padding: 0;margin: 0 auto;">
									<!-- logo -->
									<!-- header- -->
									<tr>
										<td bgcolor=3D"#400090" style=3D"-webkit-text-size-adjust: 100%;=
mso-line-height-rule: exactly;">
											<table class=3D"header" cellpadding=3D"0" cellspacing=3D"0" ali=
gn=3D"center" width=3D"600" role=3D"presentation" style=3D"width: 600px;bor=
der-bottom: 1px solid #e0e0e0;border: 0;border-collapse: collapse;mso-table=
-lspace: 0;mso-table-rspace: 0;padding: 0;margin: 0 auto;">
												<tr>
													<td class=3D"spacer" style=3D"line-height: 20px;font-size: 20=
px;mso-line-height-rule: exactly;-webkit-text-size-adjust: 100%;">&nbsp;</t=
d>
												</tr>
												<tr>
													<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-r=
ule: exactly;">
														<table class=3D"inner" cellpadding=3D"0" cellspacing=3D"0" a=
lign=3D"center" width=3D"550" role=3D"presentation" style=3D"width: 550px;b=
order: 0;border-collapse: collapse;mso-table-lspace: 0;mso-table-rspace: 0;=
padding: 0;margin: 0 auto;">
															<tr>
																<td style=3D"-webkit-text-size-adjust: 100%;mso-line-heigh=
t-rule: exactly;">
																	<img src=3D"https://s=2Eyimg=2Ecom/cv/apiv2/yahoo_logos/y=
_logo_white_1200x333=2Epng" width=3D"150" alt=3D"Yahoo!" style=3D"display: =
block;">
																</td>
															</tr>
															<tr>
																<td class=3D"spacer" style=3D"line-height: 20px;font-size:=
 20px;mso-line-height-rule: exactly;-webkit-text-size-adjust: 100%;">&nbsp;=
</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- /header- -->
									<!-- mod- -->
									<tr>
										<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-rule=
: exactly;">
											<table class=3D"mod-1" cellpadding=3D"0" cellspacing=3D"0" alig=
n=3D"center" width=3D"600" role=3D"presentation" style=3D"width: 600px;bord=
er: 0;border-collapse: collapse;mso-table-lspace: 0;mso-table-rspace: 0;pad=
ding: 0;margin: 0 auto;">
												<tr>
													<td class=3D"spacer" style=3D"line-height: 30px;font-size: 30=
px;mso-line-height-rule: exactly;-webkit-text-size-adjust: 100%;">&nbsp;</t=
d>
												</tr>
												<tr>
													<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-r=
ule: exactly;">
														<table class=3D"inner" cellpadding=3D"0" cellspacing=3D"0" a=
lign=3D"center" width=3D"540" role=3D"presentation" style=3D"width: 540px;b=
order: 0;border-collapse: collapse;mso-table-lspace: 0;mso-table-rspace: 0;=
padding: 0;margin: 0 auto;">
															<tr>
																<td class=3D"copy paragraph" style=3D"-webkit-text-size-ad=
just: 100%;mso-line-height-rule: exactly;font-family: Arial, sans-serif;col=
or: #000000;font-size: 14px;line-height: 21px;">

Hi Yahoo Member,<br><br>
In recent weeks, we communicated the latest changes to Yahoo Groups and ex=
plained how to request a download of any content you=E2=80=99ve previously =
posted to the platform=2E Some Groups users asked us for more time, and in =
response to these requests, we have decided to <a href=3D"http://service=2E=
comms=2Eyahoo=2Enet/T/v40000016f932b0f2bb101886e96c569c8/7c719de032af46ac00=
00021ef3a0bcc2/7c719de0-32af-46ac-853b-9a699ba077d7?__dU__=3Dv0G4RBKTXg2Gvz=
BXXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_1P=
8SSwvgaM7Bj1wKVct32ASc-4m4ysiX_UQLVreSYX4hf7hjg5EYMyu7uo3sjT_TWaItjnZD2fKiu=
tnoDyw5yyi7HBUk5zcCzUEDjtQfab7VLWOLAq9ktiYz9ibFqYxU-Bk_ikn88vAt-nTvJlTlJJGp=
CzPlo0-vsVAYrVQ7ztoXUj6GscGDXGHRDi7-oHkm9rKstRiyuIdxj7ETr-Wrbb7ritzG2WlPDil=
CoBUTgaWjkhCUTGOdaPq2xvrl_Ghq-8NPHqsfQ-IAKAEBzazrs3TSMzi_dzXW3uBd15CWcJnw=
=3D=3D">extend the deadline</a>=2E Groups users now have until <strong>Frid=
ay, January 31, 2020 at 11:59pm PST </strong>to submit a request for their =
data=2E<br><br>
We have now taken down all user content from the Yahoo Groups website=2E  =
However, we will continue to accept users=E2=80=99 requests for their data =
until January 31, 2020, and will ensure these have been fulfilled prior to =
deleting the data=2E<br><br>
For additional support, users can email YahooGroupsEscalations@verizonmedi=
a=2Ecom and our team will troubleshoot any issues=2E<br><br>
Best,<br>
The Yahoo Groups team

															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class=3D"spacer" style=3D"line-height: 30px;font-size: 30p=
x;mso-line-height-rule: exactly;-webkit-text-size-adjust: 100%;">&nbsp;</td=
>
											</tr>
										</table>
									</td>
								</tr>
								<!-- /mod- -->
								<!-- logo -->
								<!-- footer -->
								<tr>
									<td style=3D"mso-line-height-rule: exactly;-webkit-text-size-adju=
st: 100%;" bgcolor=3D"#f1f1f5">
<table class=3D"footer" cellpadding=3D"0" cellspacing=3D"0" align=3D"cente=
r" width=3D"100%" role=3D"presentation" style=3D"background-color: #f1f1f5;=
">
<tbody>
<tr>
<td class=3D"spacer" style=3D"line-height: 30px; font-size: 30px;">&nbsp;<=
/td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center"><a href=3D"http://service=2Ecomms=2Eyahoo=
=2Enet/T/v40000016f932b0f2bb101886e96c569c8/7c719de032af46ac0000021ef3a0bcc=
3/7c719de0-32af-46ac-853b-9a699ba077d7?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4b=
fSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3T=
-NDTMG5CuRie2QskgROolp_WfnCnRO71lemWEq7yMQcv3apwl0dmIq6zzV5o07AGPcn7d9FlQ7n=
NymjFepTgUJp7zeFo-QZ_6QGTD3wwpd0EiCPongWA8HE3fu4BF7R7b90sPQpPoVHFAMpSUjGKq-=
RMonZa56WcgqDT4TKvIE_uTB5_Eb6BNNHFDPG8hueF21liEwBvZ4CgdZhnYBUfoijRegy6zzCEK=
k86tTzo_U1iFEDXVIsb4DwZNtYMxI7rJ--nf5wxQYnc8aFU3ZFtGobnMf5Kw=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Privacy Policy</a> | <a href=3D"http://service=2Ecomms=2Eyaho=
o=2Enet/T/v40000016f932b0f2bb101886e96c569c8/7c719de032af46ac0000021ef3a0bc=
c4/7c719de0-32af-46ac-853b-9a699ba077d7?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4=
bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3=
T-NDTMG5CuRie2QskgROolp_WfnCnc3nC1EsV1GPAjCwvLM9cxtyA3YKtxCMISgWm4WshCvq1-y=
MsqWWJEkkafHR8lEC6VLXRhFrUz-W1RZbKLvuYTLab-ZxqChBO31SocbycPh-fBTiDGGRxdry-n=
XERnaFjVRA6N8kgtNRLnQX51ICSctm2VewSkK-V6geaOXMYWJqT-hd3Msbo2oyA3L2s6U27mrGl=
JWmeyAHzYAGmhGl1UgVUojgwtrDZI8cFsVsQo3H3A1bRxzgVMvfof4do8pixA=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Terms of Service</a> | <a href=3D"http://service=2Ecomms=2Eya=
hoo=2Enet/T/v40000016f932b0f2bb101886e96c569c8/7c719de032af46ac0000021ef3a0=
bcc5/7c719de0-32af-46ac-853b-9a699ba077d7?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQ=
D4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_30tcPSLyBQEa=
0klOzPQdng8h8pYsOOPIx4lAcTgLkjUgUuaPA1sO81sGihz4nICRG4tpiHDtPRzGsk8KGp-YRNX=
JsrYAiWgISPpe3r_uKN5o-3awbreRjGlpP23WTJaFfLWztKdCLkt9W0KQBwdc7VR5nbdSy_O31N=
-vVgnvLi3brCrBFtEdRKuYlTWEt3YHQsuHaajpx5-pRC5sLQvv_Kmilh6IWLPMd197dXJshrXmj=
t6js_XWJJEbBMzrrwJ-lf6eEbfghAfw=3D=3D" target=3D"_blank" style=3D"text-deco=
ration: none; color: #00009e;" rel=3D"noopener noreferrer">Customer Support=
</a></td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center">701 First Avenue, Sunnyvale, CA 94089<br>=
=C2=A92020 Yahoo</td>
</tr>
<tr>
<td class=3D"spacer" style=3D"line-height: 30px; font-size: 30px;">&nbsp;<=
/td>
</tr>
</tbody>
</table>

									</td>
								</tr>
								<!-- gmailfix add after footer-->
								<tr id=3D"gmail-fix">
									<td style=3D"-webkit-text-size-adjust: 100%;mso-line-height-rule:=
 exactly;">
										<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" align=3D=
"center" width=3D"600" style=3D"border: 0;border-collapse: collapse;mso-tab=
le-lspace: 0;mso-table-rspace: 0;padding: 0;margin: 0 auto;">
											<tr>
												<td cellpadding=3D"0" cellspacing=3D"0" border=3D"0" height=3D=
"1" ; style=3D"line-height: 1px;min-width: 600px;-webkit-text-size-adjust: =
100%;mso-line-height-rule: exactly;">
													<img src=3D"https://s=2Eyimg=2Ecom/cv/apiv2/icons/spacer_img_=
1x1=2Epng" width=3D"600" height=3D"1" style=3D"display: block; max-height: =
1px; min-height: 1px; min-width: 600px; width: 600px;">
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<!-- /gmail -->
								<!-- footer -->
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</section>

<img src=3D'http://service=2Ecomms=2Eyahoo=2Enet/O/v40000016f932b0f2bb1018=
86e96c569c8/7c719de032af46ac00004c5a42963aa1' style=3D"display:none; max-he=
ight: 0px; font-size: 0px; overflow: hidden; mso-hide: all"/></body>
</html>
---=Part.4559679.73ffd26adbd55682.16f932b0f73.93a0466920fd1e94=---



--===============2571059735019648440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2571059735019648440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2571059735019648440==--


