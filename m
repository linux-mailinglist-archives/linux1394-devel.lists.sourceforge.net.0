Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5199D480C08
	for <lists+linux1394-devel@lfdr.de>; Tue, 28 Dec 2021 18:18:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n2G77-0003FM-NM; Tue, 28 Dec 2021 17:18:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounces+17461769-fe27-linux1394-devel=lists.sourceforge.net@em6778.fastfundinggroup.net>)
 id 1n2G75-0003FF-JM
 for linux1394-devel@lists.sourceforge.net; Tue, 28 Dec 2021 17:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:In-Reply-To:From:Content-Type:Subject
 :Message-Id:Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tKb4P6iWBXpJUWHyQbCk8TtQ0DTuq1Twp2lrSESkEj0=; b=RP8xpMSQ5lccAA0NhoRDRxCjrL
 HGHM3a61hUTZJZPJvWM13rpW8Avp+hc+z1uA0BbwxDyPrUKGIxs/AEhJyroDui4mPhvPr/joIQq2z
 aQr/TNUFJaduAtalsXoSxlUxvbIjfOJWEhTNwZ691q8bsNMiLpOGqz+7COu59S8zSRzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:In-Reply-To:From:Content-Type:Subject:Message-Id:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tKb4P6iWBXpJUWHyQbCk8TtQ0DTuq1Twp2lrSESkEj0=; b=O642JyWXeadh3kpivGxDArBlxk
 inBepUBfoY7rEJihvFQlX4mpX4vZZa3ghDxh8caTDHkwBepNw7Bheij39UksMfx0mHH9+KgWx1kwN
 qUFY+LgVN+xmbdw+ruGQcy6J/KFp4XDPtl6ZrGnMCowsisMp9+vTjVaDcdlLvhq+4zbw=;
Received: from wrqvtvsv.outbound-mail.sendgrid.net ([149.72.120.104])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n2G6y-00Bxo4-32
 for linux1394-devel@lists.sourceforge.net; Tue, 28 Dec 2021 17:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastfundinggroup.net; 
 h=mime-version:subject:content-type:from:in-reply-to:references:to; 
 s=s1; bh=tKb4P6iWBXpJUWHyQbCk8TtQ0DTuq1Twp2lrSESkEj0=;
 b=CG9wgZ3zTWavUy0NK3o61FSaUL+FFVggOwmcgJ5mrv0sKv+Ca4sRigncIvFgEJBDneXl
 Hu36J7JbYB/qeBTdeD84gwbCTjW8N5WnFtvRCNcxCds4nifYWwBmSPq2TSYx+X1eN5eTXR
 GaL76IG+aB//s0GUYgtpFsHJY8JvGHmCzUjs2fxotsUnERYUugBzI8a8s2fXhPl2eltDYG
 RXqi4T1tbxqIbUSafqvM4tVmevm1+M3ef2Agt0kGpWfrYNkOca0/dC/A55MVEezQq8LQAH
 ldk25BIT4lxF3lD4zTWqwzhEhjCorFbTIW33opVCbo4mKngZEW73ejYjbmvp5gsQ==
Received: by filterdrecv-796b9cdd4-gpj72 with SMTP id
 filterdrecv-796b9cdd4-gpj72-1-61CB46CA-6D
 2021-12-28 17:18:02.365310294 +0000 UTC m=+10177064.700720151
Received: from [172.31.11.132] (unknown) by geopod-ismtpd-1-1 (SG)
 with ESMTP id gDdQuchxTXqf3t5TOfiSfQ
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 28 Dec 2021 17:18:02.225 +0000 (UTC)
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Tue, 28 Dec 2021 08:42:14 -0800
Received: from 776393159873 named unknown by gmailapi.google.com with HTTPREST;
 Wed, 22 Dec 2021 07:29:04 -0800
MIME-Version: 1.0
Date: Tue, 28 Dec 2021 17:18:02 +0000 (UTC)
Message-Id: <c0562ce2f3b243ea97a63a4064506bb5_CAHtXQSOZFwEaWdXmN3QvQbs3MxWsiWsCgzv0YMX3nXv6Tgjgcw@mail.gmail.com>
Subject: Re: Direct Lender here... Largest lender on the east coast. I can and
 will get you funded. Even if you just got funded....
