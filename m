Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD0407F90
	for <lists+linux1394-devel@lfdr.de>; Sun, 12 Sep 2021 20:54:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mPUc5-0005du-SQ; Sun, 12 Sep 2021 18:54:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dave@sleepmap.de>) id 1mPUc3-0005dc-Od
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:53:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXT7TgyVYklGp1X57r07146CThojo/bDHHQ8gASebeE=; b=Q3cuFfxX0ZMAkKMw1of0nGPmVp
 eiuhDG+oU4KOwDXgsd9QxNV5BiTvp0s2MZhhN03XWtoEcIaWqWToNECd+7oquDxeU98xAl4sSoe9G
 B68UTXJEo08oE+pKDR6PRQmTw7GFSQCgVYBVruwwuo3s8zh65FfhGTQdwVOugzAb11DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JXT7TgyVYklGp1X57r07146CThojo/bDHHQ8gASebeE=; b=FV4K4Jzy+BS2NF1ThwLoR8y5M1
 gOAedGNgWdWTn49WvbrPwydbrS1sZnkOGe3eca1JcbSEeMah0dj4EF+QYDa9aFEp+Jkvcz1WFX/TL
 AgORprAK0By8g86kjY7eV9WSuxJNRAM9XAcAvHw0XThp3yYFqytFyPSYU70PDstsu2No=;
Received: from sleepmap.de ([85.10.206.218] helo=mail.sleepmap.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPUc1-0002OL-M5
 for linux1394-devel@lists.sourceforge.net; Sun, 12 Sep 2021 18:53:59 +0000
Date: Sun, 12 Sep 2021 20:53:50 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YT5MvpE5yrqj/5WI@hmbx>
References: <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation>
 <20210910115541.jjf3fovv4v3etvde@linutronix.de>
 <YTx7EVV5vFuhKM5i@workstation>
Mime-Version: 1.0
In-Reply-To: <YTx7EVV5vFuhKM5i@workstation>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2021-09-11 18:46:57 (+0900), Takashi Sakamoto wrote: >
 Hi, > > On Fri, Sep 10, 2021 at 01:55:41PM +0200, Sebastian Andrzej Siewior
 wrote: > > On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote: [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sleepmap.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mPUc1-0002OL-M5
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
Content-Type: multipart/mixed; boundary="===============4725603148319281449=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4725603148319281449==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y5AP5xLDbQcoVBL2"
Content-Disposition: inline


--Y5AP5xLDbQcoVBL2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Sep 2021 20:53:50 +0200
From: David Runge <dave@sleepmap.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux1394-devel@lists.sourceforge.net,
	linux-rt-users@vger.kernel.org,
	"Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]

On 2021-09-11 18:46:57 (+0900), Takashi Sakamoto wrote:
> Hi,
>=20
> On Fri, Sep 10, 2021 at 01:55:41PM +0200, Sebastian Andrzej Siewior wrote:
> > On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote:
> > > Hi,
> > Hi,
> >=20
> > > According to the log, the task of 'pipewire-media-:2554' is blocked d=
uring
> > > 122 seconds by call of 'wait_for_completion()' in code of
> > > 'fw_run_transaction()'. This is odd in two points of transaction serv=
ice
> > > programmed in Linux FireWire subsystem:
> > >=20
> > > 1. The process context should be awakened by softIRQ context, which s=
hould
> > >    be scheduled by hwIRQ context for hardware interrupt of OHCI 1394
> > >    controller.
> > > 2. Even if the softIRQ context is not invoked, the process context
> > >    should be awakened by wheel timer context, which is scheduled to f=
inish
> > >    the transaction several jiffies later (originally prepared for the=
 case
> > >    of split-transaction). In the case, the result of transaction is
> > >    'RCODE_CANCELLED'.
> >=20
> >=20
> > Side note: David is using PREEMPT_RT and his problem can be reduced to
> > plain vanilla with `threadirqs' boot option. Back in February I sent him
> > a patch [0] which inlines the tasklet job as I assumed it is not good
> > reset the IRQ-event in the tasklet/workqueue. It seemed to improve the
> > situtation as it recognized the device attached to the bus but ended
> > then in the same timeout behaviour as now.
> >=20
> > [0] https://https://lkml.kernel.org/r/.kernel.org/all/20210218083849.ii=
tcrhdgv2oajfhv@linutronix.de/
>=20
> Thanks for the side note, and I apologize to follow the thread partially,
> not entire.
>=20
> Furthermore, I'd like to correct my misunderstanding about the 2nd point
> since the timer wheel context is scheduled only when the peer of
> transaction transfer ack_pending for the request subaction. Without the
> hwIRQ context, the task is blocked ever anyway.

Thanks at any rate to look into this! It is much appreciated!

Is there anything further I can try to debug this using threadirqs? It
would be really amazing to be able to use this device on PREEMPT_RT
again (especially given that now the ALSA driver has improved so
drastically). :)

Best,
David

--=20
https://sleepmap.de

--Y5AP5xLDbQcoVBL2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEkb2IFf4AQPp/9daHVMKPT/WhqUkFAmE+TL4ACgkQVMKPT/Wh
qUnHZxAAhKANIdfxcbcADub6ZgZF2cp71omy2DXAQdNUCxO3iebpo6ijrSkXZkkQ
BX05eZAFBSVDVaXvP3Gf0078f8zT6sHlxTDipEA/KKxzrB3vBwiVWcddurTtVCHs
qrswqj+RfyjeqUHcc9S6Qs1c3YhlffbcwjYyR2/V9px5B5SUDRCKp4pKpDLcZEg1
CfdzTJJCbixir9sry6L26hx0XTl/5J9dFBUZiOCof2MMJ2QW6AIS+wAoPT6PWk4a
wXsITRZc5P8UhujVCxPLuxGJvL6T8I8feH8VrqbQNzSkNLXRI/8K7lAm/l+5dVHz
EPt6IpH1rsdLPm+OS64o/e0qKDgIdQQets71oLnT4/EF6gDliDxHUYDHRoJ92+nI
/oSmq1V8fiANtDXcxrXwzFQddAawco/lH76sFo1656EBRCQ94BnWaX2qlZ2XrVYB
VQrRpGcmkbeY50Z7IN1b5922B2hR5WRLh6xVjD9/JJEfX8D2m+3l8hRzoa5iERhv
a3nOqQi4Jn2E//MqcsJHVA0QX4Us402ekjcwxAOBtmF/aPaUIb1eICk3BlbdXV9z
Q4wtvmqQR+pWd62hiJCH8biGTomUaCcq9xLQwVfJacbZbTXMPlHxVPyoqymVA9Ob
40lRdMmH+WvhZLZ1Y3OhtaMFrZGpx/XgEg90n5aKZqzgUgiNht8=
=S4+S
-----END PGP SIGNATURE-----

--Y5AP5xLDbQcoVBL2--


--===============4725603148319281449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4725603148319281449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4725603148319281449==--

