Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D85FAE179B
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jun 2025 11:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:References:In-Reply-To:Subject:To:Date:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kR6DkU1Dt8QXNfWn0CDrQIgVVbJf9x88DRHSaphLiA=; b=PFz24DOdpFX+wsDSrwt2plM2e+
	3h1X308occJCs6waQ5k7J9PmodOXzEAG4HqQGvRinVbIxlPD33Rt2wBktIXdpNR5rKRWq+AALDWbO
	0+4QyN2Y3EVnLy9aVkMYumkvW7AOmzmSvxer7PIaNfel+xGoeONI6S0tA2PHtzu+MQvA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uSY7T-00045o-OO;
	Fri, 20 Jun 2025 09:33:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1uSY7S-00045h-69
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 09:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yZFMlp1BnwpMsvPpU5KGaMrbBsSbt5vDmvExScZp1Fk=; b=QRV/wbtN8x3j8VRZI/coh+WZdG
 cc0qGUKAZiLuNfN4mMM8uQE8ZON4zbxFvTso2jYaBGPEDIgA7v+kxCHagajFxomY7JfS46C+g8a6Z
 P+brZKjT/Knf0oecWyEEUlmoHCFY5UVM7hURimCfFMtgwSPIPiH22uZLjbQlCKMzO2h8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yZFMlp1BnwpMsvPpU5KGaMrbBsSbt5vDmvExScZp1Fk=; b=ZE0PpV9ZjamjJ0YPmobLN3Alxz
 mUwP/CRM5HRyHfs26AEn4KybY2ljfbByyCTciGAS2NyUTi5asyy5WskA2/2LL5zjgvsGEKimBqeyi
 MN5Y9SXRakQeNgnnTbBuaN2FnkNW3kIEyuGf8x8JRjj3JdHmG4aAt3qHU6T/Pqt/h2hw=;
Received: from latitanza.investici.org ([82.94.249.234])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSY7R-0002S4-4P for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 09:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1750411977;
 bh=yZFMlp1BnwpMsvPpU5KGaMrbBsSbt5vDmvExScZp1Fk=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=FISqScxLIvrqqbTXMHLeC5vRHR7lkpELgML1WkjxAvNpmdlnkTd8hpjYvfQDbuWpd
 B4G/68L0AowdnyYWJvsjAcllyrMfJmkXKhMA3qd3IaVaxuC1/KB3WKfPBiJ4VATGW5
 P9m4fyDEyqW3CNVDw3BUWxugd64MfALj5wtcwlwg=
Received: from mx3.investici.org (unknown [127.0.0.1])
 by latitanza.investici.org (Postfix) with ESMTP id 4bNshn6FLYzGpBk;
 Fri, 20 Jun 2025 09:32:57 +0000 (UTC)
