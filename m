Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F07918B48FF
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 03:08:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0t1a-0007OD-Gy;
	Sun, 28 Apr 2024 01:08:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0t1X-0007Nu-Cs;
 Sun, 28 Apr 2024 01:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jn/H0FI5P0JhW+OMuRgCIKQxuJkNbVlUWf0UJy+9wtU=; b=knyt9W4y1AfwCMht5af5RpzRFV
 DWfxjV9IRcY/JyRXymD3wEfP3NwOv/4YArTQHqm7inKXpvR9DgWaXaRe7z8QOy1VCeSzrFQgXA/j5
 K+IaI4Znuw+vb3NAHM3+4ZLAkaVsmla0z1aKg1ey6kp1f+YZ+fubOYtMWyc5kDXlZ1m8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jn/H0FI5P0JhW+OMuRgCIKQxuJkNbVlUWf0UJy+9wtU=; b=AqBwc6ErzvHGaXkKb5VPpips13
 gv+fgz687rP8ktyVXyWb5dTQSM9C2RryE/ppULdDGt9nT/MQJ1rr5N/oB0kf0qWGxoJ6Wc0UzME2b
 XmGrXP5sZ2Exic4PassAPxe86+uXZnAcOX/ZbJmJWWIdaL261Hc2bs1LA8AERS25Txbo=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0t1V-00013I-Qp; Sun, 28 Apr 2024 01:08:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 902FB1380186;
 Sat, 27 Apr 2024 21:08:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 27 Apr 2024 21:08:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714266484; x=
 1714352884; bh=Jn/H0FI5P0JhW+OMuRgCIKQxuJkNbVlUWf0UJy+9wtU=; b=I
 0VG+ieVHL7i7nWlREu5HHCu14GuFZAM9Qqi5A5GRwV2bINfxzr1pV+K6FD+66vlL
 xMnXT8uM2bTBOaZVcCmxklXn3itn26XSaQlK06Yvlrvw1ODJxwXbD5FDrGemwjlX
 NC9JBIocI+xed93vHwPemzyYu+kKPujn4XBweSueWWIGZydj8GhXGkH9eqBNDGvo
 zWYoRaeAZ3h1WYqmSNJMGzQYAFJEAzZy/FHIG8+UNVTFJnhlxjBy2RqtkE5kadaO
 ykOeHttp5PSccwUuFAmhi21wcCjTwqD0RjK9NMN9LcrmO2sMRkWxasyZArE7EV5R
 u7OE/VitC+8Ij7ktOttcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714266484; x=1714352884; bh=Jn/H0FI5P0JhW+OMuRgCIKQxuJkN
 bVlUWf0UJy+9wtU=; b=SSL+e6KwfEIbPPzOVpGmPmL2bLdblctgLDephIhAeKQ4
 8p5aL72b7y44luRmmZYyZBfdkaeLkIlC12lj+JeI+9r2DrXjREcAkXPzI0U/h62H
 VY4Fspmk36ZUEHZnGM4zCj9fXxbalWfZliXnhRz9G/Qfw52Ol5Bzh6AJ8S7Dprip
 T84x4oPvKw14XhbLXdV80Ym+ZgpeYxdGBK/oxFWC4wUR1zoQ2cO+akZX9cagDt/a
 obhfbJfEmtzKR5Ic8/7Jme58YLALV75YYOGaCi+jLhGnrNoLRyfkztbwOQ2hK9pf
 tU9lJoJvuxSqOv3oNHJFr0wpvwi+5um7fDVHjYa2wg==
X-ME-Sender: <xms:dKEtZiC1EVkUJ-K8slEN7ElKfNvvHZ6acI5c6-mcsUbSKcN8Zx_avw>
 <xme:dKEtZsj6utbKwRWSC4bw7pxcHVbH882gcZHQ2w5bFrvxIwB4K_9m4NPJ-Ob_t206t
 JPVKAtnm-HZTvfSCIM>