From: Ron Michaels <underwriting@fastfundinggroup.net>
In-Reply-To: <4a6995e089604b59a593c80727e7c0a3_CAHtXQSNeNef+Uqv_JozcueodcTdfkx+S+3AEsV4DapY6ZpF-gQ@mail.gmail.com>
References: <e9406c06c752485ca3dd8ba9ffef2271_CAHtXQSMO9btot9VB=DTBOOWUJ2tkRV9gbouw76apALk6yWSS_w@mail.gmail.com>
 <4174d637da8f40e4b48fd1968054c22a_CAHtXQSPfv7gM28WDdcJ+PnbwSO1oyUDKCGY-azF2Ch1t-kE4NQ@mail.gmail.com>
 <4a6995e089604b59a593c80727e7c0a3_CAHtXQSNeNef+Uqv_JozcueodcTdfkx+S+3AEsV4DapY6ZpF-gQ@mail.gmail.com>
X-SG-EID: =?us-ascii?Q?aVQykaPryv=2FvgHutWGk3angG8gEn3d1yBXNMlmyW3ym8kEtTl3IPMaCerxg6OO?=
 =?us-ascii?Q?wxwmNsmXUIv41APfJv9S+fooEu5vLudUK=2F3m9Cg?=
 =?us-ascii?Q?wMMEnC3zIkVAb6CflKgHKtYttD5fNQ8tccQMPRm?=
 =?us-ascii?Q?q4lFDzNQb7zi0z6soCqrDpSZz6WoE14qpoRnSbL?=
 =?us-ascii?Q?I6tNhk8++qCSdvOIAF7ZsF=2FC1IS6t6iyZB1Hafm?=
 =?us-ascii?Q?QeAAmiuq2I8EvgqlzvLu1ywSseEMM67CTYkwBXp?=
 =?us-ascii?Q?i8u=2FjUVwlKwpJo6bpIgfaoTYxbZ4+6ANtO2pOVW?=
 =?us-ascii?Q?RWg=3D?=
To: linux1394-devel@lists.sourceforge.net
X-Entity-ID: /PhzgDtEoGxZCUSeVQe5nQ==
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I'm sure you're busy, but I'd appreciate if you can respond
 to my email below, so I can cross this off my to do list. On Monday, December
 27, 2021 at 12:38 AM, Ron Michaels <underwriting@fastfundinggroup.net> wrote:
 > I've reached out a couple times, but I haven't heard back. I'd appreciate
 a response to my email bel [...] 
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
X-Headers-End: 1n2G6y-00Bxo4-32
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
Content-Type: multipart/mixed; boundary="===============4645147041585134359=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4645147041585134359==
Content-Type: multipart/alternative; boundary="0000000000008090d505d3bdc627"

--0000000000008090d505d3bdc627
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I'm sure you're busy, but I'd appreciate if you can respond to my email bel=
ow, so I can cross this off my to do list.

On Monday, December 27, 2021 at 12:38 AM, Ron Michaels <underwriting@fastfu=
ndinggroup.net> wrote:
> I've reached out a couple times, but I haven't heard back. I'd appreciate=
 a response to my email below. I'm your guy! I'll get you the business fund=
