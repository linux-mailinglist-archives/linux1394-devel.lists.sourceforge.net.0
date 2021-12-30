Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D493481A9B
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Dec 2021 09:02:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n2qOR-0006YS-PE; Thu, 30 Dec 2021 08:02:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounces+17461769-fe27-linux1394-devel=lists.sourceforge.net@em6778.fastfundinggroup.net>)
 id 1n2qOR-0006YK-1o
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Dec 2021 08:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:In-Reply-To:From:Content-Type:Subject
 :Message-Id:Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MoZGg0Ab95ysUkrCSiBNTiu5o+bs7KkrcprLrVh3JDU=; b=bhOOQ8Obxk7Sh0G5NZnDglMGGy
 Sdda6YFi7QFCoqA1PbODupEvnSkjr/YwbAToyWykTGOnThz2jRztriaciVzJzzCRfR8cOALFqqQgK
 PaQMDPg0pqLE8XvASjZnH1FBYTQKYhZhwcvxWaYM3bA1/sdGmxWA0qEQoX29EwK5LO7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:In-Reply-To:From:Content-Type:Subject:Message-Id:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MoZGg0Ab95ysUkrCSiBNTiu5o+bs7KkrcprLrVh3JDU=; b=hlvTsPBerk6Bat4qf5Y0O9CEUN
 u6mBCTbpLe0lwNx753JB/PEHncUpbgnlupiDmoU81w0hFWnPelN+fuQqxKy4POlagLPcxG3PVp3iB
 MzSFS+Bxp8/jXT23251YFb5i7K1ZkmSmGLU3PnOvscJDd8jOyZkjbdU9Pax5nHSdgnmA=;
