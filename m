Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E68031234F
	for <lists+linux1394-devel@lfdr.de>; Sun,  7 Feb 2021 10:58:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l8gpz-000072-I8; Sun, 07 Feb 2021 09:58:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1l8gpy-00005x-5d
 for linux1394-devel@lists.sourceforge.net; Sun, 07 Feb 2021 09:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Fa6LkhsuSUs/5k0phnYfKa4IdSZSyzNXFUA6rfVoz0=; b=CXHs0y21EppRXqxIVlpm2f3vXF
 7vRPM6UZgARBmomG3sFlKij2bc45H6Upu8Fr7qdgYNFbUbtNq7HBroA2phqMBZ9MevPxTR1u5tDag
 zxm1QzxEbIsz+fkhu/3CMzUfQa1QGAK0bkoNn3CNQslhlt8wmb2zzkkAlMC+MeX4+HnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Fa6LkhsuSUs/5k0phnYfKa4IdSZSyzNXFUA6rfVoz0=; b=iONSqLni0dXToEB6SRvLU3vaEG
 QjNkFxBeUwSeEwJZyw2f+G3ZoV19OpQg8eyqLh3oU8dofHVtq0ry1FZhveEnEccGcZ/VmpmiGLfkn
 r8mZLYxgyjUYWuG9IzcBdVGqoSjNXbwbevrKVewZlBOx/FPN7cRQ/vdEE4g/TULsM5kM=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l8gpk-0007v6-8c
 for linux1394-devel@lists.sourceforge.net; Sun, 07 Feb 2021 09:58:35 +0000
Date: Sun, 7 Feb 2021 10:58:13 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YB+5tdIpbTfnDnIi@hmbx>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx>
Mime-Version: 1.0
In-Reply-To: <YB3TLNN39/XhUyUY@hmbx>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pkgbuild.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l8gpk-0007v6-8c
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
Content-Type: multipart/mixed; boundary="===============8192180879881424659=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============8192180879881424659==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6cICrVYnMwOEFd8g"
Content-Disposition: inline


--6cICrVYnMwOEFd8g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 7 Feb 2021 10:58:13 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-02-06 00:22:12 (+0100), David Runge wrote:
> On 2021-02-05 12:26:38 (+0100), Sebastian Andrzej Siewior wrote:
> > On 2021-02-01 09:34:41 [+0100], To David Runge wrote:
> > > + firewire maintainer
> > >=20
> > > On 2021-01-30 12:46:04 [+0100], David Runge wrote:
> > > > On 2021-01-29 18:04:14 (+0100), Sebastian Andrzej Siewior wrote:
> > > > > I don't see anything wrong. There is small difference in timing a=
nd
> > > > > then the RT version does not do a thing while !RT keeps reseting=
=E2=80=A6
> > > > > Could you try non-RT with the
> > > > > 	threadirqs
> > > > >=20
> > > > > option?
> > > >=20
> > > > Yes, (sorry for not including that earlier D:) that fails the same =
way
> > > > as the realtime kernel:
> > > > https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91-kernel_thread=
irqs.log
> > >=20
> > > Could be specific to the chip or the ohci driver. Either way, the pro=
blem
> > > are the threaded interrupts.
> >=20
> > David, could you please try a v5.10 kernel with threadirqs? I've been
> > just told that it works there on a ppc64 box.
>=20
> I have now tried with our vanilla 5.10.13 kernel, as I have issues
> getting 5.10.12-rt26 to boot at all on my machine (will try to
> investigate that tomorrow).

With 5.10.12-rt26 the controller still does not initialize at all
though (/dev/fw0 does not appear):
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.10.12-rt26-kernel.log

Best,
David

--=20
https://sleepmap.de

--6cICrVYnMwOEFd8g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmAfubUACgkQVMKPT/Wh
qUmVyQ/7B7Nk1LCykpTd4rrzSTmYYdSrNhQJWzs3PCJZd2PWN25OnDypsk422RJm
Hhi1iP7+Op+a2ZZqzJu5Zu+DJ3doHP1fzxGMzLre2nQotk9xitsLrr8QtCoyNAZa
ztdeQXlUNC5fe2C/86cXctkpgR9qjYYefbd2Y4AlYdpNDNf97xE78Tg5yJ1XTmKC
eH3ofkz4JAJfojhsWFQ5Z6wA5nOqcgVl29PmKvGmjS323lcllT5I8ajiGUtUc4/g
JwBcCNoxIYdpTxzKyPD8/JaOjTDkxpUzKmfVPCtXx78OlEkrEsRhLMm7xfX9JTG4
hjjDNCO3HQXO6JDAQJ8Zd3bU94R4n8/h7LF6Uje2nk6F/5qZ/8Bv1OFX0dJUJ9TV
qAjFiv2+bQPRdkwkEezlAxhmR2J1Qz0hwWADiIYVLl6m45PkRL97RnCJx2t3WaE1
Z5lMcg8oNPOkcr/L2cMvqk3wd5DblpzeObspiSF/19mOtmMYO3BnPQKTKAL9vDqw
olIPmCj46oViPSaQ7ttWw4Luc4R6BrLtw24LUrNgZZrNpUAd7xTI1QsCwNtFak6h
pXqd4hchepps9mgOxq4fatYLQNgbidY1XuF7WJ5AjqVkt93/Thvo6GU5xEVB3xG6
tfpP6KeD8zb5VanosxBr1FzWDzlFo7M1+566lADFK4MTmnuzC9I=
=dhh2
-----END PGP SIGNATURE-----

--6cICrVYnMwOEFd8g--


--===============8192180879881424659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8192180879881424659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8192180879881424659==--