ing you need..
>=20
> On Saturday, December 25, 2021 at 10:00 AM, Ron Michaels <underwriting@fa=
stfundinggroup.net> wrote:
> > Just making sure you saw this.
> >=20
> > On Friday, December 24, 2021 at 7:18 AM, Ron Michaels <underwriting@fas=
tfundinggroup.net> wrote:
> > >=20
> > >=20
> > > Even if you were funded recently, I can and will buy the loan at a lo=
wer=20
> > > cost. If you're in need of funding for your business. I am a DIRECT L=
ENDER!=20
> > > We own 4 lending platforms outright and I have access to 80 additiona=
l=20
> > > banks. I fund in-house within 8 hours. NO BROKERS OR FEE'S! NO LIES!!=
!!!
> > >=20
> > > Complete the following Application=20
> > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B-2=
BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-2B=
8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimYgI=
det0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqEjQQ_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJ0fBab5OvOoepsHKlb87=
Tx3up84OJ8ZAd50KjlzKbhNdxJHGGPFLQca-2FW5v593lW0-2FwF2ny6aCFbhoLOc6tz7fT50PV=
fbIjqe1FHf-2B7ZbQyuFf76NuUn-2FJOppwgmhaHMB1l5907R103-2F5TduHVaUM1A-3D> and=20
> > > receive the terms you deserve.
> > >=20
> > > -Bridge loans 2-24 months
> > > -No fees deducted after the funds are deposited (no brokers needed)
> > > -Term loans up to 25 years 2.7% above prime
> > > -Lines of credit
> > > -TRUE consolidations=20
> > > -Equipment Financing
> > >=20
> > > -Merchant Cash Advances
> > >=20
> > >=20
> > > =20
> > >=20
> > >           If you would like to be proactive, please complete the appl=
ication=20
> > > here online=20
> > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B-2=
BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-2B=
8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimYgI=
det0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqWqnh_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJzS2eEtHVVFeh5W6ibGQ=
Uy-2Frt0zT7CUnXSLARUkoTHTPVQh69rxKqdyU6AuTuNAwIZ4Pe4Dk6dNV4UUOUheLeBeO1gHBk=
fmMaBAMYVURUx-2F7xyVsbHEHzeguYXVmlERKgCMl3Z1RUYYMRUQ86kBe-2F-2Bk-3D> and=20
> > > return the last 4 months business bank statements.=20
> > >=20
> > >  *I will pledge to you, in advance, that my rates and terms will be t=
he=20
> > > best in the industry. We=E2=80=99re a total financial warehouse with =
every single=20
> > > financial option available for business owners.*
> > >=20
> > >=20
> > > Upon receiving that information, I will immediately activate your fir=
m=20
> > > approvals.=20
> > >=20
> > > As soon as I have options for you, I will give you a call to discuss.
> > >=20
> > > Usually within 3 or 4 hours.....
> > >=20
> > > =20
> > >=20
> > >  application here online=20
> > > <http://url6045.fastfundinggroup.net/ls/click?upn=3DjntoTxyaQ8kc-2B-2=
BBhHZcrIL5dRSLuKVcbWnUs8kFN-2FBwiH9mBf0mDL9H26AQY4XTY9VlQt8-2BzOweBrrjDa-2B=
8gM4mPTcydQr126kMBsEs-2FA9qYfYqCwxQKpFBTBNlKI3iOncGYQ0cFIR8sDYFZLHzOLyimYgI=
det0m64H8YCnCJGAu2QdiegP1Vg9INGd1i5tqTRIJ_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJyohp0Wr3-2FvaBDrNRv=
QkJrtIDW0LRn3Y93sIaaJd0qip13ru5cNf-2FBH9YGKeWJA0ukE3VmUve7py-2BWKspr1pG92Hi=
tn8J7nv-2FSX-2BGaYKqiPpvTQn3jDYIcyYnyRKdkuAYMEOhSKw2lall4hjZyCPXcA-3D>
> > >  =20
> > >=20
> > > --
> > >=20
> > > *Ron Michaels*
> > >=20
> > > Managing Director/ Lead  Underwriter
> > >=20
> > > *Omega Capital Funding*
> > >=20
> > > www.omegacapfund.com
> > >=20
> > > 1-877-282-1214 =E2=80=93 Toll Free
> > >=20
> > > 1-631-714-6801 =E2=80=93 Main
> > >=20
> > > 1-631-730-8115 - Fax
> > >=20
> > > You may unsubscribe <http://url6045.fastfundinggroup.net/ls/click?upn=
=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsiNz=
AavT5Rbmvb0Byc2r3kumkpEVdObji397CB7dzrBjZJlXvIPkyXxjxV9VdJ3zJzP1et5RdeDG-2F=
NTBB1lAjIoA-3D-3D05ER_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzH=
M8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJ1C7fjh7Z5pI2d1VupSGv0kRVf6n8CLQjTTPcvCO=
Qh43RSSbVfviORcEhH3rCV2BWX20edYZcjs7CsAzdwQHzI1NMNvvUiXEavbl5yjovJeXTDHMFaF=
krPaIx8jzb9wm9OTz-2FSLhREq0nGc0z4TdmsA-3D> to stop=20
> > > receiving our emails.
> > >=20
> >=20
>=20

--0000000000008090d505d3bdc627
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I'm sure you're busy, but I'd appreciate if you can respond to my email bel=
ow, so I can cross this off my to do list.
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
M-2FI54wmzrBJf0lBcguE0W66zr50tMmvUkP3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3DgKgH_9c=
2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWm=
SjEuCxElHBFJ9PEh0MUYP9bur1VFOBS-2BQr7Ft-2Fq2mGR02ftRP36mfx6zSrwv5FlgUgL99GY=
rsJbFnG4xOm0jyfuM5-2FlwQGew7nVXrgltHs33V4C9SGVYzLBagjyCpu9fWCSRbAXxqsRw-2BA=
9noHE4ZXJXpQJYd8TEdM-3D" target=3D"_blank">Application</a></span>=C2=A0and =
receive the terms you deserve.<br><br>-Bridge loans 2-24 months<br>-No fees=
 deducted after the funds are deposited (no brokers needed)<br>-Term loans =
