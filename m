Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9F04817C5
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Dec 2021 00:38:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n2iWp-0003cA-33; Wed, 29 Dec 2021 23:38:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounces+17461769-fe27-linux1394-devel=lists.sourceforge.net@em6778.fastfundinggroup.net>)
 id 1n2iWn-0003c3-Uc
 for linux1394-devel@lists.sourceforge.net; Wed, 29 Dec 2021 23:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:In-Reply-To:From:Content-Type:Subject
 :Message-Id:Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lVfWRQpJk7k5d3NOB+/fubcVC3M5ojThYKIljxuot38=; b=WMNyrHUmok/eM0K+sozgT42ede
 Tw1jZ6qiaw/k+bIarxNIVxd03Uh0voFdHEKuh7zmjUKrDCHVs0IxzYE/cdrt7jFZm+J0dd8sJ/uew
 bMK94RQ7mp5rvuprB5A1t5Jn1m68Li11UjksNATohwvaLKsIDAOj9a1OI4KAPi2qJOdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:In-Reply-To:From:Content-Type:Subject:Message-Id:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lVfWRQpJk7k5d3NOB+/fubcVC3M5ojThYKIljxuot38=; b=XuzI72vMIJ50MGHWWeCubxbTBk
 ebbjsqI5sC/s4qo6/eaYKzAVv18g0qQNfSj3MBv6wgkcjWgpKhNlLnkuqXZBwHGNVIfKETV9tO9Yj
 vD7rB/XcaJyr+FysqmD1BkyECXsIrCQOfhU630jOohOy7zqsuMS8HmPgVHIqE6NGrj1M=;
Received: from wrqvtvsv.outbound-mail.sendgrid.net ([149.72.120.104])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n2iWk-00DIpi-2Z
 for linux1394-devel@lists.sourceforge.net; Wed, 29 Dec 2021 23:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastfundinggroup.net; 
 h=mime-version:subject:content-type:from:in-reply-to:references:to; 
 s=s1; bh=lVfWRQpJk7k5d3NOB+/fubcVC3M5ojThYKIljxuot38=;
 b=Fa7MJ5ajbHXDhH1hycgZuA2HeiKC90nbgYreBwKygrApc6QXVQuCha8AUS/b7isp+yPk
 5dXSJTnbfo4Mcc/2sHeTEPo2Q3ltc74NN3I2FFReVURlVSzM4cE8nyhoLmwSAMP9gs03Uo
 XQWrJaB4bpST7YmlI0/PAOgDF4HVpTCRlfOmh1wUH/kyKKS5TG6jVaMlY2lWiNtZfT/nhE
 XuBvleV4BLPr8pS5lS8XKlBsFEu1e4TWc4oCdQ+KW03DstN+A1hnywrddoeLPBS+8+gC3/
 Ltxlt6nFonTOl37FtBL9CLunECfNrLwTbg7iIYCKQYdM7a7kOpkhprirSf9slUnQ==
Received: by filterdrecv-58c44f8fdf-qmt7h with SMTP id
 filterdrecv-58c44f8fdf-qmt7h-1-61CCF174-64
 2021-12-29 23:38:28.903154583 +0000 UTC m=+10286260.196794422
Received: from [172.31.11.132] (unknown) by geopod-ismtpd-6-0 (SG)
 with ESMTP id jcuGRUARRbm_yV3CC_GXHQ
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 29 Dec 2021 23:38:28.842 +0000 (UTC)
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 29 Dec 2021 09:56:24 -0800
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 22 Dec 2021 07:29:04 -0800
MIME-Version: 1.0
Date: Wed, 29 Dec 2021 23:38:28 +0000 (UTC)
Message-Id: <8b08516e5c834b4d82740b1cb76d2ae6_CAHtXQSNpdfUAyYCfQe3ZQxrhJ=dQ7-hqfL-CPWq0hvWWKN0wBQ@mail.gmail.com>
Subject: Re: Direct Lender here... Largest lender on the east coast. I can and
 will get you funded. Even if you just got funded....
