Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D09181654BF
	for <lists+linux1394-devel@lfdr.de>; Thu, 20 Feb 2020 02:58:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j4b68-00074L-LU; Thu, 20 Feb 2020 01:57:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1j4b63-000742-GP
 for linux1394-devel@lists.sourceforge.net; Thu, 20 Feb 2020 01:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ug60JBQBRNYbiA/ryIWOlfzVieFt9+a03PW6eV0kNWw=; b=LMI+FtQl0wDyZVtlIw03YcyoCF
 3/Ah1yvy9MwjBplAulQP+2W8duL37QCn04vHoOn7NDWLcMEYSHtS+xOL6/QWGFAMoZxaHKd9tlTdn
 lb9d9dj4UMVKFGWwQy3bRPsmz3ka8gF7WvEBs85CmQm5aoKNRMUnwXAPJOkd7vMwNkw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ug60JBQBRNYbiA/ryIWOlfzVieFt9+a03PW6eV0kNWw=; b=czdfYdOrxnQpbUbxWgwLi+xGnS
 OFLFv+Fmbi8fMfFZcvTkuI0woF+s3oL7bbdAAgkiOn2GTFhIj+uupbVX7viryAXfbms2LiVG/g/SN
 1jwhUkqGM5Sr2i3hOrkR22c0MMeR9r8dqoEQWyNuayT0ca986OnRrA3TIDMzWjVHsXUA=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j4b5v-008b9c-Hn
 for linux1394-devel@lists.sourceforge.net; Thu, 20 Feb 2020 01:57:47 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id A776F6C7;
 Wed, 19 Feb 2020 20:57:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 19 Feb 2020 20:57:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=Ug60JBQBRNYbiA/ryIWOlfzVieF
 t9+a03PW6eV0kNWw=; b=0cL/kWKSBaOM6IiO18PrF7dvNe5EOcqkjq0ExKJUPAH
 EXNZXdozjEGfKN1F4af7O6a1+s1gY819DCfwUbtr6frLcxN3Zf4SeuuQwWncowmo
 I5LUQQsWoVxTfIk9wmL30EYJKHDCVBzgo40SwNSXOmaYxyY7zk8g0U+OS9Kw7fsM
 hP8xG8H3640z5aKfg7lP8ODQ+as24Y1EMaC/HxJnx7Lq4l+04zFQgd2HgtERCYbM
 /TvFdTb83SlEsYcYbFGsVHKvQFuQlvORvCzQYfCDe9VNOkaDSHoziIf3z+T0QiQF
 yKokepjJrkVAbW3K/JZoOqgS3d4Z5Kd8CNSERydlnEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ug60JB
 QBRNYbiA/ryIWOlfzVieFt9+a03PW6eV0kNWw=; b=16cWLyRIplwhbdvkcxUjM4
 6DGsZ03J1qOmEMSKyY/GE2o7jBC2rydNGtga76z4Op1iSEl1kO44nYIScxFP6s8J
 SJcFBhuA1ofz+SKRSXgP7UoRhHtrbKz5BXHEbCCUHIG8crca8pngwhBiOmhIzwSZ
 qlnhq4zJyHBqub8LEE1Mqd7ECskJ6+zkwQJIFOsK5r/u8Wb24ZfSDkTQgF7WmJO4
 btfi+7QckJOc7yYAGy/UKgH1mu5XCGrVd7xQOWxXfwVq33WRmyTQseRjKSG2Ta9s
 LiiFKI0U8UOjImolh/lwc5nDbNRYM5ReAGXWi8NI8RWgkLEOvM295n19atkKo/nw
 ==
X-ME-Sender: <xms:iudNXk10vbD55h0atRiOh7VxNYRFaDGDsrCjpGu4dG8loq_vHmyMYQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedugdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhusghunhhtuhdrtghomhenucfk
 phepudegrdefrdejgedrudeikeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iudNXq5S6iAx1BtmViThNg4Uzp1-xOu6h8UbEYgz9SzWiLi3V7D-6g>
 <xmx:iudNXjWs3MF5da5CBZLiv2CQTcZPDoAaR0cKmZtJyv8i0pFUCeCeSg>
 <xmx:iudNXqj1sxh_3TKdXmKK-d5w_zfikhxtxCx_xdwX5ag5PJsIDT04zQ>
 <xmx:i-dNXnKoVpdbqUVNSXOiL6XiSZcRUSu732vyjFY4OK-d-UkI8J_1Tw>