Received: from [82.94.249.234] (mx3.investici.org [82.94.249.234])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4bNshn4fZvzGpBb; Fri, 20 Jun 2025 09:32:57 +0000 (UTC)
Date: Fri, 20 Jun 2025 09:32:57 +0000
To: linux1394-devel@lists.sourceforge.net, Jonathan Woithe <jwoithe@just42.net>
Subject: Re: Possible regression with the FW643 chipset
In-Reply-To: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
References: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
Message-ID: <42E4440A-11E8-4BD5-B27F-6FB0CBEFC1C8@paranoici.org>
MIME-Version: 1.0
Autocrypt: addr=areyouloco@paranoici.org; prefer-encrypt=mutual; keydata=
 mDMEaA4TfBYJKwYBBAHaRw8BAQdA1Lu1FLVEpzdciB7kiHZ0gV3EXeLkhmVC7I5rCr6aaQq0JkFy
 ZVlvdUxvY28/IDxhcmV5b3Vsb2NvQHBhcmFub2ljaS5vcmc+iHIEExYIABoECwkIBwIVCAIWAQIZ
 AQWCaA4TfAKeAQKbAwAKCRDX3bQSIXXRBtUyAQDp2BxmuW0ywJWS9zB6Qx7SCKqVzVQ0IrH+RPzn
 VMONggD+L4G6IuGqWX9gKoIGteK78xyyO/K5ZaI9fUrf6EY3fgi4OARoDhN8EgorBgEEAZdVAQUB
 AQdA0rtHT93xcoMSipYUarYeSYImj6Dbrl/FsSZqjLZ1lU8DAQgHiHgEGBYIAAkFgmgOE3wCmwwA
 IQkQ1920EiF10QYWIQTKljMOut0PM5DWzeLX3bQSIXXRBouoAQDCVsZz3AF8kos+UIsxz2nF8qjI
 XoR/EH7qlmNdXmETYAD/TjGFZ93Dpek2RaZPlXanfruudh+oBm1qJjGwP5ddOQQ=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jonathan, Good you reported it even before I did. I have
 3 different systems with FW643 and the problem persists across all of them.
 I also have some old thinkpad with TI chipset express-card. No any
 discoverable issue there. So I am quite certain it [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: paranoici.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uSY7R-0002S4-4P
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
From: AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: AreYouLoco? <areyouloco@paranoici.org>
Content-Type: multipart/mixed; boundary="===============9219004340218072207=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============9219004340218072207==
Content-Type: multipart/alternative;
 boundary=----KABRHZYN9KARF1C0ZLBDMF2V51PSFY
Content-Transfer-Encoding: 7bit

------KABRHZYN9KARF1C0ZLBDMF2V51PSFY
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

Good you reported it even before I did=2E

I have 3 different systems with FW643 and the problem persists across all =
of them=2E I also have some old thinkpad with TI chipset express-card=2E No=
 any discoverable issue there=2E So I am quite certain its chipset specific=
 here=2E

Here is another report of same problematic chipset and user not aware that=
 he also used the same one in several tests:
<https://github=2Ecom/takaswie/linux-firewire-dkms/issues/59>

Thank you for your interest,

I am willing to build kernels and test patches=2E

On June 19, 2025 11:22:42 PM UTC, Jonathan Woithe <jwoithe@just42=2Enet> w=
rote:
>Hi all
>
>The FFADO project has received several reports from people running recent
>kernels which suggest the kernel has stopped detecting bus resets when a
>PCIe FW643 host controller is in use, and (perhaps as a result) is failin=
g
>to enumerate devices on the bus=2E  This was first reported by a user run=
ning
>Fedora 42=2E  When running Fedora 41 their system would detect firewire
>devices without any issues, and /dev/fw1 was created=2E  When they upgrad=
ed to
>Fedora 42, however, /dev/fw1 wasn't being created and the system logs did=
n't
>contain any messages from the firefire subsystem to indicate that any
>devices had been seen=2E
>
>Another user running Endeavour OS also reported the same trouble=2E
>
>The failure to detect devices applied when devices were connected at boot
>and if they were plugged in sometime after booting=2E
>
>Follow up discussions suggest that kernel 6=2E6 is okay while 6=2E12 and =
all
>versions which follow it are not=2E  The problem only seems to affect use=
rs
>with FW643 host controllers=2E  The precise kernel version that first
>displayed the symptoms is not yet identified=2E
>
>For those affected by this issue and running kernel 6=2E14=2E5, the follo=
wing
>command sequence usually results in a correctly functioning firewire syst=
em:
>
>    sudo modprobe -r firewire-ohci
>    sudo modprobe -r firewire-core
>    sleep 2
>    sudo modprobe firewire-ohci
>
>It has been reported that this does not work in 6=2E14=2E3 or 5=2E14=2E4=
=2E
>
>Since the reporters are not developers, the kernels they have access to a=
re
>limited to those supported out of the box by their distributions=2E  A gi=
t
>bisect will only be possible if someone with the requisite knowledge can
>also reproduce the problem=2E  The information to hand at present is ther=
efore
>somewhat incomplete=2E  It may take some time to obtain a clear picture o=
f
>what might be going on=2E
>
>Unfortunately I don't personally have a FW643 host controller so I am not
>able to investigate this myself=2E  For what it's worth, the 6=2E12=2E26 =
kernel is
>fine for me when using a TI PCI host controller=2E
>
>At this stage I was wondering whether there have been any changes between
>the 6=2E6 and 6=2E12 kernels within the firewire subsystem (or maybe the =
PCIe
>subsystem) which could have inadvertently caused this issue with FW643 ho=
st
>controllers=2E
>
>Alternatively, are there any FW643 users who have no problem with device
>detection under a 6=2E12=2Ex (or later) kernel?  If so this would conclus=
ively
>rule out a kernel issue=2E
>
>Regards
>  jonathan
>
>
>_______________________________________________
>mailing list linux1394-devel@lists=2Esourceforge=2Enet
>https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel

------KABRHZYN9KARF1C0ZLBDMF2V51PSFY
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Hi Jonathan,<br><br>Good you rep=
orted it even before I did=2E<br><br>I have 3 different systems with FW643 =
and the problem persists across all of them=2E I also have some old thinkpa=
d with TI chipset express-card=2E No any discoverable issue there=2E So I a=
m quite certain its chipset specific here=2E<br><br>Here is another report =
of same problematic chipset and user not aware that he also used the same o=
ne in several tests:<br>&lt;<a href=3D"https://github=2Ecom/takaswie/linux-=
firewire-dkms/issues/59">https://github=2Ecom/takaswie/linux-firewire-dkms/=
issues/59</a>&gt;<br><br>Thank you for your interest,<br><br>I am willing t=
o build kernels and test patches=2E</div><br><br><div class=3D"gmail_quote"=
><div dir=3D"auto">On June 19, 2025 11:22:42 PM UTC, Jonathan Woithe &lt;jw=
oithe@just42=2Enet&gt; wrote:</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204);=
 padding-left: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">Hi all<br><br>The FFADO project ha=
