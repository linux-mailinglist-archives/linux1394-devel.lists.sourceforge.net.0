Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE8FAFA4B8
	for <lists+linux1394-devel@lfdr.de>; Sun,  6 Jul 2025 13:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:References:In-Reply-To:Subject:To:Date:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uTYEgvklwNBzDehuxa8AYJcjFwv1uJxOpWx/OBTh+8U=; b=KOE1XCU0J60jzRpWpmsBJdGgTY
	fO2nXQqHmCOipww6u7Mfdm22Kmu4YUcHx/z/I2QlIVKQK8ooVMXTmU+CihFJ//dARKrze05Hq+VB6
	X683aHTSiXjISyBqTNlDWG/HhnPDqsXOStr2ctKw3te/jP6MTiIBe0v0mT0vhb1OSh28=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uYNCP-00033k-0s;
	Sun, 06 Jul 2025 11:06:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1uYNCN-00033V-5k
 for linux1394-devel@lists.sourceforge.net;
 Sun, 06 Jul 2025 11:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d7cRXvd0nSh/oYx/xW/+X48FL1vUCa2lF5uH6mxGGrk=; b=YpDfc3Qiem2gOaVkbwzT4F0IcC
 Gj/p32qlL4s4HuCC0ho5lpdhVX6PkAdWvwGZ0Gq13en+aZcqvy97L0ECA7L7jI64/ET4ZlyyqdV/N
 XLa1tlNjb1EzIvPjiJkp1vssnJYxa1JtHXw4IHtBXdgU7T/z8NTLZ1KOjvvdn+UXNZxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d7cRXvd0nSh/oYx/xW/+X48FL1vUCa2lF5uH6mxGGrk=; b=Mg/5lWAmA+vuLcqJdHGGYeRCW0
 oZtv4voSpDRNFUycdFQHlfig5GlmDm39UtpxZSF0Gl3a9CFxSttAAeOqu8zCErZqP+nCmRtki3dhF
 AwDKlMISZ77NG7F5X25cyXLRzfcfCBxj3ceioaJzCopPXykAYn99w/N0d6OBNZZgsPzE=;
