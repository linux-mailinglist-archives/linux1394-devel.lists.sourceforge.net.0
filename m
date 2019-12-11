Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB8D119FD3
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Dec 2019 01:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:To:Subject:MIME-Version:Message-ID:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KdNgObcJsLfb+/Y+1RVDfyAfTWPlq/Gv4jPUAzVquIU=; b=PghnCFUDPj3j6nOcGHBprIqnCy
	8SYBSupJ61bXbcCDk57BcrNBZS/g1tzq+ihtEWwBiCIo0drupK4AgIV2BU1YTYv5GulyRg0rmZzYG
	9UY1FsmH4hyYug0zJnm4FL97yJSV0GAWl2TyR4vQNd8dVzQNXwwAj9AqQ435T6yZrmeI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iepke-0003ri-LV; Wed, 11 Dec 2019 00:21:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounce-HP2v40000016ef2549975b776bb6e96639540251@comms.yahoo.net>)
 id 1iepkc-0003rb-LD
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Dec 2019 00:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Date:To:From:Subject:Reply-To:
 MIME-Version:Message-ID:List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8GsInOM62XCs3nVxMhq/6XvAbgx57MozOKUSCjDWSWQ=; b=UWxRoml7GQ32H6SqvIdc1gaBbL
 YnXNm/+ubQU0T/BhbnvkRAGOHowIIIVoHumhYbwSXjmWFbTFsTnSumPZpxpsmdT6DReL1LWjdV4l2
 EtHuxwAHJDBz9sCna+jXcPYtE7GLRYwy8mW1yXA5L9Xtu0cu0fI2pUHDsGdwS4ve/VzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Date:To:From:Subject:Reply-To:MIME-Version:Message-ID:
 List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8GsInOM62XCs3nVxMhq/6XvAbgx57MozOKUSCjDWSWQ=; b=hEQROyH4m09vwTFXUYiBejSd1C
 z61c9+AsAhnvVK70QJN74DkmSaPM1mzobdIuFhrKABLFV2KeQvVglKsBAZOcDil9zhp17PSUzyf/l
 4qil3XgXHhWAkJtoOFdXa7G7y8KOckznViZQfrakGchkIf7XETd3gA+DcKLp1OSLocnw=;
Received: from mta025aa.pmx1.epsl1.com ([159.127.162.25])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iepkY-000Oj0-SL
 for linux1394-devel@lists.sourceforge.net; Wed, 11 Dec 2019 00:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=comms.yahoo.net;
 s=ep1; t=1576023661;
 bh=E9Qg4yN+ne+Icp9zOmsC7AFsP/ONGGsz5biH0KuYIFU=;
 h=MIME-Version:Subject:From:To:Date:Content-Type;
 b=Arg7sUDxMGp3r6nhM/yAw4qz8+Z2L6F1H7vzfaim5xpuR8gwjWJNhxPEVTQH4Ks96
 2Mb5iQJH+DmsPXe/zWk54HgKyF7th51ATidv9KGISzNZHcTYaSjaXsJtEY80YjxkZz
 NEew/7UNwaiqjSNWlv+j/mvg62jKkTblzbb99PrE=
