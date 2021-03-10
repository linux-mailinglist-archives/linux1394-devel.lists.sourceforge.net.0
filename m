Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C760334669
	for <lists+linux1394-devel@lfdr.de>; Wed, 10 Mar 2021 19:15:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lK3N1-0006w7-A1; Wed, 10 Mar 2021 18:15:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1lK3Mz-0006vq-WD
 for linux1394-devel@lists.sourceforge.net; Wed, 10 Mar 2021 18:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wFdlOSzdxHalJJfdeFQL9x354c5yntd96lUBToioeCE=; b=OI8JT7ZMdOV4PAdaESYw7SON59
 zuMRmKx6VM17GxP7VduSTJzLgxYrErFPtJeaxqMMiClbQO9IBnCSDkOAkySDlpq8q9b2hmDC3nDtw
 dR/uzrml5gWpvfhjkKmB4I86H+xOb88QHyn4ssgxJsm9AT80fOIL8DSsW2cWKOz+9oCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wFdlOSzdxHalJJfdeFQL9x354c5yntd96lUBToioeCE=; b=C+ppXv6sroes9ImB208naB4tl0
 q3IzTj0XUKmSe4t4Xoc63oNuReT9Uj4d93tZewbv5prDEq31Uv934NryhrQWBI5gjWBvYkF4SjCHo
 VYTa1T1obWs3RhmaicwRI7ZYmiPNjeUYJAzaV//C5jsenOduvULhuzzEDUfjGuuCFibU=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lK3Mu-0007xz-Ll
 for linux1394-devel@lists.sourceforge.net; Wed, 10 Mar 2021 18:15:41 +0000
Date: Wed, 10 Mar 2021 19:15:20 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YEkMvjJt/Vu9Jbgu@hmbx>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
Mime-Version: 1.0
In-Reply-To: <20210308141210.yoa37dsc26p4jsim@linutronix.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lK3Mu-0007xz-Ll
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: multipart/mixed; boundary="===============4278911297133557145=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4278911297133557145==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6msKiO1TDZjGbyAt"
Content-Disposition: inline


--6msKiO1TDZjGbyAt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Mar 2021 19:15:20 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-03-08 15:12:10 (+0100), Sebastian Andrzej Siewior wrote:
> On 2021-02-18 10:27:51 [+0100], To David Runge wrote:
> > On 2021-02-18 09:38:49 [+0100], To David Runge wrote:
> > > On 2021-02-14 20:16:02 [+0100], David Runge wrote:
> > > > The current config can be found on the AUR [1].
> > >=20
> > > So this did make a difference.=20
> >=20
> > made _no_ difference. Sorry for the confusion.
>=20
> David, did you had a chance to test the patch?

Hey Sebastian,

sorry for the long delay! I got busy with other packaging/
infrastructure things and nearly forgot about this one.

I have now tested with 5.11.2-rt9 with and without your proposed patch.

Without the patch [1], the behavior is as before, only the parent device
node of the controller (/dev/fw0) is created, but the attached audio
interface is not recognized.

With the patch applied [2], things get a little more exciting, as now
both the parent and the child node are created (so both /dev/fw0 and
/dev/fw1 show up).

However, starting jackd on the interface leads to a zombification of the
jackd process and the process never exits:

```
Starting JACK server using fw-fireface800-48000.conf profile...
no message buffer overruns
no message buffer overruns
no message buffer overruns
jackdmp 1.9.17
Copyright 2001-2005 Paul Davis and others.
Copyright 2004-2016 Grame.
Copyright 2016-2021 Filipe Coelho.
jackdmp comes with ABSOLUTELY NO WARRANTY
This is free software, and you are welcome to redistribute it
under certain conditions; see the file COPYING for details
JACK server starting in realtime mode with priority 80
self-connect-mode is "Don't restrict self connect requests"
1615399142007837:  (ffado.cpp)[  92] ffado_streaming_init: libffado
2.4.4 built Nov 12 2020 17:24:24
jack@fw-fireface800-48000.service: start operation timed out.
Terminating.
jack@fw-fireface800-48000.service: State 'stop-sigterm' timed out.
Killing.
jack@fw-fireface800-48000.service: Killing process 1813 (jackd) with
signal SIGKILL.
jack@fw-fireface800-48000.service: Killing process 2021 (FW_ARMSTD) with
signal SIGKILL.
jack@fw-fireface800-48000.service: Processes still around after SIGKILL.
Ignoring.
jack@fw-fireface800-48000.service: State 'final-sigterm' timed out.
Killing.
jack@fw-fireface800-48000.service: Killing process 1813 (jackd) with
signal SIGKILL.
jack@fw-fireface800-48000.service: Processes still around after final
SIGKILL. Entering failed mode.
jack@fw-fireface800-48000.service: Failed with result 'timeout'.
jack@fw-fireface800-48000.service: Unit process 1813 (jackd) remains
running after unit stopped.
Failed to start JACK server using fw-fireface800-48000.conf profile.
```

If I can provide more info, please let me know!

Best,
David

[1] https://pkgbuild.com/~dvzrv/bugs/2021/03/linux-5.11.2-rt9-kernel.log
[2] https://pkgbuild.com/~dvzrv/bugs/2021/03/linux-5.11.2-rt9-kernel_firewi=
re_ohci_patch.log

--=20
https://sleepmap.de

--6msKiO1TDZjGbyAt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmBJDLkACgkQVMKPT/Wh
qUkwOQ//Uklo50mVmPxwAoqKv4lb47p5V8M74mGO8SmaH519nGWoeep43rL8V8sO
dvcRHTzTHHgCivdrgsxrDzKbrMy5FuQvJgMlypx0LQi6gjboyXYiVvcOCVXn+Q3U
hAnnt8g1AgR7UG9qcY0ehjsWu/hKlztQbZwR9by+WLOKhkFb2UGOHK2Ksbydhu6/
rOcenjb1X2r4+lB0IpBtyf270IlbCHD1WYG2RJR57MPcTRB/9aL+MdfGeCtucuZa
gsblnu1O2m71MlNjbF86D5Yt3gHX+GLxQl+d+cT61YncVqWUG9ikSkkDARL+Pwbn
TulhADSiZy8ddcQhS6hRm0uQSF/7RY05WSiSKn7EUY1nl8ig8+6KMUMqCmr1la/t
mdgcUx2pnM25VsbLHm+8Pt8nyJziU75ozlbgMEIn5tJpTO14ZEJej27KYVvHENsM
fQcpoiwYp61aFZvPlGUI4aLgCxbLarVGHfA8ZohthgpcjgY1X/4AhSFGFOxx6BG0
4YqO+cFzF1Q/AKfTtJ+IfMNBNcXoRjOYodTgZjrK49mdFE57765nBWS0CB0dUsNw
GjGqhk34BXOtEGNW+5eOL9RaSutohFjpZA+FwJgSkBDmweN0SIOBW6aoHjo+DcCL
/h4iCUdv2jQmqRGWcRn2zgHmTGrBCTR6HtGs5AFABfEfNRrgsEw=
=mDUN
-----END PGP SIGNATURE-----

--6msKiO1TDZjGbyAt--


--===============4278911297133557145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4278911297133557145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4278911297133557145==--