Received: from confino.investici.org ([93.190.126.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uYNCM-00020O-7W for linux1394-devel@lists.sourceforge.net;
 Sun, 06 Jul 2025 11:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1751799966;
 bh=d7cRXvd0nSh/oYx/xW/+X48FL1vUCa2lF5uH6mxGGrk=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=ty8/s9t/CHMqyxqsPzzHlNyzxN7bxHFBjV6XTYhBnLnrLSoEfIGscjm/f/9/oHHA8
 jheJcPBQU9TqR/fYrBooooyzCdXO1jvxTaPtmiR7JZ3hBONo5pkF1Y//nPy0lcHy0N
 hTNbbhDY3jGUyoonVvvW0yeWP5XvXKd9+BknqzZQ=
Received: from mx1.investici.org (unknown [127.0.0.1])
 by confino.investici.org (Postfix) with ESMTP id 4bZl0t2q3Mz11PG;
 Sun,  6 Jul 2025 11:06:06 +0000 (UTC)
Received: from [93.190.126.19] (mx1.investici.org [93.190.126.19])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4bZl0t12Knz11Pt; Sun,  6 Jul 2025 11:06:06 +0000 (UTC)
Date: Sun, 06 Jul 2025 11:06:07 +0000
To: =?UTF-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>,
 AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Subject: Re: Fwd: Adding timeouts to device access?
In-Reply-To: <054994AF-A361-4105-B96B-09E9A4665E4B@paranoici.org>
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
 <20250629024836.GA16759@workstation.local>
 <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
 <20250629140119.GA93828@workstation.local>
 <B0C09AAC-106A-4112-8D65-40004B8C2B28@paranoici.org>
 <CACsxjPYd82sNJwzjtZv1Tiztc8hwrrux=2RUEDFEJmqmFD-2jQ@mail.gmail.com>
 <054994AF-A361-4105-B96B-09E9A4665E4B@paranoici.org>
Message-ID: <23E66E2A-CE66-4A3C-88CD-0E648EB94D2B@paranoici.org>
MIME-Version: 1.0
Autocrypt: addr=areyouloco@paranoici.org; prefer-encrypt=mutual; keydata=
 mDMEaA4TfBYJKwYBBAHaRw8BAQdA1Lu1FLVEpzdciB7kiHZ0gV3EXeLkhmVC7I5rCr6aaQq0JkFy
 ZVlvdUxvY28/IDxhcmV5b3Vsb2NvQHBhcmFub2ljaS5vcmc+iHIEExYIABoECwkIBwIVCAIWAQIZ
 AQWCaA4TfAKeAQKbAwAKCRDX3bQSIXXRBtUyAQDp2BxmuW0ywJWS9zB6Qx7SCKqVzVQ0IrH+RPzn
 VMONggD+L4G6IuGqWX9gKoIGteK78xyyO/K5ZaI9fUrf6EY3fgi4OARoDhN8EgorBgEEAZdVAQUB
 AQdA0rtHT93xcoMSipYUarYeSYImj6Dbrl/FsSZqjLZ1lU8DAQgHiHgEGBYIAAkFgmgOE3wCmwwA
 IQkQ1920EiF10QYWIQTKljMOut0PM5DWzeLX3bQSIXXRBouoAQDCVsZz3AF8kos+UIsxz2nF8qjI
 XoR/EH7qlmNdXmETYAD/TjGFZ93Dpek2RaZPlXanfruudh+oBm1qJjGwP5ddOQQ=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I think I got it! I got interested in firewire-ohci quirks
 and my dmesg reported 0x0 for quirks by default. And when reading thru:
 <https://github.com/torvalds/linux/blob/1f988d0788f50d8464f957e793fab356e2937369/drivers/firewire/ohci.c#L330>
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: kota.moe] [URI: paranoici.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uYNCM-00020O-7W
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
From: AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: AreYouLoco? <areyouloco@paranoici.org>
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============5596266489579863297=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5596266489579863297==
Content-Type: multipart/alternative;
 boundary=----WEKWWHR8E28AEZ4743O7I5XN4X0PK7
Content-Transfer-Encoding: 7bit

------WEKWWHR8E28AEZ4743O7I5XN4X0PK7
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think I got it!

I got interested in firewire-ohci quirks and my dmesg reported 0x0 for qui=
rks by default=2E

And when reading thru:
<https://github=2Ecom/torvalds/linux/blob/1f988d0788f50d8464f957e793fab356=
e2937369/drivers/firewire/ohci=2Ec#L330>

It seems that it should apply 0x4 and 0x10 so 0x14=2E I've created:
/etc/modprobe=2Ed/firewire-ohci-quirks=2Econf
options firewire-ohci quirks=3D0x14

And now it seems to work fine each time=2E And also hot-plug started to wo=
rk!

So the issue is that quirks that suppose to be applied are not for some re=
ason=2E

Could someone verify this on their end?!

On July 5, 2025 4:11:06 PM UTC, AreYouLoco? via linux1394-devel <linux1394=
-devel@lists=2Esourceforge=2Enet> wrote:
>Just to note I am on exact same kernel version=2E
>
>Takashi =E3=81=95=E3=82=93 tried to reproduce it on 6=2E14 and couldn't=
=2E
>
>I think I am going to try some cutting edge distro like Arch with newer k=
ernel and see there=2E Kernel 6=2E15 from experimental Debian repo didnt bo=
ot for me=2E
>
>There were reports and from my own experience that it worked before on ol=
der kernels presumably 6=2E5=2Esomething=2E
>
>
>On July 3, 2025 4:58:59 AM UTC, "=E2=80=8D=E5=B0=8F=E5=A4=AA" <nospam@kot=
a=2Emoe> wrote:
>>On Thu, 3 Jul 2025 at 04:43, AreYouLoco? <areyouloco@paranoici=2Eorg> wr=
ote:
>>
>>> Hi,
>>>
>>> I am observing similar problems reported already to the list also with
>>> Agere but with FW643 and FW643E chipsets=2E
>>>
>>> Similarity here is OPs probes with unloading firewire-ohci=2E I am doi=
ng
>>> same attempts to restore detection of devices=2E And truely I couldn't=
 find a
>>> pattern what combination works=2E And sometimes modprobe -r firewire-o=
hci
>>> hangs for me as well and also normal reboot in that case hangs as well=
=2E
>>>
>>> I just do 10seconds power button then=2E
>>>
>>> So there seem to be some pattern with Agere chipsets not cooperating=
=2E
>>>
>>> May I ask OP: which kernel version are you on?
>>>
>>
>>It's been happening for at least half a year now so it's not a recent is=
sue
>>by any means - I've just been too lazy to debug it given how infrequentl=
y
>>it occurs for me
>>
>>But my current kernel version is 6=2E12=2E32
>>
>>$ uname -a
>>Linux home=2Ekota=2Emoe 6=2E12=2E32-amd64 #1 SMP PREEMPT_DYNAMIC Debian =
6=2E12=2E32-1
>>(2025-06-07) x86_64 GNU/Linux

------WEKWWHR8E28AEZ4743O7I5XN4X0PK7
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">I think I got it!<br><br>I got i=
nterested in firewire-ohci quirks and my dmesg reported 0x0 for quirks by d=
efault=2E<br><br>And when reading thru:<br>&lt;<a href=3D"https://github=2E=
com/torvalds/linux/blob/1f988d0788f50d8464f957e793fab356e2937369/drivers/fi=
rewire/ohci=2Ec#L330">https://github=2Ecom/torvalds/linux/blob/1f988d0788f5=
0d8464f957e793fab356e2937369/drivers/firewire/ohci=2Ec#L330</a>&gt;<br><br>=
It seems that it should apply 0x4 and 0x10 so 0x14=2E I've created:<br>/etc=
/modprobe=2Ed/firewire-ohci-quirks=2Econf<br>options firewire-ohci quirks=
=3D0x14<br><br>And now it seems to work fine each time=2E And also hot-plug=
 started to work!<br><br>So the issue is that quirks that suppose to be app=
lied are not for some reason=2E<br><br>Could someone verify this on their e=
nd?!</div><br><br><div class=3D"gmail_quote"><div dir=3D"auto">On July 5, 2=
025 4:11:06 PM UTC, AreYouLoco? via linux1394-devel &lt;linux1394-devel@lis=
ts=2Esourceforge=2Enet&gt; wrote:</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 20=
4); padding-left: 1ex;">
<div dir=3D"auto">Just to note I am on exact same kernel version=2E<br><br=
>Takashi =E3=81=95=E3=82=93 tried to reproduce it on 6=2E14 and couldn't=2E=
<br><br>I think I am going to try some cutting edge distro like Arch with n=
ewer kernel and see there=2E Kernel 6=2E15 from experimental Debian repo di=
dnt boot for me=2E<br><br>There were reports and from my own experience tha=
t it worked before on older kernels presumably 6=2E5=2Esomething=2E<br></di=
v><br><br><div class=3D"gmail_quote"><div dir=3D"auto">On July 3, 2025 4:58=
:59 AM UTC, "=E2=80=8D=E5=B0=8F=E5=A4=AA" &lt;nospam@kota=2Emoe&gt; wrote:<=
/div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex=
; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr"><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, 3 Jul 2025 at 04:43, AreYouLoco? =
&lt;<a href=3D"mailto:areyouloco@paranoici=2Eorg">areyouloco@paranoici=2Eor=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><div dir=3D"auto">Hi,<br><br>I am observing similar problems report=
ed already to the list also with Agere but with FW643 and FW643E chipsets=
=2E<br><br>Similarity here is OPs probes with unloading firewire-ohci=2E I =
am doing same attempts to restore detection of devices=2E And truely I coul=
dn't find a pattern what combination works=2E And sometimes modprobe -r fir=
ewire-ohci hangs for me as well and also normal reboot in that case hangs a=
s well=2E<br><br>I just do 10seconds power button then=2E<br><br>So there s=
eem to be some pattern with Agere chipsets not cooperating=2E<br><br>May I =
ask OP: which kernel version are you on?</div></div></blockquote><div><br><=
/div><div>It's been happening for at least half a year now so it's not a re=
cent issue by any means - I've just been too lazy to debug it given how inf=
requently it occurs for me</div><div><br></div><div>But my current kernel v=
ersion is 6=2E12=2E32</div><div><br></div><div>$ uname -a<br>Linux home=2Ek=
ota=2Emoe 6=2E12=2E32-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6=2E12=2E32-1 (20=
25-06-07) x86_64 GNU/Linux</div></div></div>
</blockquote></div></blockquote></div></body></html>
------WEKWWHR8E28AEZ4743O7I5XN4X0PK7--


--===============5596266489579863297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5596266489579863297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5596266489579863297==--

