Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7EF3094F4
	for <lists+linux1394-devel@lfdr.de>; Sat, 30 Jan 2021 12:46:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l5oi2-0006bN-Bc; Sat, 30 Jan 2021 11:46:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1l5oi1-0006b8-Cr
 for linux1394-devel@lists.sourceforge.net; Sat, 30 Jan 2021 11:46:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CF0ubz0lejm9od8r9OwKIGfIzmBegx5jK3SF6qzBHII=; b=AvHEYFgcS1d5WhqnD2p36BX+WD
 lT9bs9wWsWZQTvaB8fX+aOoTjoufYzj3WguDizZG0F0JOlMuWAtEA7Zs8FYBbonsd/D3BYzIqvV8C
 +UWi+tT+u4uEiwUNd5Bun7HieelEV6S8l/7BtYjCBih/pcF5EXw8hANdM/iHb+Bq5Esg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CF0ubz0lejm9od8r9OwKIGfIzmBegx5jK3SF6qzBHII=; b=fRxU7WJCzZ3zaZ6t6SA08MKWeI
 HflfJ8Ldx7J6DXC4Vb9kieOM1boT2xkiJAwA+rWsikK9ISuBeELvIOASXv4v1UBeMADLnH7Z9TJ1f
 kBZjvPU9IXtxeFa32Uq2iz79OaUETpV6rufUiiKlHJX+RJR4IP0moctRNBlpP883wofA=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l5oho-0006q4-4p
 for linux1394-devel@lists.sourceforge.net; Sat, 30 Jan 2021 11:46:33 +0000
Date: Sat, 30 Jan 2021 12:46:04 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YBVG/PG7syFIUBno@hmbx>
References: <YAwPoaUZ1gTD5y+k@hmbx> <YBJZk9/77+E0TRk4@lx-t490>
 <YBMvmU+kp11f7+wF@hmbx>
 <20210129170414.ugrlb6hpcnbiqqbf@linutronix.de>
Mime-Version: 1.0
In-Reply-To: <20210129170414.ugrlb6hpcnbiqqbf@linutronix.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1l5oho-0006q4-4p
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
Content-Type: multipart/mixed; boundary="===============4069243504452867823=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4069243504452867823==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1CfPGX6UjLI+Mcey"
Content-Disposition: inline


--1CfPGX6UjLI+Mcey
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 Jan 2021 12:46:04 +0100
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Ahmed S. Darwish" <a.darwish@linutronix.de>,
	linux-rt-users@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-01-29 18:04:14 (+0100), Sebastian Andrzej Siewior wrote:
> I don't see anything wrong. There is small difference in timing and
> then the RT version does not do a thing while !RT keeps reseting=E2=80=A6
> Could you try non-RT with the
> 	threadirqs
>=20
> option?

Yes, (sorry for not including that earlier D:) that fails the same way
as the realtime kernel:
https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.4.91-kernel_threadirqs.log

Best,

David

--=20
https://sleepmap.de

--1CfPGX6UjLI+Mcey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmAVRvwACgkQVMKPT/Wh
qUn7nxAAvHbMZEth1i2weR6EeCEbOesl2La2Ntv8F4nthS14shTUcXR3KnASAVDk
Cn4G/YDs0lXApguu8wARq67kkkt/WY733kdCqom366fJuSlB216McXDIYFYrcp69
7bhWTQ6f0wcK5Z2AI5E5oBAMvxWrWYlNIvYTlOZIpsHjoWY53fTzpV1mfiw92D0i
Bu0SNgz/h1xl/GlKf0ytTcZOmqEa0qdEx7y0PrCEyql3TCnuXpTz4hUEvUTBFWqd
EcpLaN5i0pOkJKEc7eKBqrwNQbsIvlAGWVTSXStfpVyqYsMrbPkKwAwbZtGHixDE
XCsaQuz8PNNnNGEPblMyKgNFT6d3iXWkBg535ma+TYgxJ/tVkWvE5nLDtrzziN7v
8ra6zZCANF88Z8wsd1Y3Ed6x1Lg4xdl7KmB4Ofzcj6nAZWccUbL8FHkBqox+6DTc
4oREoHqBQ7hmcucVa/rEUWYH1RHRwPmztHathcz+0kfNNPuiT6OGvdOAup3lpZ1x
5YBWErgwwdXag/wn72y13VNKyc5cI6R8+cP9TbWMowrzYO0v0NorwnB0tb2QJM+I
sP2MzrvNKPTUVoJazXa+nKpkx9QNSZM5CowzgfIV9KTvSLc8ZJX3PPx4mv141brW
32tmHk9r8kD0pUuwgPv0OD1Xo13dLYBOA3AIHg27qPHZr4x7NJ0=
=nYJA
-----END PGP SIGNATURE-----

--1CfPGX6UjLI+Mcey--


--===============4069243504452867823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4069243504452867823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4069243504452867823==--

