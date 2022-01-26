Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24549D690
	for <lists+linux1394-devel@lfdr.de>; Thu, 27 Jan 2022 01:08:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nCsLF-0007Ex-Ce; Thu, 27 Jan 2022 00:08:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <com@jeunesse-sports.gouv.fr>) id 1nCsLE-0007Er-KU
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Jan 2022 00:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lnWFATI8h0TzkQtZXv82JZ6fwzq5xTisyZ4Ax3B5EYI=; b=d18T1fcAHbSprQiky3Z301lfhd
 Z//fZSOBd5rWSLkKEVIRxtrtgoQBRTPrwV9s+f57mNy8O5gVnjHOxL4hCajsaAConphBy2shWY26B
 L/TCVsGEZTeVGEOdAIrt8fFcKConCYfa4EAH4qDBtS+aASbUtkwc2Le1YutCowoSb+AE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lnWFATI8h0TzkQtZXv82JZ6fwzq5xTisyZ4Ax3B5EYI=; b=i
 S1H/apE/MEekhNxuBRps3HBLICvigkkHaQMCTljMsmOaDNXy4f5jNKuEYNC6fCyn8FNWyhZIIXPnF
 zkD6XoH1AqUs1NLiwLED6kz9PAxlQRVXPKDQLShk915PErhsq1MHOyBTyDRyPDLrwFDJLncA9gyr0
 /GXQzsmW8a9yGOss=;