From: Ron Michaels <underwriting@fastfundinggroup.net>
In-Reply-To: <c0562ce2f3b243ea97a63a4064506bb5_CAHtXQSOZFwEaWdXmN3QvQbs3MxWsiWsCgzv0YMX3nXv6Tgjgcw@mail.gmail.com>
References: <e9406c06c752485ca3dd8ba9ffef2271_CAHtXQSMO9btot9VB=DTBOOWUJ2tkRV9gbouw76apALk6yWSS_w@mail.gmail.com>
 <4174d637da8f40e4b48fd1968054c22a_CAHtXQSPfv7gM28WDdcJ+PnbwSO1oyUDKCGY-azF2Ch1t-kE4NQ@mail.gmail.com>
 <4a6995e089604b59a593c80727e7c0a3_CAHtXQSNeNef+Uqv_JozcueodcTdfkx+S+3AEsV4DapY6ZpF-gQ@mail.gmail.com>
 <c0562ce2f3b243ea97a63a4064506bb5_CAHtXQSOZFwEaWdXmN3QvQbs3MxWsiWsCgzv0YMX3nXv6Tgjgcw@mail.gmail.com>
X-SG-EID: =?us-ascii?Q?aVQykaPryv=2FvgHutWGk3angG8gEn3d1yBXNMlmyW3ym8kEtTl3IPMaCerxg6OO?=
 =?us-ascii?Q?wxwmNsmXUIv41APfJv9S+fooEu5vLudUK=2F3m9Cg?=
 =?us-ascii?Q?wMMEnCKbmIq2Vx2UeGcYSJSJZYNFqzjroPU1jSB?=
 =?us-ascii?Q?8m6M6JbxU1sPqqkMzQkD5jWNwmj3P4XJ7XZxk0S?=
 =?us-ascii?Q?EiYX9WQDyTC=2FJpgMKl4X=2FHW9a0GF8UiXLdByABj?=
 =?us-ascii?Q?r13kI7z1b+gORHl7BKZAnydQARzZFq3MA6aPXSP?=
 =?us-ascii?Q?4QW6HnuJB0xkIdL56fs4PMMRLUR1MzynCfXEiBg?= =?us-ascii?Q?stg=3D?=
To: linux1394-devel@lists.sourceforge.net
X-Entity-ID: /PhzgDtEoGxZCUSeVQe5nQ==
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have not heard from you. Let me know please. I WILL get
 the job done and get you the funding you need On Tuesday, December 28, 2021
 at 5:18 PM, Ron Michaels <underwriting@fastfundinggroup.net> wrote: > I'm
 sure you're busy, but I'd appreciate if you can respond to my email below,
 so I can cross this o [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: fastfundinggroup.net]
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
X-Headers-End: 1n2iWk-00DIpi-2Z
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
Content-Type: multipart/mixed; boundary="===============7186855437903684561=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7186855437903684561==
Content-Type: multipart/alternative; boundary="0000000000008090d505d3bdc627"

--0000000000008090d505d3bdc627
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have not heard from you. Let me know please. I WILL get the job done and =
get you the funding you need

On Tuesday, December 28, 2021 at 5:18 PM, Ron Michaels <underwriting@fastfu=
ndinggroup.net> wrote:
> I'm sure you're busy, but I'd appreciate if you can respond to my email b=
elow, so I can cross this off my to do list.
>=20
> On Monday, December 27, 2021 at 12:38 AM, Ron Michaels <underwriting@fast=
fundinggroup.net> wrote:
> > I've reached out a couple times, but I haven't heard back. I'd apprecia=
te a response to my email below. I'm your guy! I'll get you the business fu=
nding you need..
> >=20
> > On Saturday, December 25, 2021 at 10:00 AM, Ron Michaels <underwriting@=
fastfundinggroup.net> wrote:
> > > Just making sure you saw this.
> > >=20
> > > On Friday, December 24, 2021 at 7:18 AM, Ron Michaels <underwriting@f=
astfundinggroup.net> wrote:
> > > >=20
> > > >=20
> > > > Even if you were funded recently, I can and will buy the loan at a =
lower=20
> > > > cost. If you're in need of funding for your business. I am a DIRECT=
 LENDER!=20
