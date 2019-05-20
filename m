Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 804402366C
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 May 2019 14:46:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hShgR-0002dy-7r; Mon, 20 May 2019 12:46:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>)
 id 1hShgP-0002dY-6a; Mon, 20 May 2019 12:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVzCm2w2GsS7NPag+N6tbJcadPLYb6Ek/DYLaOq7ORA=; b=dv+3ZQc3sO97+h0hTitmXs7Ntr
 Ds5GL1C9PA9cZJt9eJA1YY5VQkD97wCVAOcz6Lx58y6zY+7wzUfUgADBHtvuztbPMzVw7RH1osrtU
 KBq2OWp5fF+kstoJciK4EACy1779B7ezQ9y4z9N+TNmXTIFwtQUj+9GBeoO3LO8rhDnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OVzCm2w2GsS7NPag+N6tbJcadPLYb6Ek/DYLaOq7ORA=; b=i
 i6O4xKWNDRSiOPxo/Mc+vZAwrPGEuEp9ICQBl5ykSSTWBUmQmwdOUxOBMi3wTPUh+9g4RT7ajf5T2
 EXmviH0TVAuJ7V9+dyaevxonMJ0MrhHawsyge9BVmp1fQfCYY9nFN/4giTbm2LzGSgEki11dlULUu
 O1IZTbdttt8sKYzo=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hShg7-00ApKS-ND; Mon, 20 May 2019 12:46:25 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 3A0063A9;
 Mon, 20 May 2019 08:27:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 20 May 2019 08:27:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:mime-version:content-type;
 s=fm1; bh=OVzCm2w2GsS7NPag+N6tbJcadPLYb6Ek/DYLaOq7ORA=; b=mMdbd
 S/BMFHRVt0PximAf4XfTin6mEKLI3zjJAYo1yMX9GD/8pShD3Q2kfF0UwSeszgqu
 bqL2xaGz5cBafWcz31FIklhBix6IBcTJATCI5stXER9pfBla2y+Bet8s6VNYKvqP
 J8Ds/Ulyk79gmMhVEiRrkjF3KyLnrMdUZnrUd3O3M0n2mxefWFgO8AIjtFcBTcN8
 UHbLsJH/otcsCLclDzcD3zIcrgk5sqlZo3U5+8r37ye7UOLq/o/AbSf7iIX2S/uz
 nQR879PjOoCtubN6XPps7HWSRrNINMimogYIDScZcbajQ5+kleWVWjwTN+uO4c5a
 7JLIUiTKMaWXgXZeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=OVzCm2w2GsS7NPag+N6tbJcadPLYb
 6Ek/DYLaOq7ORA=; b=H9FJ6h6lz6qHBzJWwG184ZhM0CZaNnMlNMfGyxbsgSShY
 dECd4eA+y4Ojr3viLtnfQyGs6WccDZJCHYTEreR4KJxJtVPPijiyYMfJ3SRuiMYt
 ol4e1R7UGK9kx+Z7FB4Tc1pKwZ8a+iDLcZ9jc6yhTM/n0npN2f5SDbRmKL1oLIMV
 RnQd12SwjspQDjn1fnTSwbKLNYwwvbOqttj9SEhq3Hb7N/Y/RwcSgFlrZTM/t2f/
 3Tp5oBq8cx/7tJYdLC4Te+k59JmcvehgubsFozP9jY+Q9y55ic2ExS+CGDIpblOg
 t6Smj18enFfkb6hnSo67Xttd+k4wpk2OUaPEQvbXQ==