s received several reports from people running recent<br>kernels which sugg=
est the kernel has stopped detecting bus resets when a<br>PCIe FW643 host c=
ontroller is in use, and (perhaps as a result) is failing<br>to enumerate d=
evices on the bus=2E  This was first reported by a user running<br>Fedora 4=
2=2E  When running Fedora 41 their system would detect firewire<br>devices =
without any issues, and /dev/fw1 was created=2E  When they upgraded to<br>F=
edora 42, however, /dev/fw1 wasn't being created and the system logs didn't=
<br>contain any messages from the firefire subsystem to indicate that any<b=
r>devices had been seen=2E<br><br>Another user running Endeavour OS also re=
ported the same trouble=2E<br><br>The failure to detect devices applied whe=
n devices were connected at boot<br>and if they were plugged in sometime af=
ter booting=2E<br><br>Follow up discussions suggest that kernel 6=2E6 is ok=
ay while 6=2E12 and all<br>versions which follow it are not=2E  The problem=
 only seems to affect users<br>with FW643 host controllers=2E  The precise =
kernel version that first<br>displayed the symptoms is not yet identified=
=2E<br><br>For those affected by this issue and running kernel 6=2E14=2E5, =
the following<br>command sequence usually results in a correctly functionin=
g firewire system:<br><br>    sudo modprobe -r firewire-ohci<br>    sudo mo=
dprobe -r firewire-core<br>    sleep 2<br>    sudo modprobe firewire-ohci<b=
r><br>It has been reported that this does not work in 6=2E14=2E3 or 5=2E14=
=2E4=2E<br><br>Since the reporters are not developers, the kernels they hav=
e access to are<br>limited to those supported out of the box by their distr=
ibutions=2E  A git<br>bisect will only be possible if someone with the requ=
isite knowledge can<br>also reproduce the problem=2E  The information to ha=
nd at present is therefore<br>somewhat incomplete=2E  It may take some time=
 to obtain a clear picture of<br>what might be going on=2E<br><br>Unfortuna=
tely I don't personally have a FW643 host controller so I am not<br>able to=
 investigate this myself=2E  For what it's worth, the 6=2E12=2E26 kernel is=
<br>fine for me when using a TI PCI host controller=2E<br><br>At this stage=
 I was wondering whether there have been any changes between<br>the 6=2E6 a=
nd 6=2E12 kernels within the firewire subsystem (or maybe the PCIe<br>subsy=
stem) which could have inadvertently caused this issue with FW643 host<br>c=
ontrollers=2E<br><br>Alternatively, are there any FW643 users who have no p=
roblem with device<br>detection under a 6=2E12=2Ex (or later) kernel?  If s=
o this would conclusively<br>rule out a kernel issue=2E<br><br>Regards<br> =
 jonathan<hr>mailing list linux1394-devel@lists=2Esourceforge=2Enet<br><a h=
ref=3D"https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel">ht=
tps://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel</a><br></div=
></pre></blockquote></div></body></html>
------KABRHZYN9KARF1C0ZLBDMF2V51PSFY--


--===============9219004340218072207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9219004340218072207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============9219004340218072207==--