Received: from [10.233.19.40] ([10.233.19.40:55246])
 by pc1udsmtn2n11 (envelope-from
 <bounce-HP2v40000016ef2549975b776bb6e96639540251@comms.yahoo.net>)
 (ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ECSTREAM
 id 47/D9-39714-D6630FD5; Wed, 11 Dec 2019 00:21:01 +0000
Message-ID: <HP2v40000016ef2549975b776bb6e96639540251@comms.yahoo.net>
MIME-Version: 1.0
Feedback-ID: dc8f074f-6251-4c44-878d-00cdb4ff8e38:fc977c31-a768-4358-bbc7-31a90c9fa9a6:email:epslh1
X-NSS: dc8f074f-6251-4c44-878d-00cdb4ff8e38
Subject: Next Steps: The Evolution of Yahoo Groups (Final Notification)
To: linux1394-devel@lists.sourceforge.net
Date: Wed, 11 Dec 2019 00:21:01 +0000
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yahoo.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [159.127.162.25 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?159.127.162.25>]
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iepkY-000Oj0-SL
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
 <noreply-HP2v40000016ef2549975b776bb6e96639540251@comms.yahoo.net>
Cc: Yahoo <info@comms.yahoo.net>
Content-Type: multipart/mixed; boundary="===============2295747405030242703=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2295747405030242703==
Content-Type: multipart/alternative;
 boundary="-=Part.25a5127.8b59a4a7fafc7afb.16ef2549a5a.3d994adf0b19888a=-"

---=Part.25a5127.8b59a4a7fafc7afb.16ef2549a5a.3d994adf0b19888a=-
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
Dear Group Moderators and Members,<br><br>
Last month we notified you of the changes coming to Yahoo Groups that bett=
er align with user habits, and today we are providing an update to guide yo=
u through the next steps of the transition=2E Yahoo Groups is not going awa=
y - but we are making adjustments to ultimately serve you better=2E We are =
amazed at the vibrant community you=E2=80=99ve created through Yahoo Groups=
 and we want to make sure you feel supported as we introduce these changes=
=2E <br><br>
The following changes were made since our last communication:<br><br>

&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp; Users can now only join a Yahoo Group=
 through an invite or group request approval by the Group Moderator=2E<br>
&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp; New Groups can=E2=80=99t be public=2E=
 They can only be private (not listed in Groups directory, membership by in=
vitation only) or restricted (listed in Groups directory, membership reques=
ts must be approved by a Group Moderator)=2E<br>
&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp; Members must share all content via em=
ail, and can no longer upload or host new content on the Yahoo Groups websi=
te itself=2E<br><br>

The following changes will be made on December 14, 2019:<br><br>

&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp; Public groups will no longer exist=2E=
 All existing public Groups will become restricted Groups that require Grou=
p Moderator approval to join=2E<br>
&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp; Any content that was previously uploa=
ded via the website will be removed=2E<br><br>
If you would like to keep any of the content you=E2=80=99ve posted or stor=
ed within your Yahoo Group, please download it by December 14 by accessing =
the Groups Download Manager at <a href=3D"http://service=2Ecomms=2Eyahoo=2E=
net/T/v40000016ef2549975b776bb6e96639540/dc8f074f62514c440000021ef3a0bcc2/d=
c8f074f-6251-4c44-878d-00cdb4ff8e38?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4bfSO=
AnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0DA16EdUMykOxW2gVC=
nxDU5cHx-QK3QTtoTSEFskCd7V1LSW30ORTEac7C7l1fJ1QloWG7xy2htV8dLg14Xm6qCnbebc5=
k5F2H2ylwiJ2VZhtSqPP35IvMc55oxGKhFK4uBS5LWWYTozo5lnFodd12BNkUiwusLY0gvxOA83=
FvxqIfvP6XNU0TafefJjMG9rgwm2Jwt5YCVR7FWg_afvbzZb26tc-5uk8FumFx4ZZ0Izpw8idEV=
-FfHvNRFkd1j55zeAhZjEqB6lguhVk1R-Cq">this link</a>=2E Once you provide your=
 preferred email address, we will send you a confirmation of your download =
request and notify you once the download is complete=2E<br><br>
You will receive a link to a downloadable zip file via email for each of y=
our Groups organized into a separate folder=2E Download time varies dependi=
ng on the amount of information and file size=2E <br><br>
If your download request is made by 11:59pm PST on Saturday, December 14, =
2019, your content will not be deleted until your download is complete=2E W=
e are unable to accommodate any download requests made after this deadline=
=2E<br><br>
This is the <strong>final reminder</strong> to download your content=2E Yo=
u can find additional information about the upcoming changes <a href=3D"htt=
p://service=2Ecomms=2Eyahoo=2Enet/T/v40000016ef2549975b776bb6e96639540/dc8f=
074f62514c440000021ef3a0bcc3/dc8f074f-6251-4c44-878d-00cdb4ff8e38?__dU__=3D=
v0G4RBKTXg2GvzBXXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDg=
UUCCPvXMWoX_30tcPSLyBQEa0klOzPQdng8h8pYsOOPIzEGVMPtE8Jl_ezvcJ3kY1QZleSAk4Bb=
5JpzsLuXV8nVCWhYbvHLaG1Xx0uDXhebqoKdt5tzmTkXYfbKXCInZVmG1Ko8_fki8xznmjEYqEU=
ri4FLktZZhOjOjmWcWh13XYE2RSLC6wtjSC_E4DzcW_Goh-8_pc1TRNp958mMwb2uDCbYnC3lgJ=
VHsVaD9p-9vNlvbq1z7m6TwCnfhs10wUvYDPdjaOr76rhQT2YsEoIz3_Nj37155Mv1dLJ6EpjID=
c=3D">here</a>=2E<br><br>
We have worked extensively with our customer support team to develop recom=
mendations for tools that can help you with any download issues=2E See help=
 article <a href=3D"http://service=2Ecomms=2Eyahoo=2Enet/T/v40000016ef25499=
75b776bb6e96639540/dc8f074f62514c440000021ef3a0bcc4/dc8f074f-6251-4c44-878d=
-00cdb4ff8e38?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4bfSOAnZx&__F__=3Dv0fUYvjHM=
DjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_30tcPSLyBQEa0klOzPQdng8h8pYsOOPIyU0NULBl=
1Bw4E7YXYa-YoJTsAY9yft30WVDuc3KaMV6lOBQmnvN4Wj5Bn_pAZMPfDCl3QSII-ieBYDwcTd-=
7gEXtHtv3Sw9Ck-hUcUAylJSMYqr5EyidlrnpZyCoNPhMq8gT-5MHn8RvoE00cUM8byG54XbWWI=
TAG9ngKB1mGdgFR-iKNF6DLrPMIQqTzq1PM00uLR0Xlk09OSCpqk9u54inIBuc8tGdnQHz-JRVs=
7m-kVFD3krPXj">here</a>=2E<br><br>
We have watched the evolution of Yahoo Groups with awe, as we grew to a co=
mmunity of millions with over 10 million Groups=2E Every day, we witness th=
e power of community and shared passions, and our mission is to provide a p=
latform for the strong connections people make with each other around their=
 interests=2E<br><br>
We thank you for being part of the Yahoo Groups community and look forward=
 to continuing to provide ways for you to connect with one another about yo=
ur shared interests and passions=2E <br><br>
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
<td class=3D"spacer" style=3D"line-height: 30px; font-size: 30px;">&nbsp;<=
/td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center"><a href=3D"http://service=2Ecomms=2Eyahoo=
=2Enet/T/v40000016ef2549975b776bb6e96639540/dc8f074f62514c440000021ef3a0bcc=
5/dc8f074f-6251-4c44-878d-00cdb4ff8e38?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4b=
fSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3T=
-NDTMG5CuRie2QskgROolp_WfnCnRO71lemWEq7yMQcv3apwl0dmIq6zzV5o07AGPcn7d9FlQ7n=
NymjFepTgUJp7zeFo-QZ_6QGTD3wwpd0EiCPongWA8HE3fu4BF7R7b90sPQpPoVHFAMpSUjGKq-=
RMonZa56WcgqDT4TKvIE_uTB5_Eb6BNNHFDPG8hueF21liEwBvZ4CgdZhnYBUfoijRegy6zzCEK=
k86tTzLtfFdHYboUZQzOgwgRSMBZatAQeQdTmhXTTZNSnvXlKIhBrR3ODlGA=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Privacy Policy</a> | <a href=3D"http://service=2Ecomms=2Eyaho=
o=2Enet/T/v40000016ef2549975b776bb6e96639540/dc8f074f62514c440000021ef3a0bc=
c6/dc8f074f-6251-4c44-878d-00cdb4ff8e38?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQD4=
bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_0uGB2eyw97b7f3=
T-NDTMG5CuRie2QskgROolp_WfnCnc3nC1EsV1GPAjCwvLM9cxtyA3YKtxCMISgWm4WshCvq1-y=
MsqWWJEkkafHR8lEC6VLXRhFrUz-W1RZbKLvuYTLab-ZxqChBO31SocbycPh-fBTiDGGRxdry-n=
XERnaFjVRA6N8kgtNRLnQX51ICSctm2VewSkK-V6geaOXMYWJqT-hd3Msbo2oyA3L2s6U27mrGl=
JWmeyAHor0sYApdBa9_kEV7Pf2wE5SESXqjHj6w012SaKAEsqjq0xS8X_r9hQ=3D=3D" target=
=3D"_blank" style=3D"text-decoration: none; color: #00009e;" rel=3D"noopene=
r noreferrer">Terms of Service</a> | <a href=3D"http://service=2Ecomms=2Eya=
hoo=2Enet/T/v40000016ef2549975b776bb6e96639540/dc8f074f62514c440000021ef3a0=
bcc7/dc8f074f-6251-4c44-878d-00cdb4ff8e38?__dU__=3Dv0G4RBKTXg2GvzBXXO0iqzhQ=
D4bfSOAnZx&__F__=3Dv0fUYvjHMDjRPMSh3tviDHXIoXcPxvDgUUCCPvXMWoX_30tcPSLyBQEa=
0klOzPQdng8h8pYsOOPIx4lAcTgLkjUgUuaPA1sO81sGihz4nICRG4tpiHDtPRzGsk8KGp-YRNX=
JsrYAiWgISPpe3r_uKN5o-3awbreRjGlpP23WTJaFfLWztKdCLkt9W0KQBwdc7VR5nbdSy_O31N=
-vVgnvLi3brCrBFtEdRKuYlTWEt3YHQsuHaajpx5-pRC5sLQvv_KP3g7-65NdbPRZRC-X5G2xIg=
wbYa-TOLNBuhuV745tmPpgz2OeibtRA=3D=3D" target=3D"_blank" style=3D"text-deco=
ration: none; color: #00009e;" rel=3D"noopener noreferrer">Customer Support=
</a></td>
</tr>
<tr>
<td style=3D"font-family: Helvetica,Arial,sans-serif!important; font-size:=
 12px; line-height: 15px; mso-line-height-rule: exactly; font-weight: norma=
l; padding: 0;" align=3D"center">701 First Avenue, Sunnyvale, CA 94089<br>=
=C2=A92019 Yahoo</td>
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

<img src=3D'http://service=2Ecomms=2Eyahoo=2Enet/O/v40000016ef2549975b776b=
b6e96639540/dc8f074f62514c4400004c5a42963aa1' style=3D"display:none; max-he=
ight: 0px; font-size: 0px; overflow: hidden; mso-hide: all"/></body>
</html>
---=Part.25a5127.8b59a4a7fafc7afb.16ef2549a5a.3d994adf0b19888a=---



--===============2295747405030242703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2295747405030242703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2295747405030242703==--


