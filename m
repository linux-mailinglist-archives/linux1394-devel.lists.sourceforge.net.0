Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7FEAF61BB
	for <lists+linux1394-devel@lfdr.de>; Wed,  2 Jul 2025 20:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:References:In-Reply-To:Subject:To:Date:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QA+sPI52V0NUO3mCJ3xKgLNw3W1mzRPaZiY4/OTBcN8=; b=SwVfzoTCA2sljjyhy5bYHiSInz
	+2xoLFWo+h5yY0IZWdzwce1qBLFVFtaKkRVJ4yrs0x0PXL9Hodlft/C3RKNJUL8yP0bLvCFluLqUj
	ppP/iQ70CAlkcLBUMDwS9bNDMvrdmnJZE8F3ESHZOWGpHnJHx/ttA01e/+YzDSNps3fM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uX2QK-0007PF-9A;
	Wed, 02 Jul 2025 18:43:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1uX2QJ-0007P9-0A
 for linux1394-devel@lists.sourceforge.net;
 Wed, 02 Jul 2025 18:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vEhL6m8NgspzVvFCbiioLmvDKSi+u74P8akmMmXuDcA=; b=dqQcS7yTjlexeZF4Ah0Dw1fsJb
 HkpdfRjRBqPMvgMapnrxDk4ABIFCrjlDuHjBhmiWtE4MCJSCI66IAQDujfbKGgdnwcmv+OWFux6fZ
 5kcXIqn5UYoBa3DH/+xKQLoYKBMYbgXb1ug/m1n/yuAftOmJ8mmzcc/Dj5mCk944cyPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vEhL6m8NgspzVvFCbiioLmvDKSi+u74P8akmMmXuDcA=; b=QYKXuj80/O0KdwM9XTd63MWMYl
 SAYpJOVlF+oe6c7aABXa+2Z/Sr5z6SXPewL7LDWUWqbaa1w8u5T1L9j6graqllBw/d+1xT/PI4Fap
 qqDQTn0JzanzAUQ6+J3dhdQQ1x8rENNCDkrkejCleBiQ+LVl0R5AwP47xJLgFG9c/Yc8=;
Received: from latitanza.investici.org ([82.94.249.234])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uX2QH-00034l-Tu for linux1394-devel@lists.sourceforge.net;
 Wed, 02 Jul 2025 18:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1751481783;
 bh=vEhL6m8NgspzVvFCbiioLmvDKSi+u74P8akmMmXuDcA=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=FsZy2VQxRPq3yjT869NIhYAlSQ+eF5mN9XLv6F+A8lUKdjetx2tZ4q0XGr50mBQcc
 aY+6cG10khnWuvLb2k0bwWWiR7+JqYSzkNUJfEZSuTU3euQBwg6WAaUdCNKZbFwIou
 7KSuljF3eQDktgL8LGZOdhkxVCZaq1r2FtA2aPC0=
Received: from mx3.investici.org (unknown [127.0.0.1])
 by latitanza.investici.org (Postfix) with ESMTP id 4bXTKz2NwfzGpW3;
 Wed,  2 Jul 2025 18:43:03 +0000 (UTC)
Received: from [82.94.249.234] (mx3.investici.org [82.94.249.234])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4bXTKz0j8BzGpVq; Wed,  2 Jul 2025 18:43:03 +0000 (UTC)
Date: Wed, 02 Jul 2025 18:43:04 +0000
To: linux1394-devel@lists.sourceforge.net,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>, nospam@kota.moe
Subject: Re: Fwd: Adding timeouts to device access?
In-Reply-To: <20250629140119.GA93828@workstation.local>
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
 <20250629024836.GA16759@workstation.local>
 <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
 <20250629140119.GA93828@workstation.local>
