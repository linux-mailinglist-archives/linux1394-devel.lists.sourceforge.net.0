Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89018407F7A
	for <lists+linux1394-devel@lfdr.de>; Sun, 12 Sep 2021 20:45:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPUTf-00073S-Ov; Sun, 12 Sep 2021 18:45:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave@sleepmap.de>) id 1mPUTd-00073C-Rd
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2N1KcxbHKe7iSJOapX1vFO+ig14ouM418qSS+4/WjDo=; b=Pm8tLaB5Z5a677nwcuqb9zfuhG
 F2goDoK33s8cty+jXZinWNpEFf2yuD+yCuiarO6NGO5MxK6EIMU3n5cpUsYqxkIbh/VqBAR8c7krg
 oEO2pJrqalSg4oLCHSq0qZT24bN3DtlktR4ZVvSd3y5r0sCLpuQH2Zv2znuAWqPdeVGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2N1KcxbHKe7iSJOapX1vFO+ig14ouM418qSS+4/WjDo=; b=hepAgbIKchHuIm9esJZQW+rvXA
 pHfuzjVlq7Eai+TsIPWWXF7H3ISZUsAhxyDgdzWfBWk5o4EI+tfYiOM6LpDdlvloFqK5zhDPkiZUu
 PyzAit5jCL8h1MgyNGqkJiIeTWoc1DG35o41uFjbe0KLLuAXZLczPmB5pTYIyVobtv48=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPUTa-00021G-0A
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:45:17 +0000
Date: Sun, 12 Sep 2021 20:44:56 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YT5KqKpm1QvyFHAb@hmbx>
References: <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation> <YTjzKftQmFtPLYUR@hmbx>
 <YTlZTvb6B3O2as+q@workstation>
Mime-Version: 1.0
In-Reply-To: <YTlZTvb6B3O2as+q@workstation>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2021-09-09 09:46:06 (+0900), Takashi Sakamoto wrote: >
 On Wed, Sep 08, 2021 at 07:30:14PM +0200, David Runge wrote: > > I am using
 '-1' (all) in the 2nd link in my previous mail. It appears to > > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mPUTa-00021G-0A
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
Content-Type: multipart/mixed; boundary="===============2731253099177702704=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============2731253099177702704==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ZXnbIQ7ayhysz0I"
Content-Disposition: inline


--7ZXnbIQ7ayhysz0I
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Sep 2021 20:44:56 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Kristian Hoegsberg <krh@bitplanet.net>,
	linux1394-devel@lists.sourceforge.net,
	linux-rt-users@vger.kernel.org,
	"Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-09-09 09:46:06 (+0900), Takashi Sakamoto wrote:
> On Wed, Sep 08, 2021 at 07:30:14PM +0200, David Runge wrote:
> > I am using '-1' (all) in the 2nd link in my previous mail. It appears to
> > not show a different output in the kernel logs from when I set it to '5'
> > though. There seems to be something wrong...
> > I'm adding the options in a .conf file below /etc/modprobe.d/, e.g.:
> >=20
> > ```
> > options firewire-ohci debug=3D5
> > ```
> >=20
> > The only output I get from that is:
> >=20
> > ```
> > firewire_ohci 0000:05:00.0: enabling device (0000 -> 0002)
> > firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 8 IR + 8=
 IT contexts, quirks 0x2
> > firewire_core 0000:05:00.0: created device fw0: GUID 7856341278563412, =
S800
> > firewire_ohci 0000:05:00.0: isochronous cycle inconsistent
> > firewire_core 0000:05:00.0: created device fw1: GUID 000a3500ada83262, =
S400
> > firewire_core 0000:05:00.0: phy config: new root=3Dffc0, gap_count=3D5
> > ```
>=20
> Before printing 'created device fw1', Linux FireWire subsystem already
> initiates asynchronous transactions to retrieve content of configuration
> ROM located in 0x'ffff'f000'0400 of node address space. If you can see
> no transaction record but see the print, it means to fail configuration
> of the parameter of firewire-ohci module.
>=20
> I think your system uses initramfs. Any node for storage function in
> IEEE 1394 bus is available as initial boot disk, thus it's reasonable
> that the designer of your initramfs puts firewire-ohci/firewire-core
> modules into it. In the case, we can not configure module by
> '/etc/modprobe.d/*' since the modules are already loaded before mounting
> root file system.
>=20
> I think the design of initramfs differs depending on distribution, thus
> you need to find instruction for the way to configure module parameter
> by yourself.
>=20
> Instead, I suggest you to configure the module via sysfs after booting,
> like:
>=20
> ```
> # echo 5 > /sys/module/firewire_ohci/parameters/debug
> ```

I have played around with adding the configuration and the module
explicitly to the initramfs (we're using mkinitcpio on Arch Linux).
However, this did not change anything in the output provided by
journalctl [1].

A boot with the vanilla 5.14.2 (no threadirqs) and debug=3D-1 set for
firewire-ohci logs everything successfully [2].

My assumption is that the debug parameter is either not considered or
the module hangs far before there's any further output when on linux-rt.


Unrelated sidenote: I am currently booted into vanilla 5.14.2 (no
threadirqs) and the device works well using pipewire and the ALSA driver
snd-fireface.
Good job to everyone involved! I'm very happy about the results! \o/

Best,
David

[1] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-fire=
wire-ohci-debug--1-initramfs-kernel.log
[2] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.2.arch1-firewire-oh=
ci-debug--1-initramfs-kernel.log

--=20
https://sleepmap.de

--7ZXnbIQ7ayhysz0I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmE+SqgACgkQVMKPT/Wh
qUm4NQ/9FTLRychics9FSUnMxf/6ZHHj6Ko7wm8TnLA+KQGi/u0diPVx+Te7fCR1
x2kACGZJXBmVuIwchWvseVcaX2nvhkHRc1DcY2DwTLbMkkvSI1ngULH3UTSUwgVX
NSamkSSff+mdVK/aWowURtBJiNthlzk3IiODGKRAixWAG7OEBj8Qu6VJ916oIk0q
MigX3/tdqglPNu0uAtsrylSpcpdJ4EFgCxnEFCgNxBUHSqXQjaxPsOY6GrK9tU4Y
rCz91+WjpaCKqXFknpzHtPRFhYDuprNXWlMICMhSWrf2gLCIaLyo9DGFQiN1pkz4
SL11AHB22WgthDRmCBzKCpfCRMMPLcUC2ayX8cMh+FGkCjWskYBG+KVr61NEyIEe
cZoBQ5i97iNWOB7vIbfbMfRjsw/FyiTI6bOSxmBl0NqU3Aa+fjZgPIIepM7G/jdt
L4SbsvSjWwydy90Bz9YTIur+hSN7k/2Aub0gI1D4UHF2KqBRREfd4iqVUldPBOg+
TTrLPmvlNi2ELFVDVz+rjljddLpprar8QRsOJMxTreAi2YCSZCMH6CN34VdJ2dbO
jQy8LSBUhR61BiNttJd9iTKEAh1ILOb7xxIkzh06kTgKM8HcLRo2aHqyRWvTelMh
551jctAgffRrSjWovwG1sqLS7oaD52owPVkjgrxLqFYPCmCezss=
=PdJv
-----END PGP SIGNATURE-----

--7ZXnbIQ7ayhysz0I--


--===============2731253099177702704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2731253099177702704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2731253099177702704==--