> > > > We own 4 lending platforms outright and I have access to 80 additio=
nal=20
> > > > banks. I fund in-house within 8 hours. NO BROKERS OR FEE'S! NO LIES=
!!!!!
> > > >=20
> > > > Complete the following Application=20
> > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B=
-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-=
2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimY=
gIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tql1s6_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1N=
jbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl6ThFRTMMDTToUtXl3=
N7TTlKjY156faQtelGqU0IPnb0-2FA1E2J18hZyZGDeQ6sFy3nKCKoqV8gs1j34hUBezSxhwyv-=
2BW9d6810exKj6DXOn-2BA-2BAzugEJL0okGoVCd377aTK1oqK5qDrV-2B9Ru6PwgT30-3D> an=
d=20
> > > > receive the terms you deserve.
> > > >=20
> > > > -Bridge loans 2-24 months
> > > > -No fees deducted after the funds are deposited (no brokers needed)
> > > > -Term loans up to 25 years 2.7% above prime
> > > > -Lines of credit
> > > > -TRUE consolidations=20
> > > > -Equipment Financing
> > > >=20
> > > > -Merchant Cash Advances
> > > >=20
> > > >=20
> > > > =20
> > > >=20
> > > >           If you would like to be proactive, please complete the ap=
plication=20
> > > > here online=20
> > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B=
-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-=
2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimY=
gIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqeDnI_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1N=
jbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl8F-2FR9GlAZopwdTF=
nu67JI9s3bssTtD0QZrv6G2B9Q1djvpb2UNdx5iuA-2FxqVrns30qQN8z3lhP-2FfEfKBSYwoGR=
CbaM9li8d09xvgXsxapj7IEZQsNV2mL0lOeXLiLRg9DPWJeE6H3MFkANfQGH82eg-3D> and=20
> > > > return the last 4 months business bank statements.=20
> > > >=20
> > > >  *I will pledge to you, in advance, that my rates and terms will be=
 the=20
> > > > best in the industry. We=E2=80=99re a total financial warehouse wit=
h every single=20
> > > > financial option available for business owners.*
> > > >=20
> > > >=20
> > > > Upon receiving that information, I will immediately activate your f=
irm=20
> > > > approvals.=20
> > > >=20
> > > > As soon as I have options for you, I will give you a call to discus=
s.
> > > >=20
> > > > Usually within 3 or 4 hours.....
> > > >=20
> > > > =20
> > > >=20
> > > >  application here online=20
> > > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B=
-2BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-=
2B8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimY=
gIdet0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqlpd0_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1N=
jbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl1Wm-2BEiWD0Y66fBX=
4oTWJjQwFlpy-2Bz0aKSBsYkdmUze7MEs5Mbo2PBDuX8vmxFfUIDQs4gX-2BUMFI9APC4LX2Bid=
W85orGaR4h4q9vKDV2LPFk0BDJdvIu4NFYxRuQ-2BQXvXvSkDyzoGHSn0IZ8YciDjQ-3D>
> > > >  =20
> > > >=20
> > > > --
> > > >=20
> > > > *Ron Michaels*
> > > >=20
> > > > Managing Director/ Lead  Underwriter
> > > >=20
> > > > *Omega Capital Funding*
> > > >=20
> > > > www.omegacapfund.com
> > > >=20
> > > > 1-877-282-1214 =E2=80=93 Toll Free
> > > >=20
> > > > 1-631-714-6801 =E2=80=93 Main
> > > >=20
> > > > 1-631-730-8115 - Fax
> > > >=20
> > > > You may unsubscribe <http://url6045.fastfundinggroup.net/ls/click?u=
pn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsi=
NzAavT5Rbmvb0Byc2r3kumkpEVdObji397CB7dzrBjZJlXvIPkyXxjxV9VdJ3zJzP1et5RdeDG-=
2FNTBB1lAjIoA-3D-3Di0DV_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewW=
zHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl4J-2B8dwlnT5d5EFkCRgDg-2BebkxTZVhVcWj=
vObuLt9dDgHIWol39iCuTLlO9DopjtDJ3pHy-2FoF5P8l6tpkDdB6DZomt367wjPklusuEx3YJK=
FaAyJk5hH90NyFnWz-2Falu0ILYKTDBYNRqUQGrKkGTH7E-3D> to stop=20
> > > > receiving our emails.
> > > >=20
> > >=20
> >=20
>=20

--0000000000008090d505d3bdc627
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have not heard from you. Let me know please. I WILL get the job done and =
get you the funding you need
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
M-2FI54wmzrBJf0lBcguE0W66zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3DwOoG_9c=
2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTL=
IpMDjnWZgSLlxWEaS9F5xOEGj-2FaTv9zS4A7-2FzQfFSfJZh0yiFiP-2FUBzL5btrFvBAPAWtG=
vbU20qVPvCHLNEVAj1s4bU6-2FcLko5XZnnAlkyU5tYBRWPTEC5D-2BQbfu4h9RksJppLuuNVmv=
zfWSS4-2FpeK-2BDGxre-2FsObsQ-3D" target=3D"_blank">Application</a></span>=
=C2=A0and receive the terms you deserve.<br><br>-Bridge loans 2-24 months<b=
r>-No fees deducted after the funds are deposited (no brokers needed)<br>-T=
erm loans up to 25 years 2.7% above prime<br>-Lines of credit<br>-TRUE cons=
olidations=C2=A0<br></span><span style=3D"color:black;font-family:&quot;Tim=
es New Roman&quot;,serif;font-size:13.5pt">-Equipment Financing</span><span=
 style=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;co=