Received: from wrqvdxtc.outbound-mail.sendgrid.net ([149.72.218.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n2qON-0002Nx-Qi
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Dec 2021 08:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastfundinggroup.net; 
 h=mime-version:subject:content-type:from:in-reply-to:references:to; 
 s=s1; bh=MoZGg0Ab95ysUkrCSiBNTiu5o+bs7KkrcprLrVh3JDU=;
 b=GUT5kryW/MrBwi/l/CpuS6oA/c3GIkeO+dtac17zk7Tkkyn9HjQ6DjZw2Iw/lpRFbD+c
 LTqf8gdp/Kf7Esxy2jsqZbvZKleXhSQsRAEJj4z/EoZhJ/stWNE5bqnIie3QPIGWIxUvtg
 retycMXNxkYJMPpVF4GuxHxSqXdlp0P681g+2sTG1jUVLKL1otVOIYt/ncHPLKGXCDTnqT
 6QY7A+KSAIc15CvRnoDv92M8iIck8DiOG3qXNQEKd/BfThf2ZmRoiWh8KpHxIPPWuuy0Rb
 ubjx/Kt9lccvk4x0xQhtOQJVxvyWW3dkgNAHEUdMJ+pTiYKjJUL0xa5lDi6cIuFw==
Received: by filterdrecv-794785844b-pwswl with SMTP id
 filterdrecv-794785844b-pwswl-1-61CD6791-113
 2021-12-30 08:02:25.996013943 +0000 UTC m=+10316531.392370479
Received: from [172.31.8.143] (unknown) by geopod-ismtpd-2-1 (SG) with ESMTP
 id PBKAF2XpRFaHbZzIgLhDqw
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 30 Dec 2021 08:02:25.880 +0000 (UTC)
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 29 Dec 2021 23:40:06 -0800
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 22 Dec 2021 07:29:04 -0800
MIME-Version: 1.0
Date: Thu, 30 Dec 2021 08:02:26 +0000 (UTC)
Message-Id: <23e2a4556cf24e9d87316f46974d60b4_CAHtXQSPmCtA2CC90ObNc00u-hM3DUgjzQdWmvVyVgFMukHh5Cw@mail.gmail.com>
Subject: Re: Direct Lender here... Largest lender on the east coast. I can and
 will get you funded. Even if you just got funded....
From: Ron Michaels <underwriting@fastfundinggroup.net>
In-Reply-To: <8b08516e5c834b4d82740b1cb76d2ae6_CAHtXQSNpdfUAyYCfQe3ZQxrhJ=dQ7-hqfL-CPWq0hvWWKN0wBQ@mail.gmail.com>
References: <e9406c06c752485ca3dd8ba9ffef2271_CAHtXQSMO9btot9VB=DTBOOWUJ2tkRV9gbouw76apALk6yWSS_w@mail.gmail.com>
 <4174d637da8f40e4b48fd1968054c22a_CAHtXQSPfv7gM28WDdcJ+PnbwSO1oyUDKCGY-azF2Ch1t-kE4NQ@mail.gmail.com>
 <4a6995e089604b59a593c80727e7c0a3_CAHtXQSNeNef+Uqv_JozcueodcTdfkx+S+3AEsV4DapY6ZpF-gQ@mail.gmail.com>
 <c0562ce2f3b243ea97a63a4064506bb5_CAHtXQSOZFwEaWdXmN3QvQbs3MxWsiWsCgzv0YMX3nXv6Tgjgcw@mail.gmail.com>
 <8b08516e5c834b4d82740b1cb76d2ae6_CAHtXQSNpdfUAyYCfQe3ZQxrhJ=dQ7-hqfL-CPWq0hvWWKN0wBQ@mail.gmail.com>
X-SG-EID: =?us-ascii?Q?aVQykaPryv=2FvgHutWGk3angG8gEn3d1yBXNMlmyW3ym8kEtTl3IPMaCerxg6OO?=
 =?us-ascii?Q?wxwmNsmXUIv41APfJv9S+fooEu5vLudUK=2F3m9Cg?=
 =?us-ascii?Q?wMMEnDeav9S9Jg0TphY3YsK8yM6G+XPqjBYWDuz?=
 =?us-ascii?Q?qEIaGAVehIvGdaVUxpvdX0fjDH6ugXTrnuQSckn?=
 =?us-ascii?Q?UcO86MV6PGO=2FV24otHRZExx12Ul8pPN9YyTthSI?=
 =?us-ascii?Q?LumZ8uq2vO+5gIKp8G4WLwjDmbYKt+wGioYW5VD?=
 =?us-ascii?Q?k6CSh=2FtkvnUpOD18uaRfxuw93pPzBsrJuQdJOrx?=
 =?us-ascii?Q?M6I=3D?=
To: linux1394-devel@lists.sourceforge.net
X-Entity-ID: /PhzgDtEoGxZCUSeVQe5nQ==
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have not heard from you. Let me know please. On Wednesday, 
 December 29, 2021 at 11:38 PM, Ron Michaels <underwriting@fastfundinggroup.net>
 wrote: > I have not heard from you. Let me know please. I WILL get the job
 done and get you the funding yo [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: fastfundinggroup.net]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [149.72.218.124 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n2qON-0002Nx-Qi
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
Content-Type: multipart/mixed; boundary="===============8077234828742359013=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8077234828742359013==
Content-Type: multipart/alternative; boundary="0000000000008090d505d3bdc627"

--0000000000008090d505d3bdc627
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have not heard from you. Let me know please.

On Wednesday, December 29, 2021 at 11:38 PM, Ron Michaels <underwriting@fas=
tfundinggroup.net> wrote:
> I have not heard from you. Let me know please. I WILL get the job done an=
d get you the funding you need
>=20
> On Tuesday, December 28, 2021 at 5:18 PM, Ron Michaels <underwriting@fast=
fundinggroup.net> wrote:
> > I'm sure you're busy, but I'd appreciate if you can respond to my email=
 below, so I can cross this off my to do list.
> >=20
> > On Monday, December 27, 2021 at 12:38 AM, Ron Michaels <underwriting@fa=
stfundinggroup.net> wrote:
> > > I've reached out a couple times, but I haven't heard back. I'd apprec=
iate a response to my email below. I'm your guy! I'll get you the business =
funding you need..
> > >=20
> > > On Saturday, December 25, 2021 at 10:00 AM, Ron Michaels <underwritin=
g@fastfundinggroup.net> wrote:
> > > > Just making sure you saw this.
> > > >=20
> > > > On Friday, December 24, 2021 at 7:18 AM, Ron Michaels <underwriting=
@fastfundinggroup.net> wrote:
> > > > >=20
> > > > >=20
> > > > > Even if you were funded recently, I can and will buy the loan at =
a lower=20
> > > > > cost. If you're in need of funding for your business. I am a DIRE=
CT LENDER!=20
> > > > > We own 4 lending platforms outright and I have access to 80 addit=
ional=20
> > > > > banks. I fund in-house within 8 hours. NO BROKERS OR FEE'S! NO LI=
ES!!!!!
> > > > >=20
> > > > > Complete the following Application=20
> > > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-=
2B-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjD=
a-2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyi=
mYgIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqBAFs_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ=
1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZ5WuUTnWLMqj-2=
BxwCEsRGS54smXKkYyHc9BosYCnBN-2Bg18diK1a77Su8-2BhXkEG6lKqkszB7NpToRxnE6LHX6=
z4MuBNGe1FY5Exq44oZ4zuJAhenSctw5Gsn2uu4CfgmApXQl72Lm2n701AOCOFVcJCyuRtY-2F4=
loRlN9UwnwJngBoj> and=20
> > > > > receive the terms you deserve.
> > > > >=20
> > > > > -Bridge loans 2-24 months
> > > > > -No fees deducted after the funds are deposited (no brokers neede=
d)
> > > > > -Term loans up to 25 years 2.7% above prime
> > > > > -Lines of credit
> > > > > -TRUE consolidations=20
> > > > > -Equipment Financing
> > > > >=20
> > > > > -Merchant Cash Advances
> > > > >=20
> > > > >=20
> > > > > =20
> > > > >=20
> > > > >           If you would like to be proactive, please complete the =
application=20
> > > > > here online=20
> > > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-=
2B-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjD=
a-2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyi=
mYgIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqfzZ-_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ=
1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZ9edGM-2BA1BiG=
FXUrz6QdkZv85LwCoDYMiPqBeg2zXDzPhoUFKn7Sja6-2FunMkMztCoIScEn6P7v-2BtSvbVGxd=
uLtDlTaPWCRLmhnFIniHRKe9-2Ba7LBTZaKpwsrE-2Fvq41m6xr86nOUS21k1pkzn2zG38e7Sfg=
ejUd7XtcA977-2BC-2BF3a> and=20
> > > > > return the last 4 months business bank statements.=20
> > > > >=20
> > > > >  *I will pledge to you, in advance, that my rates and terms will =
be the=20
> > > > > best in the industry. We=E2=80=99re a total financial warehouse w=
ith every single=20
> > > > > financial option available for business owners.*
> > > > >=20
> > > > >=20
> > > > > Upon receiving that information, I will immediately activate your=
 firm=20
> > > > > approvals.=20
> > > > >=20
> > > > > As soon as I have options for you, I will give you a call to disc=
uss.
> > > > >=20
> > > > > Usually within 3 or 4 hours.....
> > > > >=20
> > > > > =20
> > > > >=20
> > > > >  application here online=20
> > > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-=
2B-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjD=
a-2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyi=
mYgIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqjlr3_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ=
1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZ1BnxLrlnLR-2B=
nuFbr58Nst-2FfvF55oWelFPCS14S1Q3MnOTBsonmR-2BLQMxbseXnuCitAYsg7TTCTNEJervf9=
6W7zOYECmz369tYNyDg6OF2ySI5q4-2F3Xq3Abo6u83UoAevTK4-2FdZwkuV6lRRUlmsemM9tkp=
3hiRq6ZCZcbBLns0jX>
> > > > >  =20
> > > > >=20
> > > > > --
> > > > >=20
> > > > > *Ron Michaels*
> > > > >=20
> > > > > Managing Director/ Lead  Underwriter
> > > > >=20
> > > > > *Omega Capital Funding*
> > > > >=20
> > > > > www.omegacapfund.com
> > > > >=20
> > > > > 1-877-282-1214 =E2=80=93 Toll Free
> > > > >=20
> > > > > 1-631-714-6801 =E2=80=93 Main
> > > > >=20
> > > > > 1-631-730-8115 - Fax
> > > > >=20
> > > > > You may unsubscribe <http://url6045.fastfundinggroup.net/ls/click=
?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCz=
siNzAavT5Rbmvb0Byc2r3kumkpEVdObji397CB7dzrBjZJlXvIPkyXxjxV9VdJ3zJzP1et5RdeD=
G-2FNTBB1lAjIoA-3D-3DiHtw_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAge=
wWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZ25JdBl0iRIdXAdWPfvJVd1Fvd93gv-2BI=
nNuDMz847h9UygniiFawVu11JLmYYttqF-2Fkjdc2YgQjMEn1vugydJJHda5Pnj-2BND7pa6drI=
1rl0dho8wPmYFnvi-2BshO3KSQ5Mu0W8eYXbQsRgJ-2F1-2BrwAbF3m2UQohwEo9jkD-2BeMgzp=
qP> to stop=20
> > > > > receiving our emails.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

--0000000000008090d505d3bdc627
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have not heard from you. Let me know please.
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wednesday, Dec=
ember 29, 2021 at 11:38 PM, Ron Michaels &lt;underwriting@fastfundinggroup.=
net&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">I have not heard from you.=
 Let me know please. I WILL get the job done and get you the funding you ne=
ed
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tuesday, Decem=
ber 28, 2021 at 5:18 PM, Ron Michaels &lt;underwriting@fastfundinggroup.net=
&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">I'm sure you're busy, but I'd=
 appreciate if you can respond to my email below, so I can cross this off m=
y to do list.
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Monday, Decemb=
er 27, 2021 at 12:38 AM, Ron Michaels &lt;underwriting@fastfundinggroup.net=
&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">I've reached out a couple tim=
es, but I haven't heard back. I'd appreciate a response to my email below. =
I'm your guy! I'll get you the business funding you need..
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Saturday, Dece=
mber 25, 2021 at 10:00 AM, Ron Michaels &lt;underwriting@fastfundinggroup.n=
et&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Just making sure you saw th=
is.
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Friday, Decemb=
er 24, 2021 at 7:18 AM, Ron Michaels &lt;underwriting@fastfundinggroup.net&=
gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:13.5pt;=
font-family:&quot;Times New Roman&quot;,serif;color:black">Even if you were=
 funded recently, I can and will buy the loan at a lower cost. If you&#39;r=
e in need of funding for your business. I am a DIRECT LENDER! We own 4 lend=
ing=C2=A0platforms outright and I have access to 80 additional banks. I fun=
d in-house within 8 hours. NO BROKERS OR FEE&#39;S! NO LIES!!!!!</span><spa=
n style=3D"font-size:12pt"></span></p><p class=3D"MsoNormal" style=3D"margi=
n:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span sty=
le=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:=
black">Complete the following=C2=A0<span style=3D"color:rgb(17,85,204)"><a =
href=3D"http://url6045.fastfundinggroup.net/ls/click?upn=3D0mogsfw379VW7NOF=
7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3ku=
g19adfC078V7aakkB3o1EmOP-2BnWjMFnWnetYaYjI1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2Br=
M-2FI54wmzrBJf0lBcguE0W66zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3DYoCR_9c=
2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQ=
vbpAg59u9-2FdZ2M2ulrcnPwILn-2FUpH0iLrBjE9t8XWmIqGPLHcy9AkcH4qjiGkYQlfoYO-2B=
1yuH7Gh-2BJ0IJZW0zG1yAEJF19Yvt6rOdonj-2BuMSJTQzwZ4nC663rFMO1ZfXYECnJrkvuWDR=
Tnh0Xr7hE31kq5OAnIL4Q7PFVY1Fks71OC43TTAoimD" target=3D"_blank">Application<=
/a></span>=C2=A0and receive the terms you deserve.<br><br>-Bridge loans 2-2=
4 months<br>-No fees deducted after the funds are deposited (no brokers nee=
ded)<br>-Term loans up to 25 years 2.7% above prime<br>-Lines of credit<br>=
-TRUE consolidations=C2=A0<br></span><span style=3D"color:black;font-family=
:&quot;Times New Roman&quot;,serif;font-size:13.5pt">-Equipment Financing</=
span><span style=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot=
;,serif;color:black"><br></span></p><p class=3D"MsoNormal" style=3D"margin:=
0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span style=
=3D"color:black;font-family:&quot;Times New Roman&quot;,serif;font-size:13.=
5pt">-Merchant Cash Advances</span><br></p><p class=3D"MsoNormal" style=3D"=
margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><br>=
</p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;=
font-family:Calibri,sans-serif"><span style=3D"font-size:12pt">=C2=A0</span=
></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt=
;font-family:Calibri,sans-serif"><span style=3D"font-size:13.5pt;font-famil=
y:&quot;Times New Roman&quot;,serif;color:black">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 If you would like to be proactive, please complete the=C2=A0</sp=
an><span style=3D"font-size:12pt"><span style=3D"font-size:13.5pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:rgb(17,85,204)"><a href=3D"http:=
//url6045.fastfundinggroup.net/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy=
-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7a=
akkB3o1EmOP-2BnWjMFnWnetYaYjI1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJ=
f0lBcguE0W66zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3DRDHs_9c2ZCZzrWFlb2tj=
mei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2Fd=
Zz91bIrAJ5GwzB0sK75CYdkCBumwaWlw6bAzUvlO3dsu3KsTmExdE8zlyqxWOsBLtirilAJ7EHg=
ngDb8P5lTCvz0FwUKrJ29rcYasYvk6sWSHlc42UcbuaqIB7kjiTgD8Yipoyue43-2FaLXeYArmd=
SypEB42tBCgaQxFHv2FMXEgN" target=3D"_blank">application here online</a></sp=
an></span><span style=3D"font-size:13.5pt;font-family:&quot;Times New Roman=
&quot;,serif;color:black">=C2=A0and return the last 4 months business bank =
statements.=C2=A0</span><span style=3D"font-size:12pt"></span></p><p class=
=3D"MsoNormal" style=3D"margin:0in;background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial;font-size:11pt;font-family:Calibri,sa=
ns-serif"><span style=3D"font-size:12pt;color:rgb(33,33,33)">=C2=A0<i>I wil=
l pledge to you, in advance, that my rates and terms will be the best in th=
e industry.=C2=A0<span style=3D"background:yellow">We=E2=80=99re a total fi=
nancial warehouse with every single financial option available for business=
 owners</span>.</i></span><span style=3D"color:rgb(33,33,33)"></span></p><p=
 class=3D"MsoNormal" style=3D"margin:0in;background-image:initial;backgroun=
d-position:initial;background-size:initial;background-repeat:initial;backgr=
ound-origin:initial;background-clip:initial;font-size:11pt;font-family:Cali=
bri,sans-serif"><span style=3D"font-size:12pt;color:rgb(33,33,33)"><i><br><=
/i></span></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;fon=
t-family:Calibri,sans-serif"><span style=3D"font-size:12pt;color:rgb(38,40,=
42)">Upon receiving that information, I will immediately activate your firm=
 approvals.=C2=A0</span><span style=3D"font-size:12pt;color:rgb(33,33,33)">=
</span></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-f=
amily:Calibri,sans-serif"><span style=3D"color:rgb(38,40,42);font-size:12pt=
">As soon as I have options for you, I will give you a call to discuss.</sp=
an></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-famil=
y:Calibri,sans-serif"><span style=3D"color:rgb(38,40,42);font-size:12pt">Us=
ually within 3 or 4 hours.....</span></p><p class=3D"MsoNormal" style=3D"ma=
rgin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><p cla=
ss=3D"MsoNormal" style=3D"margin:0in;background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial;font-size:11pt;font-family:Calibri,=
sans-serif"><span style=3D"font-size:12pt;color:rgb(33,33,33)">=C2=A0</span=
><span style=3D"color:rgb(33,33,33)"></span></p><div></div><p class=3D"MsoN=
ormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><=
span style=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot;,seri=
f;color:black">=C2=A0</span><span style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:12pt"><span style=3D"font-size:13.5pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;color:rgb(17,85,204)"><a href=3D"http://url6045.f=
astfundinggroup.net/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BO=
lbLKXGTezZIQiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EmOP=
-2BnWjMFnWnetYaYjI1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJf0lBcguE0W6=
6zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3Ds81l_9c2ZCZzrWFlb2tjmei9-2FZAE1=
DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZ-2BJy2QfKW=
rkviD6loveBa0xOpfcgG4o90c9z0XKwqrHsgwfIMsXKuOTWWL-2FFQbGcs93E-2Bk6fnRg94sCa=
RRwTZK6Kvk0i0h8m0rso8TNXY03j4idN4cMk-2BFb8fkgLej-2BymzghrZA36ac8iLpsIbJeiMO=
nA3qBVLAQmbvyNq2ATIEB" target=3D"_blank">application here online</a></span>=
</span>=C2=A0=C2=A0<br></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0=
.0001pt;font-size:11pt;font-family:Calibri,sans-serif">--<br></p><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><table border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0" style=3D"border-collapse:collapse"><tbody><tr><td =
style=3D"padding:0in 0in 0in 9pt"><p class=3D"MsoNormal" style=3D"margin:0i=
n;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-siz=
e:16pt;font-family:&quot;Bookman Old Style&quot;,serif;color:rgb(0,112,192)=
">Ron
Michaels</span></b></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:&quot;Bask=
erville Old Face&quot;,serif">Managing Director/ Lead=C2=A0 Underwriter</sp=
an></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-famil=
y:Calibri,sans-serif"><b><span style=3D"font-size:14pt;font-family:&quot;Bo=
okman Old Style&quot;,serif">Omega Capital
Funding</span></b></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:=
11pt;font-family:Calibri,sans-serif"><a href=3D"http://url6045.fastfundingg=
roup.net/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZI=
QiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EnXmhJypoONy7pT=
wJHUt-2FaelZ5sQXYD65iv9p-2FHPoLsQ8-2FDgYDiZQ1qIwX1HD8PnmKLAdR4avME3lMU-2Bao=
-2BMAnirJMcZCm-2FT76N4USd8277YQ-3D-3Dv5Kt_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tje70r5a8idQvbpAg59u9-2FdZzWPa7OL8G6Dnuk-2B=
M8kPqhVF-2BXivIIyDXusRbah0iNaJujM-2Fl-2FRptpFxNhb05F1Hhna71YEoGUo4xgNbQrVOJ=
NS-2BlTHf3vsf7InPU4uxnVhc05fuXOj-2BtDWg3zWBY7-2BEgV7e-2FJP0ZTylzTd6EY7JPu6o=
gyh15kqyj32IIZ43fKfG" style=3D"color:blue">www.omegacapfund.com</a><span st=
yle=3D"color:rgb(0,112,192)"></span></p><p class=3D"MsoNormal" style=3D"mar=
gin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-=
family:&quot;Bookman Old Style&quot;,serif"><span class=3D"gmail-__dt"><spa=
n class=3D"__dt"> <img class=3D"kixie-click-image-c2c" id=3D"telephone_numb=
er_160" src=3D"chrome-extension://bmdpeakaalmaaflnkckhjcojpemlkjig/images/d=
t_phone.png" style=3D"cursor:pointer;width:14px;height:13px" title=3D"Call =
1-877-282-1214" span=3D"kixie-click-image"> 1-877-282-1214 =E2=80=93
Toll Free</span></span></span></p><p class=3D"MsoNormal" style=3D"margin:0i=
n;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family=
:&quot;Bookman Old Style&quot;,serif"><span class=3D"gmail-__dt"><span clas=
s=3D"__dt"> <img class=3D"kixie-click-image-c2c" id=3D"telephone_number_161=
" src=3D"chrome-extension://bmdpeakaalmaaflnkckhjcojpemlkjig/images/dt_phon=
e.png" style=3D"cursor:pointer;width:14px;height:13px" title=3D"Call 1-631-=
714-6801" span=3D"kixie-click-image"> 1-631-714-6801 =E2=80=93
Main</span></span></span></p><p class=3D"MsoNormal" style=3D"margin:0in;fon=
t-size:11pt;font-family:Calibri,sans-serif">











</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:C=
alibri,sans-serif"><span style=3D"font-family:&quot;Bookman Old Style&quot;=
,serif"><span class=3D"gmail-__dt"><span class=3D"__dt"> <img class=3D"kixi=
e-click-image-c2c" id=3D"telephone_number_162" src=3D"chrome-extension://bm=
dpeakaalmaaflnkckhjcojpemlkjig/images/dt_phone.png" style=3D"cursor:pointer=
;width:14px;height:13px" title=3D"Call 1-631-730-8115" span=3D"kixie-click-=
image"> 1-631-730-8115 -
Fax</span></span></span></p></td></tr></tbody></table></div></div></div><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">=
You may <a href=3D"http://url6045.fastfundinggroup.net/ls/click?upn=3D0mogs=
fw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsiNzAavT5Rbm=
vb0Byc2r3kumkpEVdObji397CB7dzrBjZJlXvIPkyXxjxV9VdJ3zJzP1et5RdeDG-2FNTBB1lAj=
IoA-3D-3D4wFz_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOx=
hos5tje70r5a8idQvbpAg59u9-2FdZ7QqW9nUay3XZka3f-2FIpZFs9PeQKDRgaUgl89jo6LIm9=
2FuNsX99lVMGuj8ImAZpTRvH5qEzw2khFJRQWr-2Fd4rFBeSbxStSTIXkHrhHAaS679GoS-2FNr=
n-2BZd7PNWHw7yU58qHiPUmcAa97KA1y5seH4aVjMzH6B-2Fvcnd7ylWVsYW5" target=3D"_b=
lank">unsubscribe</a> to stop receiving our emails.<br></div></div></div></=
div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<img src=3D"http://ec2-34-217-128-7.us-west-2.compute.amazonaws.com/F9y6-v3=
HrB2jCS8zN8W8V_9dY5-eI3nb3ow1z4BtgGQsSL_csb-0AQHlKohdRa59LvIVjoBYj8FOMD6S1j=
2FfzTMN2slD_CI-URjk1kiH6D2au3omoo-CVMAWBS3-j-LsiXOffcYi7dRotYUS1EHcqUwyf5uQ=
XfEAzJK17jE-8UrCeXN_5ug-vP3nBHR5FiYRqP7VBDZxbCk6EjiEwolxdeHvqwSQ4ZvO563foqv=
VZ"></blockquote></div><br></div><img src=3D"http://ec2-34-217-128-7.us-wes=
t-2.compute.amazonaws.com/F9y6-v3HrB2jCS8zN8W8VxlW7IiBUb2cAJIojT_roU6BmKk2f=
p8ZVFQvaf2goSYOtCKLcGril8fdq8sC4TLM-APBuRUURj_YZwZH3kYaM5py2ftlSSYXdVBSo7cY=
hzZIFMTjxqgigqpr8UN0wNFarl4SerHaLAKqxqb3JulftP8qzjzDtufNHEdb"></blockquote>=
</div><br></div><img src=3D"http://ec2-34-217-128-7.us-west-2.compute.amazo=
naws.com/N-6nrm2DYfOV09pXko-kJEoW2cbYT-pxgWAcFUGvx3ffjsyR56FyY3dLS_LQq8LqHG=
Dlpn5snwSiwdd0xIP0X_2bhlYM0PUmUhtCKL7WIQU3KRZjwb_BH7giVqNLf6AMd37kDG1Zb52Bn=
fNdUiTHVsjBOpScH6IidA57LbzZwsI9FEEAoA5sTnAjLxkw9yC_vl"></blockquote></div><=
br></div><img src=3D"http://ec2-34-217-128-7.us-west-2.compute.amazonaws.co=
m/kNUQhR_cKKa1ciearMX9vqOx3h-d6H7Q0bxK6Dv_o5gVEgac4b9cRmu8WhsdeSifV8LEqyDME=
b80FP_cnbLjRQ4amQB2qX4tWyxf975KCcN8__ztHDC0K15TbXAxPANSh0UnMbELpwWDg-aGvyFu=
EaYXV-UgGcz6Rw9NaFJdYaAYRJnhUvPNJJe11R_2oICrl3s1jxiITxJlgHC4x6xWy7TXdZWJxv_=
70Ffu5iVX"></blockquote></div><br></div><img src=3D"http://ec2-34-217-128-7=
.us-west-2.compute.amazonaws.com/F9y6-v3HrB2jCS8zN8W8VziPQsw9VoMmbESMHqI9Td=
APA9sempRoPsoAg22WKm-_jlKN69yZRyWgQdptCrheXNCn5LnIHyN7ecI-ceBPPPtOQMrb2cA0M=
_4EsGcThbyBDbAO9fb87VwxA70w5sePo_7gySk1586JAQlVOIKAV3o8jFAlU4bipzaWpPnmJyQf=
bQ9m1o7V6xqfWbo0cl_PYTG"></blockquote></div><br></div><img src=3D"http://ec=
2-34-217-128-7.us-west-2.compute.amazonaws.com/8qgP5gV7y27zzReOgfR4JSNVNq7f=
4Vaq1AbCgDyo1B8cCTqVKBSreBw0943vRXDf5ieK64XfcXtzxPr4GTln8NYbolxTPEvcvqysJz8=
TtzVhA7Wvk3T2o35wxT5dRdnKvNQkzsfpS5jwErzlMViDGFP9mpjQplL9zRy5PglQ2wMsi-ZLLS=
N8_eWJd5KXxGIlnlAffpWQs_CVY6dOHdvSXNa2iSK"><img src=3D"http://url6045.fastf=
undinggroup.net/wf/open?upn=3Dc1k-2BuaaF0K8LeZYcvAHob564iJ76fFRUCHqRrh-2F2a=
EgMxXct1mETJR7aXvNBjVBGpF2pZ0OdECVYD2LIGmgMW6x6uRaEh7goIzOXrS9NgkAf60lLRggI=
I-2BYjzUotnQdLEqk1UPGafHYPP3yUpQg5CcaB0eNc0qMJGVpNeOrz6lzhZqatCtVARMWdo0A-2=
FinVhodM7GRdedQUiRIoJncH3R2I9rNmaLA-2FLSNWGZh4r3p9sFgJ3-2BpjxE-2FCVe09AMvMD=
" alt=3D"" width=3D"1" height=3D"1" border=3D"0" style=3D"height:1px !impor=
tant;width:1px !important;border-width:0 !important;margin-top:0 !important=
;margin-bottom:0 !important;margin-right:0 !important;margin-left:0 !import=
ant;padding-top:0 !important;padding-bottom:0 !important;padding-right:0 !i=
mportant;padding-left:0 !important;"/>
--0000000000008090d505d3bdc627--


--===============8077234828742359013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8077234828742359013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8077234828742359013==--