Received: from workstation (ae074168.dynamic.ppp.asahi-net.or.jp [14.3.74.168])
 by mail.messagingengine.com (Postfix) with ESMTPA id C499B328005D;
 Wed, 19 Feb 2020 20:57:29 -0500 (EST)
Date: Thu, 20 Feb 2020 10:57:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Steve Morris <morris@buinea.com>
Subject: Re: sytem reboots when initializing Edirol FA-101 firewire audio
 interface
Message-ID: <20200220015726.GA3578@workstation>
Mail-Followup-To: Steve Morris <morris@buinea.com>,
 alsa-devel@alsa-project.org, iommu@lists.linux-foundation.org,
 linux1394-devel@lists.sourceforge.net
References: <20200219141956.GA14216@buinea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219141956.GA14216@buinea.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j4b5v-008b9c-Hn
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
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Feb 19, 2020 at 06:19:56AM -0800, Steve Morris wrote:
> I'm running Arch Linux x86_64
> 
> My system consistently reboots when I power on my FA-101 when running
> kernels 5.5.1-4. Downgrading to 5.4.15 allows everything to work
> properly.
> 
> Here's the outpu of:
> journalctl  | grep -E 'Reboot|firewire|fw|bebob|alsa|jack'
> 
> This is a good init under 5.4.15:
> -- Reboot --
> powered on interface while running 5.4.15, initialized properly
> Feb 18 18:35:37 hostname kernel: firewire_ohci 0000:05:00.0: enabling device (0080 -> 0083)
> Feb 18 18:35:37 hostname kernel: firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 4 IR + 8 IT contexts, quirks 0x11
> Feb 18 18:35:37 hostname kernel: firewire_core 0000:05:00.0: created device fw0: GUID 0011223333666677, S400
> Feb 18 18:35:37 hostname systemd-udevd[541]: controlC0: Process '/usr/bin/alsactl restore 0' failed with exit code 99.
> Feb 18 18:35:37 hostname systemd-udevd[541]: controlC1: Process '/usr/bin/alsactl restore 1' failed with exit code 99.
> Feb 18 18:35:38 hostname kernel: amdgpu: [powerplay] smu driver if version = 0x00000033, smu fw if version = 0x00000035, smu fw version = 0x002a3200 (42.50.0)
> Feb 18 18:36:08 hostname kernel: firewire_ohci 0000:05:00.0: isochronous cycle inconsistent
> Feb 18 18:36:08 hostname kernel: firewire_core 0000:05:00.0: created device fw1: GUID 0040ab0000c20bc1, S400
> Feb 18 18:36:08 hostname kernel: firewire_core 0000:05:00.0: phy config: new root=ffc1, gap_count=5
> Feb 18 18:36:10 hostname kernel: firewire_core 0000:05:00.0: BM lock failed (timeout), making local node (ffc0) root
> Feb 18 18:36:10 hostname kernel: firewire_core 0000:05:00.0: phy config: new root=ffc0, gap_count=5
> Feb 18 18:36:12 hostname systemd-udevd[1532]: controlC2: Process '/usr/bin/alsactl restore 2' failed with exit code 99.
> Feb 18 18:36:15 hostname kernel: snd-bebob fw1.0: transaction failed: no ack
> Feb 18 18:36:15 hostname kernel: snd-bebob fw1.0: fail to get an input for MSU in plug 7: -5
> Feb 18 18:36:15 hostname kernel: snd-bebob fw1.0: transaction failed: no ack
> Feb 18 18:36:15 hostname kernel: snd-bebob fw1.0: fail to get an input for MSU in plug 7: -5
> 
> This is a bad init under 5.5.4:
> -- Reboot --
> Powered on interface when machine was running.
> Feb 18 18:13:37 hostname kernel: firewire_ohci 0000:05:00.0: enabling device (0080 -> 0083)
> Feb 18 18:13:37 hostname kernel: firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 4 IR + 8 IT contexts, quirks 0x11
> Feb 18 18:13:37 hostname kernel: firewire_core 0000:05:00.0: created device fw0: GUID 0011223333666677, S400
> Feb 18 18:13:37 hostname kernel: audit: type=1130 audit(1582078417.360:3): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=ufw comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
> Feb 18 18:13:37 hostname audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=ufw comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
> Feb 18 18:13:37 hostname systemd-udevd[539]: controlC0: Process '/usr/bin/alsactl restore 0' failed with exit code 99.
> Feb 18 18:13:37 hostname systemd-udevd[530]: controlC1: Process '/usr/bin/alsactl restore 1' failed with exit code 99.
> Feb 18 18:13:38 hostname kernel: amdgpu: [powerplay] smu driver if version = 0x00000033, smu fw if version = 0x00000035, smu fw version = 0x002a3200 (42.50.0)
> Feb 18 18:19:45 hostname kernel: firewire_core 0000:05:00.0: phy config: new root=ffc1, gap_count=5
> Feb 18 18:19:48 hostname kernel: firewire_core 0000:05:00.0: phy config: new root=ffc1, gap_count=5
> Feb 18 18:19:48 hostname kernel: firewire_core 0000:05:00.0: created device fw1: GUID 0040ab0000c20bc1, S400
> Feb 18 18:19:52 hostname systemd-udevd[1682]: controlC2: Process '/usr/bin/alsactl restore 2' failed with exit code 99.
> Feb 18 18:20:08 hostname kernel: snd-bebob fw1.0: transaction failed: no ack
> Feb 18 18:20:08 hostname kernel: snd-bebob fw1.0: fail to get an input for MSU in plug 7: -5
> Feb 18 18:20:08 hostname kernel: snd-bebob fw1.0: transaction failed: no ack
> Feb 18 18:20:08 hostname kernel: snd-bebob fw1.0: fail to get an input for MSU in plug 7: -5
> Feb 18 18:20:12 hostname kernel: firewire_core 0000:05:00.0: phy config: new root=ffc1, gap_count=5
> Feb 18 18:21:24 hostname kernel: firewire_ohci 0000:05:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=0x0001 address=0xd5080000 flags=0x0000]
> Followed by 125 more O_PAGE_FAULT and then the reboot,
> 
> I'll be happy to provide additional information if needed.