Message-ID: <B0C09AAC-106A-4112-8D65-40004B8C2B28@paranoici.org>
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
 Content preview:  Hi, I am observing similar problems reported already to the
 list also with Agere but with FW643 and FW643E chipsets. Similarity here
 is OPs probes with unloading firewire-ohci. I am doing same attempts to
 restore
 detection of devices. And truely I couldn't find a pattern what combination
 works. And sometimes modprob [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uX2QH-00034l-Tu
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
Content-Type: multipart/mixed; boundary="===============7437509838955295428=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7437509838955295428==
Content-Type: multipart/alternative;
 boundary=----7L7BCR07UXXH5JCI131JF7742Z5MIA
Content-Transfer-Encoding: 7bit

------7L7BCR07UXXH5JCI131JF7742Z5MIA
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am observing similar problems reported already to the list also with Age=
re but with FW643 and FW643E chipsets=2E

Similarity here is OPs probes with unloading firewire-ohci=2E I am doing s=
ame attempts to restore detection of devices=2E And truely I couldn't find =
a pattern what combination works=2E And sometimes modprobe -r firewire-ohci=
 hangs for me as well and also normal reboot in that case hangs as well=2E

I just do 10seconds power button then=2E

So there seem to be some pattern with Agere chipsets not cooperating=2E

May I ask OP: which kernel version are you on?


On June 29, 2025 2:01:19 PM UTC, Takashi Sakamoto <o-takashi@sakamocchi=2E=
jp> wrote:
>Hi,
>
>On Sun, Jun 29, 2025 at 02:32:49PM +1000, =E5=B0=8F=E5=A4=AA wrote:
>> The Firewire adapter is an old HP HI349 PCIe card (lspci info below), a=
nd
>> it's connected to an M-Audio Profire 610 audio interface=2E
>> CPU is a AMD 3960X on a TRX40 PRO WIFI motherboard
>
>This is the first time I've been involved with Agere FW533=2E Anyway
>thanks for the information=2E
>
>> The hardware generally only stops responding when lights or exhaust fan=
s
>> are turned off on the same electrical circuit as the computer, but it's
>> very infrequent=2E Perhaps from EMI or a voltage spike=2E=2E=2E?
>> I originally had a generic chinese adapter (don't have lspci details,
>> sorry) that I swapped out because it was a much more frequent issue on =
that
>> one, and it mostly went away with the HP adapter=2E
>>=20
>> After the failure occurs, I have to power cycle the computer a few time=
s
>> before everything is working again (for both fw0 and fw1 devices to be
>> detected)=2E
>> If I don't keep on power cycling until it works again, but instead:
>>  1=2E Disconnect the Profire 610 (fw1)
>>  2=2E Immediately power cycle
>>  3=2E --> The Firewire adapter (fw0) gets detected fine
>>  4=2E Unload firewire_ohci (modprobe -r firewire_ohci)
>>  5=2E Reconnect the Profire 610
>>  6=2E Load firewire_ohci (modprobe firewire_ohci)
>>  7=2E --> The Firewire adapter is not detected at all
>>  8=2E Unload firewire_ohci again (modprobe -r firewire_ohci)
>>  9=2E Disconnect the Profire 610
>>  10=2E Load firewire_ohci again (modprobe firewire_ohci)
>>  11=2E --> The Firewire adapter is detected again
>>=20
>> If I mess around with the combination of reloading the firewire_ohci
>> module, connecting/disconnecting the Profire 610, and probing things wi=
th
>> FFADO, eventually a modprobe hangs indefinitely on wait_for_completion(=
) in
>> the kernel with the dmesg logs in my original message=2E
>> Sometimes it even prevents systemd from powering off the computer (beca=
use
>> it's waiting for modprobe to exit from a SIGKILL=2E=2E=2E), which is wh=
y I wanted
>> to update the driver
>
>Two kernel messages are in your first post=2E The first one records that
>the system does not execute interrupt service routine for hardIRQ which
>should be triggered against any command request to transfer asynchronous =
packet
>when retrieving the detected node device=2E The second one records that t=
he
>reference count of fw_card instance could not reach zero even if waiting =
so
>long when modprobe(8) executes the delete_module system call=2E
>
>I guess the cause of later message is the lost of hardIRQ in the first
>message, however, I would like you to compare timestamps for these
>messages=2E
>
>
>Thanks
>
>Takashi Sakamoto
>
>
>_______________________________________________
>mailing list linux1394-devel@lists=2Esourceforge=2Enet
>https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel

------7L7BCR07UXXH5JCI131JF7742Z5MIA
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Hi,<br><br>I am observing simila=
r problems reported already to the list also with Agere but with FW643 and =
FW643E chipsets=2E<br><br>Similarity here is OPs probes with unloading fire=
wire-ohci=2E I am doing same attempts to restore detection of devices=2E An=
d truely I couldn't find a pattern what combination works=2E And sometimes =
modprobe -r firewire-ohci hangs for me as well and also normal reboot in th=
at case hangs as well=2E<br><br>I just do 10seconds power button then=2E<br=
><br>So there seem to be some pattern with Agere chipsets not cooperating=
=2E<br><br>May I ask OP: which kernel version are you on?<br></div><br><br>=
<div class=3D"gmail_quote"><div dir=3D"auto">On June 29, 2025 2:01:19 PM UT=
C, Takashi Sakamoto &lt;o-takashi@sakamocchi=2Ejp&gt; wrote:</div><blockquo=
te class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left:=
 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">Hi,<br><br>On Sun, Jun 29, 2025 at=
 02:32:49PM +1000, =E5=B0=8F=E5=A4=AA wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #=
729fcf; padding-left: 1ex;"><div dir=3D"auto">The Firewire adapter is an ol=
d HP HI349 PCIe card (lspci info below), and<br>it's connected to an M-Audi=
o Profire 610 audio interface=2E<br>CPU is a AMD 3960X on a TRX40 PRO WIFI =
motherboard<br></div></blockquote><div dir=3D"auto"><br>This is the first t=
ime I've been involved with Agere FW533=2E Anyway<br>thanks for the informa=
tion=2E<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt=
 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"><div =
dir=3D"auto">The hardware generally only stops responding when lights or ex=
haust fans<br>are turned off on the same electrical circuit as the computer=
, but it's<br>very infrequent=2E Perhaps from EMI or a voltage spike=2E=2E=
=2E?<br>I originally had a generic chinese adapter (don't have lspci detail=
s,<br>sorry) that I swapped out because it was a much more frequent issue o=
n that<br>one, and it mostly went away with the HP adapter=2E<br><br>After =
the failure occurs, I have to power cycle the computer a few times<br>befor=
e everything is working again (for both fw0 and fw1 devices to be<br>detect=
ed)=2E<br>If I don't keep on power cycling until it works again, but instea=
d:<br> 1=2E Disconnect the Profire 610 (fw1)<br> 2=2E Immediately power cyc=
le<br> 3=2E --&gt; The Firewire adapter (fw0) gets detected fine<br> 4=2E U=
nload firewire_ohci (modprobe -r firewire_ohci)<br> 5=2E Reconnect the Prof=
ire 610<br> 6=2E Load firewire_ohci (modprobe firewire_ohci)<br> 7=2E --&gt=
; The Firewire adapter is not detected at all<br> 8=2E Unload firewire_ohci=
 again (modprobe -r firewire_ohci)<br> 9=2E Disconnect the Profire 610<br> =
10=2E Load firewire_ohci again (modprobe firewire_ohci)<br> 11=2E --&gt; Th=
e Firewire adapter is detected again<br><br>If I mess around with the combi=
nation of reloading the firewire_ohci<br>module, connecting/disconnecting t=
he Profire 610, and probing things with<br>FFADO, eventually a modprobe han=
gs indefinitely on wait_for_completion() in<br>the kernel with the dmesg lo=
gs in my original message=2E<br>Sometimes it even prevents systemd from pow=
ering off the computer (because<br>it's waiting for modprobe to exit from a=
 SIGKILL=2E=2E=2E), which is why I wanted<br>to update the driver<br></div>=
</blockquote><div dir=3D"auto"><br>Two kernel messages are in your first po=
st=2E The first one records that<br>the system does not execute interrupt s=
ervice routine for hardIRQ which<br>should be triggered against any command=
 request to transfer asynchronous packet<br>when retrieving the detected no=
de device=2E The second one records that the<br>reference count of fw_card =
instance could not reach zero even if waiting so<br>long when modprobe(8) e=
xecutes the delete_module system call=2E<br><br>I guess the cause of later =
message is the lost of hardIRQ in the first<br>message, however, I would li=
ke you to compare timestamps for these<br>messages=2E<br><br><br>Thanks<br>=
<br>Takashi Sakamoto<hr>mailing list linux1394-devel@lists=2Esourceforge=2E=
net<br><a href=3D"https://lists=2Esourceforge=2Enet/lists/listinfo/linux139=
4-devel">https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel</=
a><br></div></pre></blockquote></div></body></html>
------7L7BCR07UXXH5JCI131JF7742Z5MIA--


--===============7437509838955295428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7437509838955295428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7437509838955295428==--