X-ME-Received: <xmr:dKEtZlnPrAJ86Jyjxy5vj-nUOABDTCr2iqWiy230qWZRXlp31MGElOf-_siDg1vOIoxo5uCaRZ1ATnx318j8NK_ZP2QVlFqFWCI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtvddggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepvdeugeejleeuhfeggeehieejhfefheeuledvfedv
 fedtfeduvefgheehgefftddtnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpkhgvrh
 hnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:dKEtZgyrzf7MwlU4m05BPZm9ndTWiVPKduAb6es8cTvN0MLa5MvyJA>
 <xmx:dKEtZnRgkphAEdMbfLINLokn5roj5pHf2_6FR6PKqN0Ksu1QEdI5ww>
 <xmx:dKEtZrbl0Xy-c9u4Tw1jh7ONnJ1oL-WYIpfY5k3DWbk29yA1MysVpw>
 <xmx:dKEtZgTkJcQRPLXcULjYPIR1xC9JMBQQt3I4lrHHuuxjXiD-UzeMQQ>
 <xmx:dKEtZhcMsZeGFDCwSZS_gWcQ8-o0KAgcJUHiSz95-A9XkaWPd7ZAOBy0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Apr 2024 21:08:03 -0400 (EDT)
Date: Sun, 28 Apr 2024 10:07:59 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>
Subject: Re: Is there support for the Tascam DM-4800 / IF-FW DM Version 2 or
 could you guide me to try making it?
Message-ID: <20240428010759.GA328087@workstation.local>
Mail-Followup-To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>,
 ffado-devel@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net
References: <20240425221620.213112-1-jtojnar@gmail.com>
 <20240425221620.213112-4-jtojnar@gmail.com>
 <4bd3f484-33b1-6d53-4ea6-b4124ffad000@jsigle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bd3f484-33b1-6d53-4ea6-b4124ffad000@jsigle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I'm a maintaier of Linux firewire subsystem (and ALSA
 dice driver). On Sat, Apr 27, 2024 at 04:15:33AM +0200, Joerg M. Sigle wrote:
 > I'm Joerg and I have a DM-4800 with the firewire interface card. > > I've
 seen before that there might be some support for its version [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.148 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s0t1V-00013I-Qp
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
Cc: linux1394-devel@lists.sourceforge.net, ffado-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

I'm a maintaier of Linux firewire subsystem (and ALSA dice driver).

On Sat, Apr 27, 2024 at 04:15:33AM +0200, Joerg M. Sigle wrote:
> I'm Joerg and I have a DM-4800 with the firewire interface card.
> 
> I've seen before that there might be some support for its version 1,
> which is used in the DM-24 mixer. But I would be very happy if I
> could use the larger and more recent rig with Linux.
> 
> I can program (to some extent :-) ) and if somebody could give me some
> guidance, might possibly be able to make required adoptions to change a
> Version 1 driver into a Version 2 driver. I've also (again, just now)
> contacted Tascam asking whether they might be willing to provide
> necessary documentation.
> 
> I've also seen that some Tascam firewire support seems to be even in the
> drivers/sound/firewire section of the linux kernel,

In my opinion, you are the first person who owns the device in FLOSS
world. Would I ask you to provide some resources to enhance the support
of your device?


1. The image of configuration ROM

I maintain hardware database[1] in systemd project, to describe vendor,
model, and functions of each device. The data comes from the collection
of configuration ROM[2], which is used to identify each node and units in
IEEE 1394 bus. Would I ask you to provide the image of your device to
fulfill the database? When your device is detected as `fw1`, the image
is exposed via `/sys/bus/firewire/devices/fw1/config_rom', thus you can
create the file for image by the command line, like:

$ cat /sys/bus/firewire/devices/fw1/config_rom > tascam-iffw2.img


2. General section information in Wavefront DiceII ASIC

The ASIC allows software to operate its functions by asynchronous
communication by protocol defined by TC Applied Technologies (TCAT).
The first step of the protocol is to read data of general section in its
specific register.

Would I ask you to provide the data? I maintain linux-firewire-utils[3]
for the purpose[3]. When compiling it successfully (or installing), you
can use `firewire-request` command to access to the section, like.

$ firewire-request /dev/fw1 read 0xffffe0000000 0x28

It is known that the early version of firmware in TCAT dice solution has
different size of global section than the later version. If you can see
any failure by the above command, please retry with different size, like.

$ firewire-request /dev/fw1 read 0xffffe0000000 0x20

The general section includes the offsets of sub-sections. If successful,
let us go to access to Global section.


[1] https://github.com/systemd/systemd/blob/main/hwdb.d/80-ieee1394-unit-function.hwdb
[2] https://github.com/takaswie/am-config-roms/
[3] https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
