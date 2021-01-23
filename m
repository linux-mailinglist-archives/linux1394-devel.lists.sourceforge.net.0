Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4224E301524
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Jan 2021 13:24:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l3Hy4-0002iK-69; Sat, 23 Jan 2021 12:24:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1l3Hy2-0002iC-AC
 for linux1394-devel@lists.sourceforge.net; Sat, 23 Jan 2021 12:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Tl4RIAgomxGiZ62dG6G1y2xLs/LSfBKItQFs9O3xrg=; b=QclkyykgKhkiYieddeMEBScQvo
 IN1lgknFMWlg0xD4/xtYKvh4Krvt7PWuX+CL1nWcoF0R9wKzAdkzhm4ZkFWwBFmqlbJpSk0nO9D6D
 BsAPL424pqbbKmvORoHJdqWcIzbfNVR5N4/gatBO3gIrDyIVOOgufj+oSqP834M3We4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4Tl4RIAgomxGiZ62dG6G1y2xLs/LSfBKItQFs9O3xrg=; b=K
 /Ry3pQdT398ZtzbzqDwjhVaQw+xengUzBVswGpWv52eaBuA/R5CedWLnbAJ89yAo4YhjZUFccL8VL
 hsh/cW+LX0M6jWxlImVVr/jUy6ka/X3rHYZyv0rc6lly73Y4LE7zOk2M6nOKVjbh9Cgj2Lopttc+3
 Ukghn8t2U6wI8+Kg=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l3Hxw-00Eu7f-GP
 for linux1394-devel@lists.sourceforge.net; Sat, 23 Jan 2021 12:24:38 +0000
Date: Sat, 23 Jan 2021 12:59:29 +0100
From: David Runge <dave@sleepmap.de>
To: linux-rt-users@vger.kernel.org, linux1394-devel@lists.sourceforge.net
Subject: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YAwPoaUZ1gTD5y+k@hmbx>
Mime-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: archlinux.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l3Hxw-00Eu7f-GP
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
Content-Type: multipart/mixed; boundary="===============6802588021721779301=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============6802588021721779301==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vuJ1cb2128WBMNRd"
Content-Disposition: inline


--vuJ1cb2128WBMNRd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 23 Jan 2021 12:59:29 +0100
From: David Runge <dave@sleepmap.de>
To: linux-rt-users@vger.kernel.org, linux1394-devel@lists.sourceforge.net
Subject: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

Hi!

I package linux-rt and linux-rt-lts for Arch Linux.
Due to time constraints over the past months I did not have the time to
test all of my own hardware setups with the recent realtime kernels.

Unfortunately firewire-ohci is unable to initialize my firewire
controller [1] (a PCIe card [2]) both on 5.4.91-rt50 and on 5.10.8-rt24: No
device nodes (i.e. /dev/fw0) are created and therefore no connected devices=
 can
be initialized either.

The controller is initialized properly on our other stock kernels on
Arch Linux though (e.g. linux/ linux-hardened/ linux-lts) and I usually keep
the config files for linux-rt[3] and linux-rt-lts[4] as close as possible to
that of our respective core linux packages linux[5] and linux-lts[6].

Looking at the kernel logs, this is what the initialization usually looks l=
ike
on our stock kernels (with `firewire_ohci debug=3D8` and duplicate lines
truncated for brevity):

```
firewire_ohci 0000:05:00.0: enabling device (0000 -> 0002)
firewire_ohci 0000:05:00.0: IRQ 00020010 AR_req busReset
firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT =
contexts, quirks 0x2
firewire_ohci 0000:05:00.0: IRQ 00030000 selfID busReset
firewire_ohci 0000:05:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:05:00.0: IRQ 00020000 busReset
firewire_core 0000:05:00.0: created device fw0: GUID 7856341278563412, S800
firewire_core 0000:05:00.0: phy config: new root=3Dffc1, gap_count=3D5
firewire_ohci 0000:05:00.0: IRQ 00020010 AR_req busReset
firewire_ohci 0000:05:00.0: IRQ 00030000 selfID busReset
firewire_ohci 0000:05:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:05:00.0: IRQ 00020000 busReset
firewire_core 0000:05:00.0: created device fw1: GUID 000a3500ada83262, S400
```

And this is how the initialization looks like on the realtime kernels (with
`firewire_ohci debug=3D-1`):

```
firewire_ohci 0000:05:00.0: enabling device (0000 -> 0002)
firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT =
contexts, quirks 0x2
firewire_ohci 0000:05:00.0: IRQ 00020010 AR_req busReset
firewire_ohci 0000:05:00.0: AR evt_bus_reset, generation 1
```

I have a laptop using an ExpressCard34 that provides Firewire800 [7], with =
the
same Texas Instruments chip which initializes properly (i.e. /dev/fw0 is
created, subsequently connected devices are initialized and are usable) on =
the
realtime kernels:

```
firewire_ohci 0000:06:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT =
contexts, quirks 0x2
firewire_ohci 0000:06:00.0: IRQ 00030010 selfID AR_req busReset
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
firewire_core 0000:06:00.0: created device fw0: GUID 000acd12007000ff, S800
firewire_ohci 0000:06:00.0: IRQ 00030010 selfID AR_req busReset
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
firewire_ohci 0000:06:00.0: IRQ 00020010 AR_req busReset
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
firewire_ohci 0000:06:00.0: IRQ 00830000 selfID cycleInconsistent busReset
firewire_ohci 0000:06:00.0: isochronous cycle inconsistent
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
firewire_core 0000:06:00.0: created device fw1: GUID 000a3500ada83262, S800
firewire_core 0000:06:00.0: phy config: new root=3Dffc0, gap_count=3D5
firewire_ohci 0000:06:00.0: IRQ 00030010 selfID AR_req busReset
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
[..]
firewire_ohci 0000:06:00.0: IRQ 00020000 busReset
```

At this point in time I'm uncertain whether this is a general problem
with the kernel module on the realtime kernels or a problem with the
kernel module on the realtime kernels with my PCIe controller specifically.
That it works using the ExpressCard34 based controller on my laptop makes it
extra odd (but I guess the underlying driver is handling this
differently due to the PCI bridge?).

Any pointers to solving this issue would be greatly appreciated, as not bei=
ng
able to use firewire audio interfaces on a realtime kernel in a workstation
context is bad for pro-audio people on Linux in general (and me in particul=
ar
;-) ).

Best,
David

[1]
```
$ lspci -kP -s 05:00.0
00:01.2/00.0/00.0/00.0/00.0 FireWire (IEEE 1394): Texas Instruments XIO2213=
A/B/XIO2221 IEEE-1394b OHCI Controller [Cheetah Express] (rev 01)
        Subsystem: Device 3412:7856
        Kernel driver in use: firewire_ohci
        Kernel modules: firewire_ohci
```
[2] https://www.delock.de/produkte/1114_FireWire/89153/merkmale.html
[3] https://aur.archlinux.org/cgit/aur.git/tree/config?h=3Dlinux-rt&id=3D3a=
ef702717033d63ddc7c078f6d1fc388ea0e420
[4] https://aur.archlinux.org/cgit/aur.git/tree/config?h=3Dlinux-rt-lts&id=
=3D6c529a838f028fd0c55b97b6f98a9d35108f6696
[5] https://github.com/archlinux/svntogit-packages/blob/a0a47291449ab346e0d=
d209a2f23c82264c60d79/trunk/config
[6] https://github.com/archlinux/svntogit-packages/blob/1a0e0ed59007a8c0ddd=
34f847a92174e2838244f/trunk/config
[7]
```
$ lspci -kP -s 05:00.0
00:1c.3/00.0 PCI bridge: Texas Instruments XIO2213A/B/XIO2221 PCI Express t=
o PCI Bridge [Cheetah Express] (rev 01)
$ lspci -kP -s 06:00.0
00:1c.3/00.0/00.0 FireWire (IEEE 1394): Texas Instruments XIO2213A/B/XIO222=
1 IEEE-1394b OHCI Controller [Cheetah Express] (rev 01)
        Subsystem: Device 3412:7856
        Kernel driver in use: firewire_ohci
        Kernel modules: firewire_ohci
```

--=20
https://sleepmap.de

--vuJ1cb2128WBMNRd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmAMD6EACgkQVMKPT/Wh
qUmSpw//SVmu4mKOLtGIxQWpkYQfXYU0WadBJ2uRjnt1WVl/j04iO6CHbOUm4NNj
ZXtabbRgWbJHS+7cLwUn6CM3aExRGatCO03uwBPF1s6F/Mhsy/gKP20///Xx3aAp
iW9eMC4oMwU3QsngdvmXC5FyxbSjjPYv5X9ymuFoUm0gxw+NY6gBxojqgwA+FDYD
m7BPN1z63DONemzr8y0AtK6uU3SSxSz3nlI+0nWg16hy5a61kNkytW/ZQmZ5xuev
7FjSmxovjPEP6fetUW8Pi94BeVNEW09Ha09/lKrVQuotDL0LBqHSfICSxYAQa6tD
QrSy/Dn1gpqpQdYeNWdunA7jAuMJ8IYqBe7T2jhihDajiKgQNRdLZMcrBHyDX64/
yJdQFB5c825b198AlqXP4mkiCU4abmD9z2eMHUDHkVnkP9wifoQmrg/BGSNFcER1
8qFZWPU68UEEDAZADNYLnWqWt8TqldPq7n5KzM0RlgyGcWuQQQy42wnjtZujdgs3
28hGbBZmpOcYbSMtcDGB3RnoLBu01EaLNTmwk9D7hVHV9Q9/tBF+D3OLRCo2z2Jx
QfIjDRehR3KnKPBszOQAh+ClyA033APlfkPLRi2vOvIwtifPtKy185W3rvk0ZzUa
vwzx/K51Yo6OoVTtBzwCVfNLuAFQQlLFpxC8MqLylbtElSzGhtk=
=d6kj
-----END PGP SIGNATURE-----

--vuJ1cb2128WBMNRd--


--===============6802588021721779301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6802588021721779301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6802588021721779301==--