up to 25 years 2.7% above prime<br>-Lines of credit<br>-TRUE consolidations=
=C2=A0<br></span><span style=3D"color:black;font-family:&quot;Times New Rom=
an&quot;,serif;font-size:13.5pt">-Equipment Financing</span><span style=3D"=
font-size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:black"=
><br></span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:black;font=
-family:&quot;Times New Roman&quot;,serif;font-size:13.5pt">-Merchant Cash =
Advances</span><br></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.000=
1pt;font-size:11pt;font-family:Calibri,sans-serif"><br></p><p class=3D"MsoN=
ormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,=
sans-serif"><span style=3D"font-size:12pt">=C2=A0</span></p><p class=3D"Mso=
Normal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri=
,sans-serif"><span style=3D"font-size:13.5pt;font-family:&quot;Times New Ro=
man&quot;,serif;color:black">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If you woul=
d like to be proactive, please complete the=C2=A0</span><span style=3D"font=
-size:12pt"><span style=3D"font-size:13.5pt;font-family:&quot;Times New Rom=
an&quot;,serif;color:rgb(17,85,204)"><a href=3D"http://url6045.fastfundingg=
roup.net/ls/click?upn=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZI=
QiKjAtXuXFg7VeLCzsiNzAavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EmOP-2BnWjMFnWn=
etYaYjI1fo6g7DQ55v5KIRzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJf0lBcguE0W66zr50tMmvUk=
P3xNyXn78w0c2V-2BKiw5c1Kq9Q-3D-3DBhX4_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0l=
cB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJ0e8qCtAgwtRFD7O2AqFOTbg=
genBV-2BHwAYBFW8g08a-2FvkNXk5Nb6-2Fbt6jd61aBLapJkwziCyAfAtbH4VNzXNHIhCMJ9d8=
X8C9KS4DO4Ot3am-2F8MGf2zf-2FYiVS1z9u79yMEJqtSs8XFGXwmhkRGiGB-2Fs-3D" target=
=3D"_blank">application here online</a></span></span><span style=3D"font-si=
ze:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:black">=C2=A0=
and return the last 4 months business bank statements.=C2=A0</span><span st=
yle=3D"font-size:12pt"></span></p><p class=3D"MsoNormal" style=3D"margin:0i=
n;background-image:initial;background-position:initial;background-size:init=
ial;background-repeat:initial;background-origin:initial;background-clip:ini=
tial;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-siz=
e:12pt;color:rgb(33,33,33)">=C2=A0<i>I will pledge to you, in advance, that=
 my rates and terms will be the best in the industry.=C2=A0<span style=3D"b=
ackground:yellow">We=E2=80=99re a total financial warehouse with every sing=
le financial option available for business owners</span>.</i></span><span s=
tyle=3D"color:rgb(33,33,33)"></span></p><p class=3D"MsoNormal" style=3D"mar=
gin:0in;background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"fo=
nt-size:12pt;color:rgb(33,33,33)"><i><br></i></span></p><p class=3D"MsoNorm=
al" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><spa=
n style=3D"font-size:12pt;color:rgb(38,40,42)">Upon receiving that informat=
ion, I will immediately activate your firm approvals.=C2=A0</span><span sty=
le=3D"font-size:12pt;color:rgb(33,33,33)"></span></p><p class=3D"MsoNormal"=
 style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span s=
