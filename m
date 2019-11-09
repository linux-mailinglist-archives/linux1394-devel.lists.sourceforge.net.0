Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04828F5C48
	for <lists+linux1394-devel@lfdr.de>; Sat,  9 Nov 2019 01:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:To:Subject:MIME-Version:Message-ID:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dYtXHoQpG4qXyNw5MgmjNFiHobX3+uDc+zmuB1hod/M=; b=PubmlbIJFoRaFFqUEEBMfcLua9
	GcZhlpgzFo7PHs593/uRCYGmKNy/4xRv3sFOO+XXzuDz+rAT6RMogoEQZxELgjMsLnCcbluIk+QXF
	EEpku/pY5CBCps4DP17Xce8jQ6T54yVaUYDC4a2PPglP5tGvksjBRlTNV3vMbqr9Grc8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iTEcp-0006Bs-K4; Sat, 09 Nov 2019 00:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounce-HP2v40000016e4d906bb0c9baf46e96c65848210@comms.yahoo.net>)
 id 1iTEcl-0006BP-Nm
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Nov 2019 00:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Date:To:From:Subject:Reply-To:
 MIME-Version:Message-ID:List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hg97tu/lk6Ia1Bau/hUdjONX3fksZQoLrS5JyFFJIic=; b=ZCP+jh5mFDFiEejRXgCqsa4E7B
 XhenlrgdYz1rRzcIz49GqqB8uE5y7gxI5Ov10DK06HT+Og5Ki1dQL4O6SKz9AupcrQBFGlUWlytVo
 E/SsOxbHYCv4+plqMIcAEAGUnYiR6+HMjiP8E3fK0mKgd54WvYgLupCh7NG7sXxVOY6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Date:To:From:Subject:Reply-To:MIME-Version:Message-ID:
 List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hg97tu/lk6Ia1Bau/hUdjONX3fksZQoLrS5JyFFJIic=; b=em2SJzUXZd201UDDtRubIQ8vcq
 bV/RNEMl6I77ZSeOM6qQ0zLT4uFnZ8mkZJ21TWLK6fdYLo90knb9rB/g+/GRxiKB4gnBS/SS/6qjV
 qw4UsrFKdoI74hK+CRmf9q24lKNu4LTjnflMpbf4Gq3h5WT/JEH9X5XOOiwL9AXfncCY=;
