Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A19740318E
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Sep 2021 01:35:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mNkca-0000kh-TB; Tue, 07 Sep 2021 23:35:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dave@sleepmap.de>) id 1mNkcY-0000kY-NN
 for linux1394-devel@lists.sourceforge.net; Tue, 07 Sep 2021 23:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cZ6S8f3rlulWmwfJkD6kpAfSmXSbuLVBkaStc3Ugg8M=; b=bDE2HwaX2uheJIB49nO5OEf5Fy
 FtbT+C4npIxsKlylcd3OhDHfpTkYaS8xe9cpbcqOpgUknI7ZQE9PKzabf3q4Bj9l97ZU8rDg8y32v
 eHEsfMY9VsbUAN9FT0ioZ4skrFpjylEbZevK9YkHM9IHNBfCPCwpjlR6X45BFm/EiTSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cZ6S8f3rlulWmwfJkD6kpAfSmXSbuLVBkaStc3Ugg8M=; b=ZYHynm3Q7vBK7raM6cPiFbrSPo
 m9X/3z7q095lHFfwlUhQ4pRmpfLLK8ciDJfw/TmfWaraYe5e0LdGkQ5UjY1l65MXcimi12pHGwIFB
 eYhFFkTUWYbdFzJ8Ia8F8YL/vS+LgN1090OGDADSObuzT9q16AXhnbJwJx9dMcva7eWo=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNkcX-001d5t-Dl
 for linux1394-devel@lists.sourceforge.net; Tue, 07 Sep 2021 23:35:18 +0000
Date: Wed, 8 Sep 2021 01:17:02 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YTfy7pLhWkTOn+aI@hmbx>
References: <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx>
Mime-Version: 1.0
In-Reply-To: <YEkMvjJt/Vu9Jbgu@hmbx>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, As a follow-up to the previous conversation, I have
 now also tried 5.14.1-rt19 (packaged as 5.14.1.19.realtime1) in the hopes
 that ALSA driver improvements for my Fireface800 will allow me to use pipe
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mNkcX-001d5t-Dl
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
Cc: Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: multipart/mixed; boundary="===============0800140127206647592=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============0800140127206647592==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="szSozMvqi6i2vSzl"
Content-Disposition: inline


--szSozMvqi6i2vSzl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Sep 2021 01:17:02 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	Stefan Richter <stefanr@s5r6.in-berlin.de>,
	Kristian Hoegsberg <krh@bitplanet.net>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

Hi all,

As a follow-up to the previous conversation, I have now also tried
5.14.1-rt19 (packaged as 5.14.1.19.realtime1) in the hopes that ALSA
driver improvements for my Fireface800 will allow me to use pipewire
going forward.

Unfortunately, firewire-ohci and/or firewire-core are still freezing
upon trying to make use of the connected device which is connected with
the card using the chip in question (see title).

Upon first boot the /dev/fw0 and /dev/fw1 nodes did not show up
initially [1] (log without using -1 debug parameter), which is why I
switched the device off and on again.
Afterwards the device nodes were created, so I attempted to use aplay -l
to check whether the device was detected. The command hung forever (also
starting jackd) and I had to reboot eventually. Using alsamixer I was
able to select the Fireface800 device from the list of devices though.

Upon 2nd boot I used the -1 debug parameter for firewire-ohci [2].
The device nodes were created automatically, but neither aplay -l nor
alsamixer showed the audio interface. The attempt to switch the device
off and on again and afterwards to remove the firewire-ohci module lead
to another freeze and a successive reboot.

If I can provide further information, please let me know!

I hope I can try the vanilla 5.14.1 kernel tomorrow to see how it
behaves in regards to firewire-ohci (judging from the past it will
probably work though).

Best,
David

P.S.: I have added Kristian Hoegsberg in CC, who is mentioned as the
author of firewire-ohci and firewire-core.

[1] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-kern=
el.log
[2] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-rest=
art_device_kernel.log

--=20
https://sleepmap.de

--szSozMvqi6i2vSzl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmE38u4ACgkQVMKPT/Wh
qUl12g//W7rwFM2sqRnj6SHYKlLQ2tWJn/vAOhB1LsbGRBglN5a2BamkX7fl8QL9
F6YMWgAII6i3tLnaqhjn5viEQgi7ITD2uT9yos9YvCYWpfxN12x/ocPFvIjKQbvA
qFST54+ZstgT/+IZWMAI0fC1+j/pC8RQqPWt/5/TLoY+YRgvWPMXSwad8x5LAIwT
OOi8fVfdqu1LiDItxvGn27/U7rELpwUm2LyzlZrUnVpiphme4UEjbjfYHdsd5XyJ
C+KcbZqZ0yCfz+8xeYGfFYUUgU2dgwjltrT7O4mf03LSXjHvMXbOxRSabj5H9DP7
2TmGPLkfzfCKvdaxkm98uJBCHEFs549qneorSexFHqDg5VacRXITvLOvNdaEHzP5
eS98pcCxMmfteQJuC9sLcJlowT0NdrCeGMhmCviZpkNhWk2EN48tefZ0nu7dOx/w
/ASUWvxpwPnB9v+2bsNKcrVUNSIlqPcKTgbi9p4OFmuKdy8X07qOWtisPSdKKFPd
r7UKPW6IEMMS2IyNNNcr+Dm7IlJDhiAFzErtvqN0720XmlicavVPXV/CHym9aBVg
+qdYMwpeXByK5lEJ6Wu7o9oZ4kwSR2MbElvuGvW9Ml+o9P3br/dV4M64T0t83EKK
se/S37NWD7AowDAzDNNsb808FjJz2ha2jK+u2fH5hCYrY0rWHF0=
=ibYX
-----END PGP SIGNATURE-----

--szSozMvqi6i2vSzl--


--===============0800140127206647592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0800140127206647592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0800140127206647592==--