tyle=3D"color:rgb(38,40,42);font-size:12pt">As soon as I have options for y=
ou, I will give you a call to discuss.</span></p><p class=3D"MsoNormal" sty=
le=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span style=
=3D"color:rgb(38,40,42);font-size:12pt">Usually within 3 or 4 hours.....</s=
pan></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:1=
1pt;font-family:Calibri,sans-serif"><p class=3D"MsoNormal" style=3D"margin:=
0in;background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-s=
ize:12pt;color:rgb(33,33,33)">=C2=A0</span><span style=3D"color:rgb(33,33,3=
3)"></span></p><div></div><p class=3D"MsoNormal" style=3D"margin:0in;font-s=
ize:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:13.5pt;fo=
nt-family:&quot;Times New Roman&quot;,serif;color:black">=C2=A0</span><span=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt"><span styl=
e=3D"font-size:13.5pt;font-family:&quot;Times New Roman&quot;,serif;color:r=
gb(17,85,204)"><a href=3D"http://url6045.fastfundinggroup.net/ls/click?upn=
=3D0mogsfw379VW7NOF7LqlEo-2FxCzy-2FKWmP-2BOlbLKXGTezZIQiKjAtXuXFg7VeLCzsiNz=
AavT5Rbmvb0Byc2r3kug19adfC078V7aakkB3o1EmOP-2BnWjMFnWnetYaYjI1fo6g7DQ55v5KI=
RzeX7kLEA3Bi4mj-2BrM-2FI54wmzrBJf0lBcguE0W66zr50tMmvUkP3xNyXn78w0c2V-2BKiw5=
c1Kq9Q-3D-3D6emo_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDH=
HOxhos5tjeHBqKXYCWmSjEuCxElHBFJ0-2Bi91fN55LCfXs-2BxxzIyWEXD-2F51lEOV3ijrVTs=
nTql-2FCz2VdhGSHPMzf0yaXFN7LUwBd3KdmC1dDtZI0EOg8BgPNHB9N8KesLhpkcxDBXZX3-2B=
v29-2BERPZDTxv7axHGW32d8HX1rL2-2Fc6Y-2FgF9Q2ns4-3D" target=3D"_blank">appli=
cation here online</a></span></span>=C2=A0=C2=A0<br></p><p class=3D"MsoNorm=
al" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,san=
s-serif">--<br></p><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><tabl=
e border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"border-collapse=
:collapse"><tbody><tr><td style=3D"padding:0in 0in 0in 9pt"><p class=3D"Mso=
Normal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">=
<b><span style=3D"font-size:16pt;font-family:&quot;Bookman Old Style&quot;,=
serif;color:rgb(0,112,192)">Ron
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
-2BMAnirJMcZCm-2FT76N4USd8277YQ-3D-3DPeTG_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Njb=
ET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeHBqKXYCWmSjEuCxElHBFJ5CAnNdHS4YXB2PzH7Sx=
xupU0-2FWZ6o7OPLLJELf-2BRR8uhhauXhiAdMkAFnJs-2Br33i2yEMilZCzVqVTDBsEaOk1PUK=
UQStYeRhUBlrJZ9zDvjF-2F2YxAUvSeXhz-2BvDzhvbsWJFZmsLSfceAqWbHr-2Fcc9M-3D" st=
yle=3D"color:blue">www.omegacapfund.com</a><span style=3D"color:rgb(0,112,1=
92)"></span></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-family:&quot;Bookman Old=
 Style&quot;,serif"><span class=3D"gmail-__dt"><span class=3D"__dt"> <img c=
lass=3D"kixie-click-image-c2c" id=3D"telephone_number_160" src=3D"chrome-ex=
tension://bmdpeakaalmaaflnkckhjcojpemlkjig/images/dt_phone.png" style=3D"cu=
rsor:pointer;width:14px;height:13px" title=3D"Call 1-877-282-1214" span=3D"=
kixie-click-image"> 1-877-282-1214 =E2=80=93
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
IoA-3D-3DhbCe_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOx=
hos5tjeHBqKXYCWmSjEuCxElHBFJ-2B6a4bTgFCLggGH2dG0giTxuHLk4gKpO6O1MaMy8iLC4py=
HOhdHH4blbJTwQd9wdR4nJDQ6snvzIVmwNMbkvsa-2BBW-2FKR9SzRuYEGhdF6w4P-2FYRyTRZ4=
NXwhiIpd92-2FHYiBgCMdHZDAI0UWk1cOOBWzc-3D" target=3D"_blank">unsubscribe</a=
> to stop receiving our emails.<br></div></div></div></div>
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
70Ffu5iVX"><img src=3D"http://url6045.fastfundinggroup.net/wf/open?upn=3Dc1=
k-2BuaaF0K8LeZYcvAHob564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBGxx2Z8eEME=
cHmmzGozWI7ZE3rTL-2F-2FfHyas9F8U2RMmFZE-2FChctxirJCTX94zZW7x4CB4Yj5poZUtpI-=
2F0JGggnHR-2BViL45f4zQ8L0K9n9aOkN-2F-2F-2FzByE5LfS4Ej84XzDoZ-2FEbXpALp-2BWf=
jNA0E-2BL-2FaBOKEg1umipSgJPt-2BuscsSbSXtvgiQIE55Inq-2BChZPfBA" alt=3D"" wid=
th=3D"1" height=3D"1" border=3D"0" style=3D"height:1px !important;width:1px=
 !important;border-width:0 !important;margin-top:0 !important;margin-bottom=
:0 !important;margin-right:0 !important;margin-left:0 !important;padding-to=
p:0 !important;padding-bottom:0 !important;padding-right:0 !important;paddi=
ng-left:0 !important;"/>
--0000000000008090d505d3bdc627--


--===============4645147041585134359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4645147041585134359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4645147041585134359==--

