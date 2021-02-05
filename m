Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E0E3116FB
	for <lists+linux1394-devel@lfdr.de>; Sat,  6 Feb 2021 00:22:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l8AR0-0003mv-EO; Fri, 05 Feb 2021 23:22:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1l8AQz-0003mn-4M
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Feb 2021 23:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m/xlretD1S/1KKwvbHstI72sIIIdso2AYmRLgEL6IP4=; b=ZAsxrc9bqACfAlbMZyOA7VaftF
 d6p1iy+xCBa2Fnyy3SlrLEcjZM439Xw76IhntXITERwDtSZjptdqj670AT3IYE3gA2HDvngu2Mku0
 yLlN/AGfXJwxKnvedykhbYxEUD0H5VeZdszICeQ91Hb+jpjIO81aXrWiS015Y0bmFwVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m/xlretD1S/1KKwvbHstI72sIIIdso2AYmRLgEL6IP4=; b=ZTfM2oO+0sL4YviNC4VzZVs2mc
 RU6y3stwARQAMBHClUgW5aGb9xA77D8M5dHxsm0a5jEXTpCd7ubCOfCabG7UJlvgbTm4GgPUcC9EJ
 hdm66VJRwOBWMOx+XtMreEq75sXzzQiXctoA8wQFfef03o+wg9WO7d2g8U83BFIGfCec=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l8AQo-0092WZ-GT
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Feb 2021 23:22:41 +0000
Date: Sat, 6 Feb 2021 00:22:12 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YB3TLNN39/XhUyUY@hmbx>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
Mime-Version: 1.0
In-Reply-To: <20210205112638.xuduvuefy3auycht@linutronix.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l8AQo-0092WZ-GT
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
Content-Type: multipart/mixed; boundary="===============9178735238973702409=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============9178735238973702409==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0UeuAIkDJI+OXuHw"
Content-Disposition: inline


--0UeuAIkDJI+OXuHw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 6 Feb 2021 00:22:12 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-02-05 12:26:38 (+0100), Sebastian Andrzej Siewior wrote:
> On 2021-02-01 09:34:41 [+0100], To David Runge wrote:
> > + firewire maintainer
> >=20
> > On 2021-01-30 12:46:04 [+0100], David Runge wrote:
> > > On 2021-01-29 18:04:14 (+0100), Sebastian Andrzej Siewior wrote:
> > > > I don't see anything wrong. There is small difference in timing and
> > > > then the RT version does not do a thing while !RT keeps reseting=E2=
=80=A6
> > > > Could you try non-RT with the
> > > > 	threadirqs
> > > >=20
> > > > option?
> > >=20
> > > Yes, (sorry for not including that earlier D:) that fails the same way
> > > as the realtime kernel:
> > > https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91-kernel_threadir=
qs.log
> >=20
> > Could be specific to the chip or the ohci driver. Either way, the probl=
em
> > are the threaded interrupts.
>=20
> David, could you please try a v5.10 kernel with threadirqs? I've been
> just told that it works there on a ppc64 box.

I have now tried with our vanilla 5.10.13 kernel, as I have issues
getting 5.10.12-rt26 to boot at all on my machine (will try to
investigate that tomorrow).

On 5.10.13 with threadirqs the controller is indeed initialized again
(/dev/fw0 appears).
However, no connected device is detected (i.e. /dev/fw1 does not
appear).

Here are the kernel logs with "firewire-ohci debug=3D-1":
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.10.13.arch1_threadirqs-ker=
nel.log

Thanks for the follow-up!

Best,
David

--=20
https://sleepmap.de

--0UeuAIkDJI+OXuHw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmAd0yQACgkQVMKPT/Wh
qUl4qxAAvlMpTTx1UwI+TQdWOPbRIWPgWsTd8mQ6a+DWuFyVihS5dyXuvBiXQQyF
YHCMoUxQunGTWpejLiMsImkvG+WGxp8vHTgH8Xp52ODUXq0kslJwiSD2esrSJ6a/
+AG6SObGgKpv1zUGoy+g/BIQb+a4xSPHrlq6W6qAv79F35zGnKfy3bUeagobwbM2
DfzdFtMvipiZvWRCWDKHmelCHM/ZsTgvbZAtFITRbVpEo2rjmAhZZRuOPMs8cCnQ
GRW1zQpa7RmOqkO/vfRy//3j5i13AJ0zMKhOLtpsRMct8GAsgvUuaZ1jZ6tQXb8/
UxFXzItJVRt/MuGjnDFwUeIzDamEt20tbpsf/MMUVMiuEnjvx2/iBehfadzAZ/sz
wAHbbSqG8hzxtkIDiAyQB0C6+LozA/4yYuujmgba1fckOMvz7L9LBuIa1bXU21jQ
ZLLEmVgvCKUSpbil5uiKWtG6X5Ph9DgHbu3CIzy09fAwUCFXIGKIT2V1i8hm8od9
EF4pyIeK1d95FmwBDKuSGVcswqInAB4acMzT4VEMvBNyjl2yEaE2kS/eSV3QC3n8
1mjJ3pK/18+IAzFVFgxcT8Y9uaGLIFiN5e6DzL539psgg1mL7Seqe2y5AFjKxz1a
qxKQQ1rj1wGW3MepvYJKw9MceHLn0GUD1MTXrho8SMQu+pLZCu4=
=6AIq
-----END PGP SIGNATURE-----

--0UeuAIkDJI+OXuHw--


--===============9178735238973702409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9178735238973702409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============9178735238973702409==--