X-ME-Sender: <xms:NJ3iXO0ncloH4CB6V0-APQj9TDlFVal1lj24Z2j_F8qUyT6jMfCakg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddtkedghedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtuggfsehttdertd
 dtredvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucffohhmrghinhepkhgvrhhnvghlrdhorh
 hgpdhgihhthhhusgdrtghomhenucfkphepudegrdefrdejhedrudekudenucfrrghrrghm
 pehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphenuc
 evlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:NJ3iXKugikIVRzfVRJBcDf4qYU6xh2wySvDR20fa0yN2fB9isO53GA>
 <xmx:NJ3iXG4C1vrUAw5C_nuGwfG-00v9rYTjD6YP7zmRhoCuC0XYBmjjKA>
 <xmx:NJ3iXDLlM-nfFUosRW1bfzWoS_fINpY88C0NeaYjyRh21_76JpYc7w>
 <xmx:NJ3iXNVqnYir-RhIlcBcElm4-6ALJqAmB95qRXSCeS6DwRDVm91N_A>
Received: from workstation (ae075181.dynamic.ppp.asahi-net.or.jp [14.3.75.181])
 by mail.messagingengine.com (Postfix) with ESMTPA id 440A28005B;
 Mon, 20 May 2019 08:27:30 -0400 (EDT)
Date: Mon, 20 May 2019 21:27:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: systemd-devel@lists.freedesktop.org
Subject: udev: Access permission of fw character device in which fw node
 includes unit handled by ALSA
Message-ID: <20190520122724.GA14864@workstation>
Mail-Followup-To: systemd-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, ffado-devel@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, clemens@ladisch.de
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1hShg7-00ApKS-ND
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 ffado-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi all,

I'm an ALSA developer, mainly committing to drivers for audio and
music units on IEEE 1394 bus (yes, it's legacy FireWire). I have a
concern about access permission for fw character device.

In the last few years 9 drivers have been added to support 120 models
around[1]. The drivers allow ALSA applications to transfer audio data
frames and MIDI messages, but they expect userspace application to
use fw character device for operations of the other functionalities
such as physical volume controls.

At present, for some models, udevd configures fw character device for
good access permission to userspace applications. On the other hand,
for the other models, udevd doesn't. In my opinion, for one half of
supported models, fw character device is configured with root:root/0500.

I'd like to change this inconvenience, changing group ownership of the
special file to 'audio', and add ACL +uaccess when logging in.

For your information, I prepare a repository including image of
configuration ROM from supported devices[2]. At present, 80 images are
added.  You can parse the image by crpp in linux-firewire-utils
repository[3].

At present I assume three options:

1. Add entries into udev rules for each of device

This is an enhancement of existent rules[4][5] and simple solution.
But developers always take care of adding new entries when users suggests,
perhaps.

2. Reconfigure fw character device when ALSA firewire driver is attached
   to unit

IEEE 1394 specification refers to IEEE 1212 to represent device and its
functionalities. Each device is represented as 'node' and its
functionalities are represented as 'unit'. The information about 'node'
and 'unit' is in configuration ROM.

Linux firewire subsystem reads content of the ROM, parses
it and adds fw character device to system for 'node', then binds in-kernel
driver to 'unit'. Kevents for the node and unit are generated separately.

If udevd handles unit kevent to seek binding driver then configures fw
character device, developers don't need to maintain rule list. Although
one node is allowed to have several units, nut the most of supported
models have only one unit, except for Applie iSight[6].

3. Fulfill hwdb to have supplemental information

I'm not good at hwdb, but according to its name, hwdb is good to store
device dependent information. If adding some hints to database and
using the information, this issue might be solved.

I'm happy to receive your comments to improve this situation.

As a mockup of such control application, I wrote libhinawa[7] and
hinawa-utils[8]. They're my (rough) private work and out of ALSA project,
but for future I wish to propose better implementation to ALSA project
as a control server program.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/sound/firewire/Kconfig
[2] https://github.com/takaswie/am-config-roms/
[3] https://github.com/cladisch/linux-firewire-utils
[4] https://github.com/systemd/systemd/blob/master/rules/50-udev-default.rules.in
[5] https://github.com/systemd/systemd/blob/master/src/login/70-uaccess.rules.m4
    This rule refers to a rule optionally added by FFADO project.
[6] This device has four units; IIDC, Audio, vendor-dependent and IRIS.
[7] https://github.com/takaswie/libhinawa/
[8] https://github.com/takaswie/hinawa-utils/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
