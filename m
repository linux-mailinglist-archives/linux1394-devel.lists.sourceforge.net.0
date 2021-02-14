Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8012431B22F
	for <lists+linux1394-devel@lfdr.de>; Sun, 14 Feb 2021 20:16:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lBMsd-0003ef-SI; Sun, 14 Feb 2021 19:16:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1lBMsc-0003eQ-Ep
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Feb 2021 19:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JzVQMudx3paD1jsyldMG5S1gCVvP289RQFM7YnjkXYE=; b=HDzlJAYUIqpPGlaERrBTjLOoHc
 S2p4r9PnGWSUAkU30Wo4VQ8yTT5ddQfqwSQ0dsNSCd/fllVS7bClD1EFwTEfxEUxNDPLwBuBNa8Dq
 CgdyLCHKslxPH9QA8qZl9ng8QnpgORcKnLZzzS1a+A9E4y93sjynuViTTVcZcPG24tl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JzVQMudx3paD1jsyldMG5S1gCVvP289RQFM7YnjkXYE=; b=FuN0ZfnUg63RA/Qsls2V5VlM1/
 RLwC47djGGePb6SJ+iHj7pEGLbyx5aBlvAQa9Ehad58F+ic/FUfAZMx5B9a3xkUJVNjD2KGm9ZU3H
 ewRL18DrZl8+1tEF2Kz7BG0jYI8J1oudQPDpt6GSw12ts2gtHsnkORooJoUtbps3KkUI=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lBMsP-008n8J-Fe
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Feb 2021 19:16:26 +0000
Date: Sun, 14 Feb 2021 20:16:02 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YCl28sXo7LEyCK8y@hmbx>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
Mime-Version: 1.0
In-Reply-To: <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBMsP-008n8J-Fe
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
Content-Type: multipart/mixed; boundary="===============7737251282494862155=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============7737251282494862155==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Mqi9MYJz3uQEOHHo"
Content-Disposition: inline


--Mqi9MYJz3uQEOHHo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Feb 2021 20:16:02 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-02-08 10:19:40 (+0100), Sebastian Andrzej Siewior wrote:
> On 2021-02-07 10:58:13 [+0100], David Runge wrote:
> > With 5.10.12-rt26 the controller still does not initialize at all
> > though (/dev/fw0 does not appear):
> > https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.10.12-rt26-kernel.log
>=20
> So it is either config or chipset specific. Did you posted a link to
> your .config?

The current config can be found on the AUR [1].

The equivalent mainline kernel config (note, that it states it is for
5.10.13, but is actually used for 5.10.14 as well) where initialization
of the controller works (but the initialization of a connected device
does not, when using threadirqs) is here [2].

[1] https://aur.archlinux.org/cgit/aur.git/tree/config?h=3Dlinux-rt
[2] https://github.com/archlinux/svntogit-packages/blob/37abf96cac628b7f516=
c266a8c0288671ed96a2a/trunk/config

--=20
https://sleepmap.de

--Mqi9MYJz3uQEOHHo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmApdvIACgkQVMKPT/Wh
qUnwEQ//bOuHmMpCFozboLHry/nVr2hmB4jYIoY/mZCbLsb7GRo5I9yb3za8wpx5
LTElB5oBh0Lseb8PgIBxyertDAo0Axg2ZdMaURg08C4ZMTCtPe6gkh8EVzvoCBH4
0R0g0LRnAR8/D8khTANeZKA2BoSCIjMBuLZ1iGoX5aWn8hOqImvYk2CXIftVvtM6
rvtzxp9cKEahBsPNvJvGgKUpwEAzEj4eMvJb7GPnp95ZeDyyLfji61NXZpsVhB2x
9xO/3mAB0tXQbgszuXQB2F+rRReciVkVVvGm/D66CzMJlmNGqgsAuR8IjGblOtga
nBYP1SeDMrVU/tbXVb99whF+dGmD/8i208lLEJyl7QQy/xmDPEXzp+qfqBHbN4kZ
OA4A6P/RqTksYwPGEb+Eq9r5O6lo5a4ZAqn7xr9PaVhCWmmwvDnE9nTEX88P+/Xb
bKyVKHeX6271XX3xtt/N6rhQDKEAfQNKvM9KsdZYU55X/QwkecOsGqpbZvGXprlt
5idIbnwYaaYMzGlmRCNZvBb5gIn5ssjV2pAQIK0ZVd2FgswJirFD9tb3xKEY+iEc
scKJsytRUnT1WUDTqdBo2GwXnUIroYHXnIvJq7wWhC1yxv+PlebWU/zzDVeJkqZY
sz6uC2nY4CswTlU5x0t+IgeIijFTxk/stO6SierBZ/oIWFQRIwc=
=2WFy
-----END PGP SIGNATURE-----

--Mqi9MYJz3uQEOHHo--


--===============7737251282494862155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7737251282494862155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7737251282494862155==--