Hm. I think your system rushed into too complicated issue, At least, three
software stacks are related to your issue:
 - ALSA bebob driver(snd-bebob) and helper module(snd-firewire-lib)
 - Linux firewire core(firewire-core) and 1394 OHCI controller driver (firewire-ohci)
 - Driver stack for AMD IOMMU

From the log, ALSA bebob driver takes your unit to generate bus reset on
IEEE 1394 bus. We can see 1394 OHCI controller handles the bus reset and
the corresponding driver takes Linux firewire core to process the event.
Your unit's generation of bus reset is responsible for ALSA bebob driver,
and this situation is quite similar to what I reported in this patch[1].

However, the system reboot itself is not responsible for ALSA bebob
driver since it is just an application of kernel API of Linux firewire
application and sound subsystem (ALSA). I don't know exactly yet but
something happened between 1394 OHCI controller driver and AMD IOMMU.
It's probably that the cause is in more platform-specific domain.

I'm sorry not to help you. For developers information, I C.C.ed this
issue to iommu@lists.linux-foundation.org and
linux1394-devel@lists.sourceforge.net. If you can get some responses
from the others, please follow their instruction. But in advance it's
better for you to open information about your kernel configuration
and hardware, especially for the version of AMD AGESA for your CPU,
like:

 * AMD Ryzen 5 2400G with Radeon Vega Graphics (family: 0x17, model: 0x11, stepping: 0x0)
 * Gigabyte Technology Co., Ltd. AX370-Gaming 5/AX370-Gaming 5
 * BIOS F42b 08/01/2019 (=AGESA 1.0.0.3 ABB, perhaps)
 * kernel configuration can be retrieved from Ubuntu package repository[2]

The above is a sample from my development environment. I think it would
be possible to regenerate the issue if you give your kernel
configuration, however I'm on vacation till the beginning of March. So
I cannot practice it now, sorry.

[1] d3eabe939aee ("ALSA: bebob: expand sleep just after breaking connections for protocol version 1")
https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git/commit/sound/firewire/bebob?id=d3eabe939aee
[2] https://packages.ubuntu.com/eoan/kernel/linux-image-5.3.0-40-generic

Regards


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
