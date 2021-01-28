Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E09A3080A9
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 Jan 2021 22:42:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l5F3H-0007b7-VG; Thu, 28 Jan 2021 21:42:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1l5F3G-0007au-OK
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Jan 2021 21:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eeRj6QZvPa0/bGT9/5OqH2PjvccJ99cXABZ24MjaXH0=; b=WYfwxwJC7pAmZUwxaObxF4LmKd
 SbMz+8nK6gAoL85efCK6f/JkjxmGhcvtr2aZdJ3KzPUeRWtfDLQ99Ib5Av3d5vVt0y8BrW/juANy2
 OEwIE9TBjeJGHu5ChdJngKD0EeN8YrvZYPzfRQydNj4VCSbZyeFkYw0OHzeLK9p+QjTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eeRj6QZvPa0/bGT9/5OqH2PjvccJ99cXABZ24MjaXH0=; b=EglgYjQN3ioAYwPkP9b/gl10uJ
 50He52scawGvmo8C4R8A9jAAWEUYIaPCO6Ar/udsjmIzToQ2oBJ5DUShcz4Xwr0Hz/gi0mJ0XdBc3
 LyzMgWo6BkxGC93UorKzCNCPSHPGp3YBd1O43Dkz9vV7pAmE9Ib272OdRrh0dte9O3RM=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5F3B-00Gayv-EW
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Jan 2021 21:42:05 +0000
Date: Thu, 28 Jan 2021 22:41:45 +0100
From: David Runge <dave@sleepmap.de>
To: "Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YBMvmU+kp11f7+wF@hmbx>
References: <YAwPoaUZ1gTD5y+k@hmbx>
 <YBJZk9/77+E0TRk4@lx-t490>
Mime-Version: 1.0
In-Reply-To: <YBJZk9/77+E0TRk4@lx-t490>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l5F3B-00Gayv-EW
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0733925108944308937=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============0733925108944308937==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xQ9xaHb/SmmtzFh5"
Content-Disposition: inline


--xQ9xaHb/SmmtzFh5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Jan 2021 22:41:45 +0100
From: David Runge <dave@sleepmap.de>
To: "Ahmed S. Darwish" <a.darwish@linutronix.de>
Cc: linux-rt-users@vger.kernel.org, linux1394-devel@lists.sourceforge.net
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-01-28 07:28:35 (+0100), Ahmed S. Darwish wrote:
> On Sat, Jan 23, 2021 at 12:59:29PM +0100, David Runge wrote:
> ...
> Can you please send the full kernel log, with boot parameter
> "firewire_ohci.debug=3D-1", for mainline v5.4.91 vs. v5.4.91-rt50?

kernel log for mainline:
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91-kernel.log

kernel log for rt (no dice :-/):
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91.50.arch1-kernel.log

> Please also make sure to use the exact same defconfig for both, except
> with CONFIG_PREEMPT_RT=3Dy for the -rt kenrel of course.

config diff:
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91-lts_changed_vs_rt-lts=
=2Epatch

> This will help in comparing apples to apples, as you were posting the
> results of different base kernels (vs. the -rt versions), and different
> defconfigs (vs. -rt) within such kernels.

The configuration for the 5.4.91 stock kernel has not been updated since
the 5.4.83, which is maybe a bit misleading.
Generally I enable anything that I can in the config for the realtime
kernel. However, some settings of course get switched off, as they are
not compatible.
The diff above is for a custom version I just made, just to make sure
and clear things out.

> Good luck,

Thanks, seems it's needed!

> P.S. Since this maybe is a timing issue, and ohci bus reset handling
> occurs at SCHED_OTHER workqueu context, were you by any chance running
> unreasonably-intensive realtime workloads by the time the driver was
> loaded?

Not that I am aware of. The driver neither initializes the device during
boot nor when later reloading.
There are no intense services running. The system is fairly
multi-purpose, so most things are started on demand.

Thanks!

David

--=20
https://sleepmap.de

--xQ9xaHb/SmmtzFh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmATL5kACgkQVMKPT/Wh
qUkPdBAAgK7/YwFvPgqG7uJ2jOMC49R1nPfs5VdJwgZ8Ue+ltq5ihY85F5GHHmub
rCbtSGTHSANjpYk8ZfniQcehzemHB9KMKroSSnst5einTQC7jIZ8DDHytRPyoDPZ
a7USfJ3cs4H6JryopqTY5q3hzapwMLX4b2H9WFIUe/KoNYvY9oEXZDY4y8wapnlv
JW7nSviV1guat1FNhf7PwpgCD4y2zCAEVHlV2jED0PqG7YlsMJVcxI8e9CZBvExQ
vFMbhhlpdcM0JUissUcKyqk1Jo4PK347ZBROOT12LcdcS5BCkyT/HzMOZaBNb0J/
KbKsoUMVdGPa9gmWyHv5a8CYhVA8WECwGBat7fn9k/nkNA2qUcTe/zlZBG0jljqT
UwNvKjWjTWS6pFqSt0C6AqzPvh3rN1PKwnFUjqGvUFcuykL+ULpCbW6u7uR4cPNW
PWsBP7Qw3zhum9dwCg6d4P6//55cAZ0oK9xrdlfnoiHYsJhQ8CAvdcOy8CUkHSDj
tRdQs5kfnsiYxDlmLAvSGgE08n2n372qOjsD4Uy2ohKN/jMp9G9VSDRAnnEPMXAm
I3AI8vS5cu07EwuPmab9HQ/Wbmi2WyWk3pFCciGKBQQIFDcfcb0HqhRZfmJV8Ecb
9KrqAWRo3+wVeYvlfHMTXeyJarOQWINFeK9yFTlygRNG+28gP48=
=qjyt
-----END PGP SIGNATURE-----

--xQ9xaHb/SmmtzFh5--


--===============0733925108944308937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0733925108944308937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0733925108944308937==--