Received: from pmxnjo01.cegedim.fr ([80.94.184.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCsL9-00047F-F2
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Jan 2022 00:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=jeunesse-sports.gouv.fr; i=@jeunesse-sports.gouv.fr;
 q=dns/txt; s=cegedim; t=1643242120; x=1674778120;
 h=date:to:from:reply-to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/cWK1O1axKGfRKoFJJ5hGAGzr2tzd6CPTr2INRpHJ00=;
 b=e3FrHZJVM7/ITbdEXt3d9I0oALSy+GYjuRBRLXQuGWROMYSCT83/i80R
 Kr15HiQ257yoz6n67wqhhnByEiM9s56Xxe436AeoTURaIKR+KH/pqBJH9
 w9MoSl1tqEsSdxfI2pKP3rBrJ+wDhlxukWOM1ULnF2OjbKPn7Rnb5k+D1
 cipiN98ZyL0MbyV8CzUSJUNib00RvXnosLGRnEPF0cTJezh0vbT/JTmTN
 n986EsBJXkYlnl2Dl60nVbLzY0NiH3jdqCrSXNv7vWgFH7IBpLNU2Opf8
 3maztiT9vOxmSbgWPJHlKhN6kUFkIJXTQ2sMAc61T694aNNoOZbB5U4uv w==;
IronPort-SDR: O42Yoy/yYh5Wo1tdzJbFjQBmzmbOpb8+LbSDkttf5HbKtE76woSjgmU9MXcbk24hlmHKItbtPD
 pGgDNHx6MbFwcRJwKDa+IjQ1llunRlUUCasjG+pbj3m3E4E0hno0OAtogLtktMFaarrYzzWpr3
 i0C87pktfogYvVQbRKfIPITbtHZKB5Pp92rl8RDZb/9mN5yQetJYIOYbRkpxaVJkOq7YegedGJ
 Y7DnCTS0g+iBfVbbLhb3SO3sVhShEOACqJUSjsNpDxvqCYXp/POIF3q5mqdFmyj8I/B8soA5Z+
 Ivw=
Date: Thu, 27 Jan 2022 00:52:41 +0100
To: linux1394-devel@lists.sourceforge.net
From: =?iso-8859-1?Q?Jeunes=2Egouv=2Efr_=7C_Minist=C3=A8re_de_l=27Education_nat?=
 =?iso-8859-1?Q?ionale=2C_de_la_Jeunesse_et_des_Sports?=
 <com@jeunesse-sports.gouv.fr>
Subject: =?iso-8859-1?Q?A_lire_sur_Jeunes.gouv.fr_|_Minist=E8re_de_l'Education_nat?=
 =?iso-8859-1?Q?ionale,_de_la_Jeunesse_et_des_Sports_-_STOPBLUES,_une_appl?=
 =?iso-8859-1?Q?i_et_un_site?=
Message-ID: <2ef2a419c480c37fa8ddbaac642c5405@www.jeunes.gouv.fr>
X-Mailer: PHPMailer 5.2.27 (https://github.com/PHPMailer/PHPMailer)
X-Originating-IP: 10.88.161.8
MIME-Version: 1.0
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Bonjour,
 loanqik@gmail.com vous recommande la lecture de cette
 page : * STOPBLUES, une appli et un site *->
 https://www.jeunes.gouv.fr/STOPBLUES-une-appli-et-un-site
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.94.184.231 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
X-Headers-End: 1nCsL9-00047F-F2
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
Reply-To: "loanqik@gmail.com" <loanqik@gmail.com>
Content-Type: multipart/mixed; boundary="===============1046482199097463162=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============1046482199097463162==
Content-Type: multipart/alternative;
	boundary="b1_2ef2a419c480c37fa8ddbaac642c5405"
Content-Transfer-Encoding: 8bit

This is a multi-part message in MIME format.

--b1_2ef2a419c480c37fa8ddbaac642c5405
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Bonjour,

loanqik@gmail.com vous recommande la lecture de cette page :

* STOPBLUES, une appli et un site *-> https://www.jeunes.gouv.fr/STOPBLUES-une-appli-et-un-site


LOAN OFFER, Do you need a loan ? Are you in any financial mess or do you need funds to start up your own business? CALIFORNIA, PEOPLES MORTGAGE BELL LOAN, Do you need loan to settle your debt or pay off your bills or start a nice business? :contact our loan office e-mail: loanqik@gmail.com Personal Loan, Business Loan, Home Equity Loan, Debt Consolidations

FILL THE BORROWER'S INFORMATION

Your Name:
Your Address:
Your Country:
Your Occupation:
Loan Amount Needed:
Loan Duration:
Monthly Income:
Cell phone Number:

contact our loan office e-mail: loanqik@gmail.com

God bless



-- Envoi via le site Jeunes.gouv.fr | Ministère de l'Education nationale, de la Jeunesse et des Sports https://jeunes.gouv.fr --


--b1_2ef2a419c480c37fa8ddbaac642c5405
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: 8bit

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<title>A lire sur Jeunes.gouv.fr | Ministère de l'Education nationale, de la Jeunesse et des Sports - STOPBLUES, une appli et un site</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<style type="text/css">
		#outlook a {padding: 0;}
		body {width: 100% !important;}
		body {margin: 0;padding: 0;}
		img {border: none;font-size: inherit;font-weight: bold;height: auto;line-height: 100%;outline: none;text-decoration: none;text-transform: capitalize;}
		#backgroundTable {height: 100% !important;margin: 0;padding: 0;width: 100% !important;}
		body, .backgroundTable {background-color: #DDDDDD;}
		#templateContainer {border: 1px solid #CCCCCC;max-width: 600px !important;}
		h1,.h1,h2,.h2,h3,.h3,h4,.h4 {color: #202020;display: block;font-family: Verdana, Geneva, sans-serif;margin-bottom: 0.5em;text-align: left;}
		#templateHeader {background-color: #FFFFFF;border-bottom: 0;}
		#templateContainer, .bodyContent {background-color: #FFFFFF;margin-top: 40px;}
		.bodyContent {padding:30px;border-bottom:10px solid #bc9b93;}
		.bodyContent div {color: #222222;font-family: Verdana, Geneva, sans-serif;line-height: 150%;text-align: left;}
		.bodyContent div a:link, .bodyContent div a:visited {color: #336699;font-weight: normal;text-decoration: underline;}
		.bodyContent img {display: inline;margin-bottom: 10px;}
		.bodyContent img.puce {display: inline;margin-bottom: 0;}
		hr { height: 1px; margin: 1.5em 0; border: 0; background: #222222; color: #222222; }
		.spip_code, .spip_cadre {color: #606060;font-family: Courier,"Courier New",monospace;font-size: 1em;word-wrap:break-word;max-width: 100%;overflow: auto;}
		.coloration_code ol {list-style: none;}
		.spip_logos {float: right;margin-left: 10px;}
		.text {word-wrap:break-word;}
		.header,.footer {padding: 20px 40px;margin-left: -40px;margin-right: -40px;}
		.text > .header:first-child {margin-top: -40px;}
		.header {background: #e9e9e9;}
		.footer {border-top:2px solid #e9e9e9;margin-top: 40px;}
		.header hr,.footer hr {display: none}
		@media only screen and (max-width: 600px) {
			html,body {width: 100% !important;}
			body, .backgroundTable {background-color: #ffffff !important;}
			.bodyContent {padding:0 0 10px !important;border-top:0;border-bottom:0;}
			#templateHead {display: none}
			#templateContainer {width: 100% !important;border: 0 !important;margin-top: 0}
			#templateBody {width: 100% !important;}
			.padding {padding-left:0 !important;padding-right:0 !important;}
			.text {color: #101010 !important;}
			.header,.footer {padding: 10px;margin-left: -10px;margin-right: -10px;}
			.text > .header:first-child {margin-top: -10px;}
		}
		@media only screen and (max-device-width: 480px) {
			html,body {width: 320px !important;}
			body, .backgroundTable {background-color: #ffffff !important;}
			.bodyContent {padding: 0 0 10px !important;border-top:0;border-bottom:0;}
			#templateContainer {width: 320px !important;border: 0 !important;margin-top: 0;}
			#templateBody {width: 320px !important;}
			.padding {padding-left:0 !important;padding-right:0 !important;}
			.text {color: #101010 !important;}
		}
	</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0"
			style="margin: 0;padding: 0;width: 100% !important;background-color: #DDDDDD;">
<center>
	
	<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="backgroundTable"
				 style="margin: 0;padding: 0;height: 100% !important;width: 100% !important;background-color: #DDDDDD;">
		<tr>
			<td align="center" valign="top">
				<!-- // End Template Preheader \\ -->
				<table border="0" cellpadding="0" cellspacing="0" width="600" id="templateContainer"
							 style="border: 1px solid #CCCCCC;background-color: #FFFFFF;max-width: 600px !important;">
					<tr id="templateHead">
						<td class="headContent" style="padding:10px 40px;background: #bc9b93;"><strong style="color:#fff;text-transform:uppercase">Jeunes.gouv.fr | Ministère de l'Education nationale, de la Jeunesse et des Sports</strong></td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<!-- // Begin Template Body \\ -->
							<table border="0" cellpadding="0" cellspacing="0" width="600" id="templateBody">
								<tr>
									<td valign="top" class="bodyContent" style="background-color: #FFFFFF;padding:30px;">

										<!-- // Begin Module: Standard Content \\ -->
										<table border="0" cellpadding="10" cellspacing="0" width="100%">
											<tr>
												<td valign="top">
													<div class='text' style="color:#222222;font-family: Verdana, Geneva, sans-serif;font-size:100%;line-height:150%;text-align:left;word-wrap:break-word;">
														<p>Bonjour,</p>
<p>loanqik@gmail.com vous recommande la lecture de cette page&nbsp;:</p>
<p>* STOPBLUES, une appli et un site *-> <a href="https://www.jeunes.gouv.fr/STOPBLUES-une-appli-et-un-site" class='spip_url auto' rel='nofollow'>https://www.jeunes.gouv.fr/STOPBLUES-une-appli-et-un-site</a></p>
<p>LOAN OFFER, Do you need a loan&nbsp;? Are you in any financial mess or do you need funds to start up your own business&nbsp;? CALIFORNIA, PEOPLES MORTGAGE BELL LOAN, Do you need loan to settle your debt or pay off your bills or start a nice business&nbsp;? :contact our loan office e-mail&nbsp;: loanqik@gmail.com Personal Loan, Business Loan, Home Equity Loan, Debt Consolidations</p>
<p>FILL THE BORROWER'S INFORMATION</p>
<p>Your Name&nbsp;:<br class='autobr' />
Your Address&nbsp;:<br class='autobr' />
Your Country&nbsp;:<br class='autobr' />
Your Occupation&nbsp;:<br class='autobr' />
Loan Amount Needed&nbsp;:<br class='autobr' />
Loan Duration&nbsp;:<br class='autobr' />
Monthly Income&nbsp;:<br class='autobr' />
Cell phone Number&nbsp;:</p>
<p>contact our loan office e-mail&nbsp;: loanqik@gmail.com</p>
<p>God bless</p>
<p>&mdash;&nbsp;Envoi via le site Jeunes.gouv.fr | Ministère de l'Education nationale, de la Jeunesse et des Sports <a href="https://jeunes.gouv.fr/" class='spip_url spip_out auto' rel='nofollow external'>https://jeunes.gouv.fr</a> &mdash;</p><br /> <br />
													</div>
												</td>
											</tr>
											<tr>
												<td align="left" valign="top"
														style="color:#A39F9A !important;font-family: Verdana, Geneva, sans-serif; !important;font-size:90% !important;font-weight:normal !important;font-style:normal !important;text-decoration:none !important;vertical-align:top !important;text-align:left !important;">
													<br />
													<br />
													&mdash; Envoyé par <a href="https://jeunes.gouv.fr/">Jeunes.gouv.fr | Ministère de l'Education nationale, de la Jeunesse et des Sports</a>
													<br />
												</td>
											</tr>
										</table>
										<!-- // End Module: Standard Content \\ -->
									</td>
								</tr>
							</table>
							<!-- // End Template Body \\ -->
						</td>
					</tr>
				</table>
				<br>
			</td>
		</tr>
	</table>
</center>
</body>
</html>



--b1_2ef2a419c480c37fa8ddbaac642c5405--



--===============1046482199097463162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1046482199097463162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1046482199097463162==--