lor:black"><br></span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.=
0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:=
black;font-family:&quot;Times New Roman&quot;,serif;font-size:13.5pt">-Merc=
hant Cash Advances</span><br></p><p class=3D"MsoNormal" style=3D"margin:0in=
 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><br></p><p cla=
ss=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-famil=
y:Calibri,sans-serif"><span style=3D"font-size:12pt">=C2=A0</span></p><p cl=
ass=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-fami=
ly:Calibri,sans-serif"><span style=3D"font-size:13.5pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;color:black">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I=
f you would like to be proactive, please complete the=C2=A0</span><span sty=
le=3D"font-size:12pt"><span style=3D"font-size:13.5pt;font-family:&quot;Tim=
es New Roman&quot;,serif;color:rgb(17,85,204)"><a href=3D"http://url6045.fa=
stfundinggroup.net/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOl=
bLKXGTezZIQiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EmOP-=
2BnWjMFnWnetYaYjI1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJf0lBcguE0W66=
zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3D5Emu_9c2ZCZzrWFlb2tjmei9-2FZAE1D=
dJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl7DuJ-2FseMxlJ=
KCuoYjh5li4T0CM1JwQNXuli1ddeihwWDgI3DL8eI-2BHVRiDGGAyPJWCfYELi7KS2NNzfSbZrI=
-2BGBL4SeR4gpXpihqC4cmd2BJnPudNDE2TGTwoROA-2BlLGWfFN-2BnjwJOmf6d-2FLuEZywQ-=
3D" target=3D"_blank">application here online</a></span></span><span style=
=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:bl=
ack">=C2=A0and return the last 4 months business bank statements.=C2=A0</sp=
an><span style=3D"font-size:12pt"></span></p><p class=3D"MsoNormal" style=
=3D"margin:0in;background-image:initial;background-position:initial;backgro=
und-size:initial;background-repeat:initial;background-origin:initial;backgr=
ound-clip:initial;font-size:11pt;font-family:Calibri,sans-serif"><span styl=
e=3D"font-size:12pt;color:rgb(33,33,33)">=C2=A0<i>I will pledge to you, in =
advance, that my rates and terms will be the best in the industry.=C2=A0<sp=
an style=3D"background:yellow">We=E2=80=99re a total financial warehouse wi=
th every single financial option available for business owners</span>.</i><=
/span><span style=3D"color:rgb(33,33,33)"></span></p><p class=3D"MsoNormal"=
 style=3D"margin:0in;background-image:initial;background-position:initial;b=
ackground-size:initial;background-repeat:initial;background-origin:initial;=
background-clip:initial;font-size:11pt;font-family:Calibri,sans-serif"><spa=
n style=3D"font-size:12pt;color:rgb(33,33,33)"><i><br></i></span></p><p cla=
ss=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,san=
s-serif"><span style=3D"font-size:12pt;color:rgb(38,40,42)">Upon receiving =
that information, I will immediately activate your firm approvals.=C2=A0</s=
pan><span style=3D"font-size:12pt;color:rgb(33,33,33)"></span></p><p class=
=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-=
serif"><span style=3D"color:rgb(38,40,42);font-size:12pt">As soon as I have=
 options for you, I will give you a call to discuss.</span></p><p class=3D"=
MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-seri=
f"><span style=3D"color:rgb(38,40,42);font-size:12pt">Usually within 3 or 4=
 hours.....</span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001=
