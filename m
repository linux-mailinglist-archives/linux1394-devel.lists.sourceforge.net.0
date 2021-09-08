Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCEA403E5B
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Sep 2021 19:30:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mO1P7-00032M-4G; Wed, 08 Sep 2021 17:30:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1mO1P5-000320-AS
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Sep 2021 17:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/DfJzIHje0DmgI0ZIvpR9bciJm/gZg+l1qszbdZTcG8=; b=B9NUZPvUZXXTfUP3PQIJjxHQ9z
 +Baet6RCYk1kKKCv2X5j+Zi2VLzwcY6xafTwfYfGLdEnO2fljvF1zMWykgGlYUsOGvqnWF/anZ48M
 vvOtYbfbYU91u4vQgu7Yygln9zG8VFDUMpNUM46MUgBWBjNgPxzd5KowTergMA6/RJgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/DfJzIHje0DmgI0ZIvpR9bciJm/gZg+l1qszbdZTcG8=; b=mmtU0EswofxGfyy2FiRxdNHH8I
 bcoji/jNc15w72w902bwrVh2jNM9cWk31YVpS9fCAKckDIuYnah2XY+c9sMtyyxLuMfLQ25fcZQzy
 UlSYusM9sQhPFnChP8fDEsjmc0+ib4bBmd5JVi+aGApdTpTy9bZmOw7LdHls49x3eSZE=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mO1P2-0002sl-9l
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Sep 2021 17:30:31 +0000
Date: Wed, 8 Sep 2021 19:30:14 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YTjzKftQmFtPLYUR@hmbx>
References: <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation>
Mime-Version: 1.0
In-Reply-To: <YTgdLkTs7wEmj8fh@workstation>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mO1P2-0002sl-9l
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
Content-Type: multipart/mixed; boundary="===============8367834013029807433=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============8367834013029807433==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7whbo5xfvtqAAJgT"
Content-Disposition: inline


--7whbo5xfvtqAAJgT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Sep 2021 19:30:14 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Kristian Hoegsberg <krh@bitplanet.net>,
	linux1394-devel@lists.sourceforge.net,
	linux-rt-users@vger.kernel.org,
	"Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

Hi Takashi,

thanks for the prompt and detailed response!

Unfortunately I lack the knowledge about the driver and its inner
workings to be able to provide a patch for this issue myself.
If anyone reading this who is able to suggest a fix, I'd be happy to
test it!

On 2021-09-08 11:17:18 (+0900), Takashi Sakamoto wrote:
> I guess we have issue in the softIRQ context or timer wheel context
> instead of hwIRQ context, if the OHCI 1394 controller you use has
> no quirk (I suggest you to give information about the controller).
>=20
> I'd like you to check it. The firewire-ohci module has 'debug' parameter.
>=20
> ``
> $ modinfo firewire-ohci
> ...
> parm:           debug:Verbose logging (default =3D 0, AT/AR events =3D 1,=
 self-IDs =3D 2, IRQs =3D 4, busReset events =3D 8, or a combination, or al=
l =3D -1) (int)
> ``

I am using '-1' (all) in the 2nd link in my previous mail. It appears to
not show a different output in the kernel logs from when I set it to '5'
though. There seems to be something wrong...
I'm adding the options in a .conf file below /etc/modprobe.d/, e.g.:

```
options firewire-ohci debug=3D5
```

The only output I get from that is:

```
firewire_ohci 0000:05:00.0: enabling device (0000 -> 0002)
firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT =
contexts, quirks 0x2
firewire_core 0000:05:00.0: created device fw0: GUID 7856341278563412, S800
firewire_ohci 0000:05:00.0: isochronous cycle inconsistent
firewire_core 0000:05:00.0: created device fw1: GUID 000a3500ada83262, S400
firewire_core 0000:05:00.0: phy config: new root=3Dffc0, gap_count=3D5
```

This is with starting with the audio interface connected and on. I have
to switch it off and on again to get recognized, but then the driver
crashes (full kernel log [1])

[1] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-fire=
wire-ohci-debug-kernel.log

Best,
David

--=20
https://sleepmap.de

--7whbo5xfvtqAAJgT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmE48yYACgkQVMKPT/Wh
qUmGNBAAkoh52BI9hO/mESSlPDS7lEiTzI/UWZruXfRft/f5odfm59EqwVWdQr79
tshPKsvdBYKeavsvQoGVG8SUmqqxKuyBFEB8a6/qF2K4lspUGSRDJVhYGE3HwFCC
o2OVE0RtObn3CT7ps38l9Zwk7oDKTxxG+8O03mfDMpS2OlwhkBMt/QpKd20G6HEg
N8QeEYFjnGoUJfahEST8Ew4lFkWJbxQKXM/DnqtW+V/DkVrhzZHyGA4UKLWO0tu3
+fmskzxYx3O8Cm3s7ONi/FaNJorSC8wd9aHq1O9qId29DeaxY3F8ZtOlmQgoUhCm
cOffP3rOJk2ZNKRR7Ev7tL7VNtkzZYyKipKhlPurAUwY7DnwnPGgUYcZiObGGeT4
ZqbLLR0omLvRJDFAKq+5+a70611QEHJ5FJhppnUMJotduWSZJAzbO7uTwuFBijLu
RW2mQsFugoYONEyOpkrml4HKQCiOvh5rviFBsS109W44BYItkOekoMdM1jSmijK/
NxeqbdadgluUbnTHHVQW6wvxdyVEzvP2ll5eYm4YqEqINEkR79lmg73TkK63V9oz
n1wQrXFOeylEmd6Y0M2xdX9EgbwulZWmGQkCbBVd+yihl/PfRzXZfRzt44WTJu8y
5/zALb61bngeV3g/jYMcm64zGjeGuIqBdbnew9OVALYGTNGkHNw=
=PJBS
-----END PGP SIGNATURE-----

--7whbo5xfvtqAAJgT--


--===============8367834013029807433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8367834013029807433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8367834013029807433==--

