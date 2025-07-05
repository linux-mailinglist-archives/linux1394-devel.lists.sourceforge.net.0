Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D898DAFA0EE
	for <lists+linux1394-devel@lfdr.de>; Sat,  5 Jul 2025 18:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:References:In-Reply-To:Subject:To:Date:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J8YRP7tLsocGDjph7F0Zy11ppUDzoq0nBcpMB2IwM4Q=; b=jzrCZNMEJf8yjnQDYY5eHOKRjS
	1NZ2m+8WlbNVhwHgorPjv7F+0AhODLBfkMHAJS7MP32vqbnyhG9qVGWEN++vNm1opuAmTQ18nZ//G
	GhEsFLjW8xDueN9EQsCY0uJ0tREympo1wR5m5awFK+6/Vmb7deZ/7ZdLn/nbhlY8husg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uY5Tx-0002xk-QA;
	Sat, 05 Jul 2025 16:11:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1uY5Tv-0002xS-Bz
 for linux1394-devel@lists.sourceforge.net;
 Sat, 05 Jul 2025 16:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/08vo6fV2UZFbEsDrEPNc5jPTVTLOZZudi2DdsPUnxU=; b=V616TO68gMKa32jo8P7OxTTqrD
 tcTym1jY3fDEaeHgjSkQ+T9kdBWMDr7qWb5+fYlGyhTfVWwRnPRBE8D6/tDFA4uyzCTsJMyQuOJkZ
 4pWmz1gtbIPo3/ajN7Fwkv20aFqJSGcI4sOppsyxGrLmHUjM42m9UYzYvufXHXA536UY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/08vo6fV2UZFbEsDrEPNc5jPTVTLOZZudi2DdsPUnxU=; b=Db/dEDJ76CQPf/9a4gqh752jTK
 91n02Y+Nhgd3bWDW2cRKmdDo8oj3b0UPbLgU0NXvmvyVHuocsVIVZd3dK6XJM7ak6CtU2cj1M2NYD
 Nm9Pooia9t0sDNzF43tSKEcHRGdz964kg5bnOBSDotnozWR//D9aXOhQNCWdExDUotM8=;
Received: from confino.investici.org ([93.190.126.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uY5Tu-00081l-D2 for linux1394-devel@lists.sourceforge.net;
 Sat, 05 Jul 2025 16:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1751731867;
 bh=/08vo6fV2UZFbEsDrEPNc5jPTVTLOZZudi2DdsPUnxU=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=QJuXlyrdJpQoxKGtCzLHgSPy3qcQCq47Sstpc7ZKvM+3U4OsSZsPIX14TCPb9KwdP
 wKXYjK9RAbDchi9UnIkQo4IzLXygIe/hDgBRY7YCkeBiYH5Wc5P8SlQA1ES7EduC4Q
 L2CVa8HWBwtKHBQxZWPxEv6nDQ7T70UogKe53K1A=
Received: from mx1.investici.org (unknown [127.0.0.1])
 by confino.investici.org (Postfix) with ESMTP id 4bZFqH3p1Dz11R6;
 Sat,  5 Jul 2025 16:11:07 +0000 (UTC)
Received: from [93.190.126.19] (mx1.investici.org [93.190.126.19])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4bZFqH1xvtz11Md; Sat,  5 Jul 2025 16:11:07 +0000 (UTC)
Date: Sat, 05 Jul 2025 16:11:06 +0000
To: =?UTF-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>
Subject: Re: Fwd: Adding timeouts to device access?
In-Reply-To: <CACsxjPYd82sNJwzjtZv1Tiztc8hwrrux=2RUEDFEJmqmFD-2jQ@mail.gmail.com>
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
 <20250629024836.GA16759@workstation.local>
 <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
 <20250629140119.GA93828@workstation.local>
 <B0C09AAC-106A-4112-8D65-40004B8C2B28@paranoici.org>
 <CACsxjPYd82sNJwzjtZv1Tiztc8hwrrux=2RUEDFEJmqmFD-2jQ@mail.gmail.com>
Message-ID: <054994AF-A361-4105-B96B-09E9A4665E4B@paranoici.org>
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
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Just to note I am on exact same kernel version. Takashi さん
    tried to reproduce it on 6.14 and couldn't. I think I am going to try some
    cutting edge distro like Arch with newer kernel and see there. Kernel 6.15
    from experimental Debian repo didnt boot for me. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uY5Tu-00081l-D2
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
Content-Type: multipart/mixed; boundary="===============0644441380612502245=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0644441380612502245==
Content-Type: multipart/alternative;
 boundary=----0Q6XEUPWHPT1MXDXHINKKBIJ0LWW0J
Content-Transfer-Encoding: 7bit

------0Q6XEUPWHPT1MXDXHINKKBIJ0LWW0J
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just to note I am on exact same kernel version=2E

Takashi =E3=81=95=E3=82=93 tried to reproduce it on 6=2E14 and couldn't=2E

I think I am going to try some cutting edge distro like Arch with newer ke=
rnel and see there=2E Kernel 6=2E15 from experimental Debian repo didnt boo=
t for me=2E

There were reports and from my own experience that it worked before on old=
er kernels presumably 6=2E5=2Esomething=2E


On July 3, 2025 4:58:59 AM UTC, "=E2=80=8D=E5=B0=8F=E5=A4=AA" <nospam@kota=
=2Emoe> wrote:
>On Thu, 3 Jul 2025 at 04:43, AreYouLoco? <areyouloco@paranoici=2Eorg> wro=
te:
>
>> Hi,
>>
>> I am observing similar problems reported already to the list also with
>> Agere but with FW643 and FW643E chipsets=2E
>>
>> Similarity here is OPs probes with unloading firewire-ohci=2E I am doin=
g
>> same attempts to restore detection of devices=2E And truely I couldn't =
find a
>> pattern what combination works=2E And sometimes modprobe -r firewire-oh=
ci
>> hangs for me as well and also normal reboot in that case hangs as well=
=2E
>>
>> I just do 10seconds power button then=2E
>>
>> So there seem to be some pattern with Agere chipsets not cooperating=2E
>>
>> May I ask OP: which kernel version are you on?
>>
>
>It's been happening for at least half a year now so it's not a recent iss=
ue
>by any means - I've just been too lazy to debug it given how infrequently
>it occurs for me
>
>But my current kernel version is 6=2E12=2E32
>
>$ uname -a
>Linux home=2Ekota=2Emoe 6=2E12=2E32-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6=
=2E12=2E32-1
>(2025-06-07) x86_64 GNU/Linux

------0Q6XEUPWHPT1MXDXHINKKBIJ0LWW0J
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Just to note I am on exact same =
kernel version=2E<br><br>Takashi =E3=81=95=E3=82=93 tried to reproduce it o=
n 6=2E14 and couldn't=2E<br><br>I think I am going to try some cutting edge=
 distro like Arch with newer kernel and see there=2E Kernel 6=2E15 from exp=
erimental Debian repo didnt boot for me=2E<br><br>There were reports and fr=
om my own experience that it worked before on older kernels presumably 6=2E=
5=2Esomething=2E<br></div><br><br><div class=3D"gmail_quote"><div dir=3D"au=
to">On July 3, 2025 4:58:59 AM UTC, "=E2=80=8D=E5=B0=8F=E5=A4=AA" &lt;nospa=
m@kota=2Emoe&gt; wrote:</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); paddin=
g-left: 1ex;">
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
</blockquote></div></body></html>
------0Q6XEUPWHPT1MXDXHINKKBIJ0LWW0J--


--===============0644441380612502245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0644441380612502245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0644441380612502245==--

