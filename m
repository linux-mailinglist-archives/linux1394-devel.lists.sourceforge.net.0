Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF8538F834
	for <lists+linux1394-devel@lfdr.de>; Tue, 25 May 2021 04:30:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1llMq3-0008Hd-MX; Tue, 25 May 2021 02:30:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <ollie.taylor@eventsinfolist.com>) id 1llMq0-0008HV-WA
 for linux1394-devel@lists.sourceforge.net; Tue, 25 May 2021 02:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CTIDCAXXGfC/FWcq/Rm1MgGz7iF8UrzhucxsVvvqnRM=; b=Ji0hGS+g2e7jlbz1xv9eZiV3t+
 lHKuOuXOxYf26C6i9dTY9SaegZwjFA64+8DvhJuX0jqE3ZI7NIjQKFsbRDOzWObRbRbfdYRjRXEct
 9w/j8lPC2uhD+OswYNJc/0pRB40sPy/9gSPlEPmvJ5Ixj0/jSSvUQIw/KTgV8TzRkXCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CTIDCAXXGfC/FWcq/Rm1MgGz7iF8UrzhucxsVvvqnRM=; b=E
 gr2Cl/R8rV2DqJiAo2VKkYVy5YiHt+nQwTUlrX/EfAKNE5YF60CcoAc/l5LMJ96rdKgIvsB7AEmnS
 ceYGwZhPyYsScHL9sYGN11dFS08FCWq1rvrNyPO2oV1wd/YLMQN7PUR3ZA0MgVXOtySAdOH3r/GQe
 PqZV/kQc97lqQoTY=;
Received: from mail-eopbgr1390104.outbound.protection.outlook.com
 ([40.107.139.104] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1llMpu-004ooZ-Lh
 for linux1394-devel@lists.sourceforge.net; Tue, 25 May 2021 02:30:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6sks+957aSVBuQYCnlZcR4vQAeEOL8oyvmYQ+P5ZyF9pCxddB6SjeAuMqESLEuVE5WSUVvViwyLjs+zcPX9lhtJDa1LF6MmIqAOihLvcaCvZ8A0LBJHrlqAB2t7QgtMn6bgqO2tWgFXj4ShQNGjmXaaR1QH8wEFhIsGiDZm+rc9AxpvNryIk66MMu9S5Q+0nZ9zaAKVd7IDl0clnILiYoMCpRTsjOXo3sRJV9fqAizjX/dPeDjO70TlBMPw49rbG8PjAvyXwL76qUYSQte6i3uU1AKO7l+wDj6OAIqJqCzTDxZENMTU11UPwLRjma4npyiSfXP32VskbaOwIQXOCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTIDCAXXGfC/FWcq/Rm1MgGz7iF8UrzhucxsVvvqnRM=;
 b=e8tgUNHlNKKeBfJpSzy/1GgtmDrW0lyZgh6AG34uEHSfsIpfTkJ0ulkWwNayFTerUo+KfRXG/AsdebNHl7GgvXu8k+Xk8BWfAg6p0Cu7WjezLanJFrxxhEGu282sdEzxYiVdFMcp0dcWlfkXs147LPNF0Yk5rIQpUB7EmVteDW4n66DdrsXA22qV2j+9+1RxWp9KULTkxq+3NPls1gueHRpV4dbfEE4i0F2KNImfLgLHS6tesLmBSlhFlzXJzlEfleE3s7L/dpnqlVGmuD01VP8zWxc4InJVu9NFdGnGxRBzzb7GMKmCZQp52IQJkiYPswE0CcmMGAIn5kWvsbIxfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eventsinfolist.com; dmarc=pass action=none
 header.from=eventsinfolist.com; dkim=pass header.d=eventsinfolist.com;
 arc=none
Received: from PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:5c::11)
 by PN2PR01MB4524.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Tue, 25 May
 2021 02:15:29 +0000
Received: from PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7516:d508:62db:a223]) by PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7516:d508:62db:a223%7]) with mapi id 15.20.4150.027; Tue, 25 May 2021
 02:15:29 +0000
From: Ollie Taylor <ollie.taylor@eventsinfolist.com>
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
Subject: International Wireless Communications Expo  2021 Visitors Info List
Thread-Topic: International Wireless Communications Expo  2021 Visitors Info
 List