Received: from mta024aa.pmx1.epsl1.com ([159.127.162.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iTEck-008zq4-Cs
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Nov 2019 00:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=comms.yahoo.net;
 s=ep1; t=1573259340;
 bh=M/O3EWBH7ARnLAoUBeyLS38uhzaqb4xlQWHRemsL24M=;
 h=MIME-Version:Subject:From:To:Date:Content-Type;
 b=kMZiHczmo8SeobucDDFKXg474EX4J62IiAOkMD7kKaKVRtuVZaMSH+BEYT4cmWDPt
 hGOTjLFtbwMpEiIryvH9RKuQWqnzVU0W92uwrlhP05X/v3HFw+qQt9UfGIkObjnsyH
 +bArTHTJ7b2kcHnqTYn79mbW67qrPfjBniI5tt+w=
Received: from [10.233.18.232] ([10.233.18.232:49750])
 by pc1udsmtn2n15 (envelope-from
 <bounce-HP2v40000016e4d906bb0c9baf46e96c65848210@comms.yahoo.net>)
 (ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ECSTREAM
 id 92/20-54788-C4806CD5; Sat, 09 Nov 2019 00:29:00 +0000
Message-ID: <HP2v40000016e4d906bb0c9baf46e96c65848210@comms.yahoo.net>
MIME-Version: 1.0
Feedback-ID: 9ce0c00d-0f52-4989-bd10-d0b724dee163:fc977c31-a768-4358-bbc7-31a90c9fa9a6:email:epslh1
X-NSS: 9ce0c00d-0f52-4989-bd10-d0b724dee163
Subject: Yahoo Groups - Upcoming Product Changes to Yahoo Groups
To: linux1394-devel@lists.sourceforge.net
Date: Sat, 9 Nov 2019 00:29:00 +0000
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [159.127.162.24 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?159.127.162.24>]
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iTEck-008zq4-Cs
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
 <noreply-HP2v40000016e4d906bb0c9baf46e96c65848210@comms.yahoo.net>
Cc: Yahoo <info@comms.yahoo.net>
Content-Type: multipart/mixed; boundary="===============6821144030566560659=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============6821144030566560659==
Content-Type: multipart/alternative;
 boundary="-=Part.173ef43.bebd682b19714d25.16e4d906c01.f9254d2f91f70321=-"

---=Part.173ef43.bebd682b19714d25.16e4d906c01.f9254d2f91f70321=-
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1=2E0 Strict//EN" "http://www=2Ew3=
=2Eorg/TR/xhtml1/DTD/xhtml1-strict=2Edtd">
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
Dear Group Moderators and Members,<br><br>
Thank you for your commitment to Yahoo and for helping us define the power=
 of digital communities=2E Eighteen years ago, we combined the functionalit=
y of a site called eGroups=2Ecom with a precursor community platform called=
 Yahoo Clubs to launch Yahoo Groups=2E Since then, you and millions of othe=
rs have helped prove our hypothesis, by creating and joining more than 10 M=
illion groups=2E<br><br>
A lot has changed about the Internet since 2001, including the ways most p=
eople now use Yahoo Groups=2E Today, most Yahoo Groups activity happens in =
your email inbox, not on the bulletin boards where Yahoo Groups started in =
the pre-smartphone age=2E Increasingly, people want content and connections=
 coming directly to them, and this is why we continue to invest in Yahoo Ma=
il -- including the recent launch of a new
<a href=3D"http://service=2Ecomms=2Eyahoo=2Enet/T/v40000016e4d906bb0c9baf4=
6e96c65848/9ce0c00d0f5249890000021ef3a0bcc2/9ce0c00d-0f52-4989-bd10-d0b724d=
ee163?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3=
tviDHXIoXcPxvDgUUCCPvXMWoX_1c5OGBAFPGWRLtePbym4Jo-rHoYmNTevg8rH_BooC1L07AGP=
cn7d9FlQ7nNymjFepTgUJp7zeFo-QZ_6QGTD3wwpd0EiCPongWA8HE3fu4BF7R7b90sPQpPoVHF=
AMpSUjGKq-RMonZa56WcgqDT4TKvIE_uTB5_Eb6BNNHFDPG8hueF21liEwBvZ4CgdZhnYBUfoij=
Regy6zzCEKk86tTzpBhJiy8n5go4_gocgDFh89pfuL-Sk76D4UI03voWZPPn9oIKbWOumg=3D=
=3D" style=3D"font-family: Arial, sans-serif;text-align: center;text-decora=
tion: none;">Yahoo Mail app</a> that is currently the highest-rated email a=
pp in the App Store and Google Play=2E<br><br>
So, as our users=E2=80=99 habits have evolved, we have begun the process o=
f evolving our approach to help active Yahoo Groups thrive and migrate to o=
ur email platform=2E To help you plan for these changes, below is the sched=
ule of how this transition will happen=2E<br><br>
Beginning October 28, 2019:<br>
<ul style=3D"margin:0;">
<li style=3D"margin:0;mso-special-format:bullet;">Users will be able to jo=
in a Yahoo Group only through an invite from the Group Moderator or by subm=
itting a request to join a Group, which requires approval by the Group Mode=
rator=2E</li>
<li style=3D"margin:0;mso-special-format:bullet;">Since we are moving Grou=
p communication from posting on message boards to email distribution, uploa=
ding and hosting of new content will also be disabled on the Yahoo Groups w=
ebsite=2E </li>
</ul><br>
Beginning December 14, 2019:<br>
<ul style=3D"margin:0;">
<li style=3D"margin:0;mso-special-format:bullet;">All Groups will be made =
private and any content that was previously uploaded via the website will b=
e removed=2E We believe privacy is critical and made this decision to bette=
r align with our overall principles=2E</li>
<li style=3D"margin:0;mso-special-format:bullet;">If you would like to kee=
p any of the content you=E2=80=99ve posted or stored in the past within you=
r Yahoo Group, please download it by December 14 by accessing <a href=3D"ht=
tp://service=2Ecomms=2Eyahoo=2Enet/T/v40000016e4d906bb0c9baf46e96c65848/9ce=
0c00d0f5249890000021ef3a0bcc3/9ce0c00d-0f52-4989-bd10-d0b724dee163?__dU__=
=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPx=
vDgUUCCPvXMWoX_0DA16EdUMykOxW2gVCnxDU5cHx-QK3QTtoTSEFskCd7V1LSW30ORTEac7C7l=
1fJ1QloWG7xy2htV8dLg14Xm6qCnbebc5k5F2H2ylwiJ2VZhtSqPP35IvMc55oxGKhFK4uBS5LW=
WYTozo5lnFodd12BNkUiwusLY0gvxOA83FvxqIfvP6XNU0TafefJjMG9rgwm2Jwt5YCVR7FWg_a=
fvbzZb26tc-5uk_VF-CmKCYOcYT-wzMYDhsZQdGPOl_hx8TjAXJ7xolfOXL9cYqx-Nsw" style=
=3D"font-family: Arial, sans-serif;text-align: center;text-decoration: none=
;">this link</a>=2E</li>
</ul><br>
As these dates get closer, we will send follow-up reminders=2E More inform=
ation about the upcoming changes can be found <a href=3D"http://service=2Ec=
omms=2Eyahoo=2Enet/T/v40000016e4d906bb0c9baf46e96c65848/9ce0c00d0f524989000=
0021ef3a0bcc4/9ce0c00d-0f52-4989-bd10-d0b724dee163?__dU__=3Dv0G4RBKTXg2GvzB=
XXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_30t=
cPSLyBQEa0klOzPQdng8h8pYsOOPIzEGVMPtE8Jl_ezvcJ3kY1QZleSAk4Bb5JpzsLuXV8nVCWh=
YbvHLaG1Xx0uDXhebqoKdt5tzmTkXYfbKXCInZVmG1Ko8_fki8xznmjEYqEUri4FLktZZhOjOjm=
WcWh13XYE2RSLC6wtjSC_E4DzcW_Goh-8_pc1TRNp958mMwb2uDCbYnC3lgJVHsVaD9p-9vNlvb=
q1z7m6T2kWgrf4IBrFzCM2QavvFK7Bpxm_R2AtxZIfNbeIW1UYmwX8yzEVpwI=3D" style=3D"=
font-family: Arial, sans-serif;text-align: center;text-decoration: none;">h=
ere</a>=2E<br><br>
While this evolution of Yahoo Groups is inspired by how we see the platfor=
m being used today, we know change can be difficult=2E Here are a few impor=
tant facts as we make this transition:<br><br>
1=2E <strong>Yahoo Groups is not going away</strong> - We know that our us=
ers are deeply passionate about connecting around shared interests, and we =
are evolving Groups to better align with how you use it today=2E<br><br>
2=2E <strong>New groups can still be formed</strong> - Users can continue =
to connect with others around their common bonds and interests=2E From anim=
al rescues to sporting and activity groups, civic organizations to local PT=
As, members of our Yahoo Groups will remain connected and able to share the=
ir activities and interests=2E All of the content that you have shared prev=
iously on the website, can continue to be shared via email=2E <br><br>
We know that Yahoo Groups is an important online extension of your real-li=
fe group of friends, interests and communities, and we are committed to sup=
porting communities that rely on Yahoo Groups=2E Thanks for coming along wi=
th us this far=2E We look forward to seeing where the technology -- and you=
 -- take us in the decades to come=2E<br><br>
Sincerely,<br>
The Groups Team
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
<td class=3D"spacer" style=3D"line-height: 30px; font-size: 30px;">=C2=A0<=
/td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center"><a href=3D"http://service=2Ecomms=2Eyahoo=
=2Enet/T/v40000016e4d906bb0c9baf46e96c65848/9ce0c00d0f5249890000021ef3a0bcc=
5/9ce0c00d-0f52-4989-bd10-d0b724dee163?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4b=
fSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3T=
-NDTMG5CuRie2QskgROolp_WfnCnRO71lemWEq7yMQcv3apwl0dmIq6zzV5o07AGPcn7d9FlQ7n=
NymjFepTgUJp7zeFo-QZ_6QGTD3wwpd0EiCPongWA8HE3fu4BF7R7b90sPQpPoVHFAMpSUjGKq-=
RMonZa56WcgqDT4TKvIE_uTB5_Eb6BNNHFDPG8hueF21liEwBvZ4CgdZhnYBUfoijRegy6zzCEK=
k86tTzqxGgRo5KZUw022fKMIHDfdULz7DLh8jUGpkokLzRdue25PLaiuXh6g=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Privacy Policy</a> | <a href=3D"http://service=2Ecomms=2Eyaho=
o=2Enet/T/v40000016e4d906bb0c9baf46e96c65848/9ce0c00d0f5249890000021ef3a0bc=
c6/9ce0c00d-0f52-4989-bd10-d0b724dee163?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4=
bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3=
T-NDTMG5CuRie2QskgROolp_WfnCnc3nC1EsV1GPAjCwvLM9cxtyA3YKtxCMISgWm4WshCvq1-y=
MsqWWJEkkafHR8lEC6VLXRhFrUz-W1RZbKLvuYTLab-ZxqChBO31SocbycPh-fBTiDGGRxdry-n=
XERnaFjVRA6N8kgtNRLnQX51ICSctm2VewSkK-V6geaOXMYWJqT-hd3Msbo2oyA3L2s6U27mrGl=
JWmeyAH8oPEJ-G3tpj01v8K9zGBpIPtxsKRMIc56_fXPGIKPCnGWHH9aSnzMg=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Terms of Service</a> | <a href=3D"http://service=2Ecomms=2Eya=
hoo=2Enet/T/v40000016e4d906bb0c9baf46e96c65848/9ce0c00d0f5249890000021ef3a0=
bcc7/9ce0c00d-0f52-4989-bd10-d0b724dee163?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQ=
D4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_30tcPSLyBQEa=
0klOzPQdng8h8pYsOOPIx4lAcTgLkjUgUuaPA1sO81sGihz4nICRG4tpiHDtPRzGsk8KGp-YRNX=
JsrYAiWgISPpe3r_uKN5o-3awbreRjGlpP23WTJaFfLWztKdCLkt9W0KQBwdc7VR5nbdSy_O31N=
-vVgnvLi3brCrBFtEdRKuYlTWEt3YHQsuHaajpx5-pRC5sLQvv_K4E8vlRPbYM5-p_b9o9bPZRf=
eT-_Bu9o8akJTF_Y8dZBfY-ufYHIxEg=3D=3D" target=3D"_blank" style=3D"text-deco=
ration: none; color: #00009e;" rel=3D"noopener noreferrer">Customer Support=
</a></td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center">=C2=A92019 Yahoo<br />701 First Avenue, Su=
nnyvale, CA 94089</td>
</tr>
<tr>
<td class=3D"spacer" style=3D"line-height: 30px; font-size: 30px;">=C2=A0<=
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

<img src=3D'http://service=2Ecomms=2Eyahoo=2Enet/O/v40000016e4d906bb0c9baf=
46e96c65848/9ce0c00d0f52498900004c5a42963aa1' style=3D"display:none; max-he=
ight: 0px; font-size: 0px; overflow: hidden; mso-hide: all"/></body>
</html>
---=Part.173ef43.bebd682b19714d25.16e4d906c01.f9254d2f91f70321=---



--===============6821144030566560659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6821144030566560659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6821144030566560659==--