pt;font-size:11pt;font-family:Calibri,sans-serif"><p class=3D"MsoNormal" st=
yle=3D"margin:0in;background-image:initial;background-position:initial;back=
ground-size:initial;background-repeat:initial;background-origin:initial;bac=
kground-clip:initial;font-size:11pt;font-family:Calibri,sans-serif"><span s=
tyle=3D"font-size:12pt;color:rgb(33,33,33)">=C2=A0</span><span style=3D"col=
or:rgb(33,33,33)"></span></p><div></div><p class=3D"MsoNormal" style=3D"mar=
gin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-=
size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:black">=C2=
=A0</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
2pt"><span style=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot=
;,serif;color:rgb(17,85,204)"><a href=3D"http://url6045.fastfundinggroup.ne=
t/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtX=
uXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EmOP-2BnWjMFnWnetYaYjI=
1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJf0lBcguE0W66zr50tMmvUkP3xNyXn=
78w0c2V-2BKiw5c1Kq9Q-3D-3DyUSc_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJ=
VDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl0s8Tp5-2F-2BPTK24H47dSpwHe1sdf=
LGaWH5cP-2F7ilfxpvubZUAaCijSMSkWCQLeQKOS3boN65ym5O0AzPakBPjpm9vC8YEgkA6Dyas=
Zu47wMCm9NaAgrzkWK-2F-2FXvQm5r34tPc6CAzex4xuVYAiKZtO2-2Fc-3D" target=3D"_bl=
ank">application here online</a></span></span>=C2=A0=C2=A0<br></p><p class=
=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:=
Calibri,sans-serif">--<br></p><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"bord=
er-collapse:collapse"><tbody><tr><td style=3D"padding:0in 0in 0in 9pt"><p c=
lass=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,s=
ans-serif"><b><span style=3D"font-size:16pt;font-family:&quot;Bookman Old S=
tyle&quot;,serif;color:rgb(0,112,192)">Ron
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
-2BMAnirJMcZCm-2FT76N4USd8277YQ-3D-3DKYEE_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeytZK8pjTLIpMDjnWZgSLl6Rh85S3zS7EMNtQHNBQ=
GDxBbE-2FW-2F7A7HweiVKMFxV7djNvzPFvRycdoJT4XuGbDz6-2F6s-2BGw-2B0gegyPcksaAG=
IY60o28tyU4k2xXWMRITWZH0KxAcqLkRlYUeke5xeltXAe8PsBfIsRdZMBHP8W6rX0-3D" styl=
e=3D"color:blue">www.omegacapfund.com</a><span style=3D"color:rgb(0,112,192=
)"></span></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;fon=
t-family:Calibri,sans-serif"><span style=3D"font-family:&quot;Bookman Old S=
tyle&quot;,serif"><span class=3D"gmail-__dt"><span class=3D"__dt"> <img cla=
ss=3D"kixie-click-image-c2c" id=3D"telephone_number_160" src=3D"chrome-exte=
nsion://bmdpeakaalmaaflnkckhjcojpemlkjig/images/dt_phone.png" style=3D"curs=
or:pointer;width:14px;height:13px" title=3D"Call 1-877-282-1214" span=3D"ki=
xie-click-image"> 1-877-282-1214 =E2=80=93
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
IoA-3D-3DCSTA_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOx=
hos5tjeytZK8pjTLIpMDjnWZgSLl7-2FoKfCrgy-2B9njv3OV6SUs3cXEeWnLHbmWZuu9EECpmU=
dtVazaq9Ejk0CSBxxHhy3MvyeTvs7MqvRNqBZFdobaXJIRSuF5K9ziby12Mq3006hxWX1zUBWqC=
h2K8mx8TnJ2jouTkcevqKWNPhWofGVkQ-3D" target=3D"_blank">unsubscribe</a> to s=
top receiving our emails.<br></div></div></div></div>
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
bQ9m1o7V6xqfWbo0cl_PYTG"><img src=3D"http://url6045.fastfundinggroup.net/wf=
/open?upn=3Dc1k-2BuaaF0K8LeZYcvAHob564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvN=
BjVBGgbClWz6QW7DuBoMuiuhvwho0aj1SGKTqL2-2FsXhcNcXO-2BU1NGHPoRU69ogDaJdrBxjH=
T5C2GTbVZJzaDKgFKj2ww2g03eowGhrLFVKTYEOWC-2Bf1UAxDmP-2F5YXfDLR9KBp0M3mJFOF0=
Bkos30Mo0wnncuJaf8CaOqxMg2oc85tz-2BIuqof0NhtjbHFReJ8h8skA" alt=3D"" width=
=3D"1" height=3D"1" border=3D"0" style=3D"height:1px !important;width:1px !=
important;border-width:0 !important;margin-top:0 !important;margin-bottom:0=
 !important;margin-right:0 !important;margin-left:0 !important;padding-top:=
0 !important;padding-bottom:0 !important;padding-right:0 !important;padding=
-left:0 !important;"/>
--0000000000008090d505d3bdc627--


--===============7186855437903684561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7186855437903684561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7186855437903684561==--