Thread-Index: AddRC77YSbbmmJRwTqmfA2wy7gFq1A==
Date: Tue, 25 May 2021 02:15:29 +0000
Message-ID: <PN2PR01MB5125142E6C8033A53B477A58F6259@PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=eventsinfolist.com;
x-originating-ip: [103.70.199.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf0e99b5-b199-4e50-cdcd-08d91f22f7b3
x-ms-traffictypediagnostic: PN2PR01MB4524:
x-microsoft-antispam-prvs: <PN2PR01MB452479C29793F641F9BEF824F6259@PN2PR01MB4524.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dJO8Fwe5CWMAkD91cuAYNVXOcHwP9PXkDI+c66V7Iww4X36A14UjqnB3jGcgPIpvbono+Bk2f/4jyChMu4aOyyvRZ4lSNepXai5e6ehkZ1Pa0fZL7mf9I3FlSUJ3900NClGIGRw1mPOth2IPv2zMC8JQXkKyXvcAUhcwt2dNO2sARTvf0XXxhvk2vW46P/dRlThBbao3NGWrRtPamGchaoIq/iYmS6aYyK7WRkMll8DITRMAPhu/pnSLvaAvPicmPAMBfpDr4vIJ0wPFVr1AN8zaGIgsFuJAUExr94b79K5lEqKS/lTSyhQxthzPoNUC5my7xYCqvoPcIcJDV6LPratcPJr12LtXG7KmatgAQZB9xEjsCEVw30nt8igU/BGy4JJnCa6nmcPi8tbqdIBWsp5aXEwapzFIZrAaLsG/mDhPXC9/2Czle5mpdi5lCRfIl693nxw2Mw1z8uC7erFngHqTBRBgxicl10BrdOaIHSYrN1xqhPqBdkPlYEFuK7j3tjrnkjLFbd1pdDYbUwDc3+EkhPba3KqwIBzudw92ixL9JdO7ebLTjTELAEKTLE5rLtIx0OxPP7O+bIO7lwrl2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(376002)(39840400004)(346002)(478600001)(4744005)(5660300002)(9686003)(52536014)(26005)(122000001)(71200400001)(316002)(55016002)(76116006)(2906002)(38100700002)(66476007)(6916009)(8936002)(186003)(66946007)(86362001)(33656002)(66446008)(66556008)(64756008)(44832011)(7696005)(8676002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2inWgZngZUQQC9ES9BGWIRFP/YUfM8IlsPQEiLrSJf6uuGvk7wpRqwX1KiNU?=
 =?us-ascii?Q?qvVcgvlPwWs6gJ7HGTKaUeybuq3Ch1MJEdwgbQe8WHY6OuKlzTilcjXiTk1p?=
 =?us-ascii?Q?qWmkseuAxmII4vpdDZErVwALzJLpHaWxd6NGX2ePzgkIf7YzDTcw85hoQWPi?=
 =?us-ascii?Q?hLsQGY9ZGSWNUZr3+ApOx5eP8vmljh0lVvVc64M1nPVjkExvUl1l+g9/OXZj?=
 =?us-ascii?Q?Dg5Oj82pJ2nMCak1en2+JMgVHda88yEqIw+QmFp4K4qzRsK5ZR5yDxlrOW6f?=
 =?us-ascii?Q?h8pnEL2ZXZQxaNS5rFnJXTIEl8FuphMNNIhN/HpQHpu0u2A7BQ2GAOe+PfIf?=
 =?us-ascii?Q?aIbamRS0ZEB5Wkd2CsSGHXwJy65Q9rFd4dqqS89NJjnFmSR95gqnf3ovafyK?=
 =?us-ascii?Q?M/ATt7IPex0aI0BaT0Re1OWyihs/Hqk5iXIuN5P5IXSt6EhJSa6OqeTDdKBM?=
 =?us-ascii?Q?kxMDX5ZOqH4iGiPUnIUUa5IUeamc7ebDqUUsVh4Q9j5w9iX2nYOdx4KtfEpT?=
 =?us-ascii?Q?YsoT7viqPv21wQAV5h4BMgFF5trrnzGPO6dgJT5Dqc/cFAVf42RiA71aaH0f?=
 =?us-ascii?Q?AdEh3hm5nLDKgio0UGrhWg4Ao9wGihK7eyXYX2d4pea6ELLbEUk3cNUAt1R3?=
 =?us-ascii?Q?FQ0c08vU4OMSGcZySE3R7/FbIvuBs23dJ27EBNGTI4EYvhRbbOlvAWZqXR3t?=
 =?us-ascii?Q?zW/8eDZZhXZhfDdDJPmS9z4z7UNR2s0z4hK7Ve1D197pZYXT8VKo2OIqpKVK?=
 =?us-ascii?Q?y5ukSnpifJ+DSRgx6nT0rHYSiweJKII0H1euSU5ZVfViL7UHj99npPjBITZA?=
 =?us-ascii?Q?oR+ywRA3S3Yi/t4gA5Lq3ODd+RxSlg1tBemF7LWVkY9cIVgPRGVC8DmfcU8V?=
 =?us-ascii?Q?W0Sn8ImtK+bOOyFwE72AcnHhYlJzlzQy/8O+iTkZt+oMc7IUjbyvcxSmlVvZ?=
 =?us-ascii?Q?+zDzKQtKWfYJM5g8JdhshnhewtaT58wg5qfpFt6iRE5To52IM57TgQBeXIch?=
 =?us-ascii?Q?sZkXQsJyUdX5VotAGTQ1CwWH8M4BBr/3Y+Uf37ys0IvaLPeFliCJbn6DOlB9?=
 =?us-ascii?Q?Db/Yh5/dMV4CXjkTeAEs+YobNTI+65pB1RY10x4KYpR7dhx8fEzC0sJ4RPQO?=
 =?us-ascii?Q?n5sTJcT/5E7Mon5XYWz/S42jaJvZs0n3MnF4xXGwK5dWafAfjiS9EJEvQphv?=
 =?us-ascii?Q?VE983SkCDz+X1thXJwghdU4IVtgnovXxYFn49Nz46zXkoh/D6OwQ2M03Kziq?=
 =?us-ascii?Q?IXj1xWBFTZ6erLA6VjH01Dws9d0ySpRoU5h1Low8kLLV0YZnseUAIzP7fPwr?=
 =?us-ascii?Q?boA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: eventsinfolist.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN2PR01MB5125.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cf0e99b5-b199-4e50-cdcd-08d91f22f7b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2021 02:15:29.3317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 925d6c7c-7033-4e35-9881-0804bf047eb7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CSuawUY3qc0aGy800xwlhoBQmb9Qy0IAfK3AooBcw9gOI5NNlcwONeHZUNZ9h9FFCubHXMmBjGNunHMW535BXrBLOyItOWv06cEZ3q0rwNs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PR01MB4524
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.139.104 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.139.104 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1llMpu-004ooZ-Lh
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
Content-Type: multipart/mixed; boundary="===============0743199889097741452=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0743199889097741452==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN2PR01MB5125142E6C8033A53B477A58F6259PN2PR01MB5125INDP_"

--_000_PN2PR01MB5125142E6C8033A53B477A58F6259PN2PR01MB5125INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,


I understand that you were one of the Exhibitors in the show

International Wireless Communications Expo
27 - 30 Sep 2021
Las Vegas Convention Center, Las Vegas, USA

Are you interested in acquiring the Attendee's info? (6,750 Contacts)


Attendee's information fields: Company Name, Company URL, Contact Names, Ti=
tle, Phone Number, Email Address.


Let me know your thoughts so that I can send the cost and additional inform=
ation.

We are looking forward to hearing from you!

Note: If the attendee's info is not relevant to you please reply with your =
Target Market and Geography, we have all types of target market available

Best Regards,
Ollie Taylor
Marketing Executive


--_000_PN2PR01MB5125142E6C8033A53B477A58F6259PN2PR01MB5125INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><a na=
me=3D"_Hlk66444724"><span lang=3D"EN-IN">Hello,<o:p></o:p></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">I understand that=
 you were one of the Exhibitors in the show
<o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN" style=3D"font-siz=
e:12.0pt"><br>
<b><span style=3D"background:yellow;mso-highlight:yellow">International Wir=
eless Communications Expo
<o:p></o:p></span></b></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><b><span lang=3D"EN-IN" style=3D"font-=
size:12.0pt;background:yellow;mso-highlight:yellow">27 - 30 Sep 2021<o:p></=
o:p></span></b></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><b><span lang=3D"EN-IN" style=3D"font-=
size:12.0pt;background:yellow;mso-highlight:yellow">Las Vegas Convention Ce=
nter, Las Vegas, USA</span></b></span><span style=3D"mso-bookmark:_Hlk66444=
724"><b><span lang=3D"EN-IN" style=3D"font-size:12.0pt"><o:p></o:p></span><=
/b></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><b><u><span lang=3D"EN-IN"><o:p><span =
style=3D"text-decoration:none">&nbsp;</span></o:p></span></u></b></span></p=
>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">Are you intereste=
d in acquiring the Attendee's info? (<b>6,750 Contacts</b>)<o:p></o:p></spa=
n></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><b><u><span lang=3D"EN-IN">Attendee&#8=
217;s information fields</span></u></b></span><span style=3D"mso-bookmark:_=
Hlk66444724"><span lang=3D"EN-IN">: Company Name,
 Company URL, Contact Names, Title, Phone Number, Email Address.<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">Let me know your =
thoughts so that I can send the cost and additional information.<br>
<br>
We are looking forward to hearing from you!<o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN" style=3D"color:bl=
ack">Note: If the attendee's info is not relevant to you please reply with =
your Target Market and Geography, we have
 all types of target market available<o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">&nbsp;<o:p></o:p>=
</span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">Best Regards,<o:p=
></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><b><span lang=3D"EN-IN" style=3D"font-=
size:12.0pt">Ollie Taylor<o:p></o:p></span></b></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal"><span=
 style=3D"mso-bookmark:_Hlk66444724"><span lang=3D"EN-IN">Marketing Executi=
ve<o:p></o:p></span></span></p>
<span style=3D"mso-bookmark:_Hlk66444724"></span>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PN2PR01MB5125142E6C8033A53B477A58F6259PN2PR01MB5125INDP_--


--===============0743199889097741452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0743199889097741452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0743199889097741452==--

