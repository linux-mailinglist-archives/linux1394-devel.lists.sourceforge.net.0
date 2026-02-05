Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIylESWPhGl43QMAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Thu, 05 Feb 2026 13:37:57 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEB1F2A2A
	for <lists+linux1394-devel@lfdr.de>; Thu, 05 Feb 2026 13:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s1KMCOzQ4XYzUAt0V9wrR4RqY7eSVOxRb77XkTvG6t0=; b=NWOPa8C0qkNyPy+e9113k0T1oC
	HtE0Y6yk7302VjfVeiExR31Op2iUg0dz09qMaQFkMi9e8rYaf+aszIBCbSQT+DswvuLduziKBiF9D
	k7CgZZuBmPnGPaSPBJEI6ucd2h7WMwV0TolTUhew5Js0qxrHHjsQprfO6Lc+yl3AVU3A=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vnycA-00078g-Lu;
	Thu, 05 Feb 2026 12:37:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vnyc8-00078W-IP
 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Feb 2026 12:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BB9ZRDVOeoEegW+TH6oclSJuVoxguBfiBsoCd6TE0bg=; b=AR9dXvdTYeEXjpNQ22G4xEEcaR
 Us+xl0N3s0fFJnvsmnRWn3MkiO+NxOqLVOUdgEYW/bsJ6MW1ContbhNjNFMEtQH5ThVs2w/+Uv5FT
 PPbRidIgpFiKQki0AR1VRCBkAcRJ55ewiu1qjcmCE43hk4i6Gd/raUc5lJ8lHcBluGRE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BB9ZRDVOeoEegW+TH6oclSJuVoxguBfiBsoCd6TE0bg=; b=gVm7HP40C7aAPBvUQOnwhfo6jc
 dpoDIKF615e3ANGHmtZLu764cjIbZPagAwu7GRWp1IG6vULHs/TCT4CByCGMY2WdhTJbX/yYGxUIt
 Y//PShbMO6e7bZ3Ch12IdvlYmLmeOw9f51OklhN3kOLF9REQPL2ytmcGVRJuykt87zrY=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vnyc6-0004QW-N3 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Feb 2026 12:37:40 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id D6E747A00F2;
 Thu,  5 Feb 2026 07:37:27 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Thu, 05 Feb 2026 07:37:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1770295047; x=
 1770381447; bh=BB9ZRDVOeoEegW+TH6oclSJuVoxguBfiBsoCd6TE0bg=; b=o
 m1asXSUWP6rZa+Y6julCkGydLoIvdKOxmzdmkfDu3ujDYJgfQtaVpRIWw42a1fGK
 L/j2yM9oPtdHdt2Jnp/fhtVm/B2QHOcXZ2u2QNAcCjx1hSB+yb/u5I41NiZzSPsz
 Ykm4VoQYUOT3YiIkwpIjXCOTfYvFM4ZXD5cUTmDT70epIwbCECdvUbnp4TXPgKoY
 Od0fk920Eep7qcjJlahdcyoZj2IBYO+o/0O1G7xj54OQtyYtjqpOzjLdooHGUj/9
 jJGPvjhBjlkawynFno45iTIWBqbjhc20EdLIPjrDdk0VfMPte5f5AiKepYCxPKRs
 thDlZ+nsEhQptbYN4znlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1770295047; x=1770381447; bh=BB9ZRDVOeoEegW+TH6oclSJuVoxguBfiBso
 Cd6TE0bg=; b=A3Vk/jfO7OciaSZCWnhhKU+6/PeWr2ohuQDgHl2GnPydDpzd/XN
 EyEzxDY6MPDv92HZsVzEUXtCvurNno2EUAWrIUUBdZ1el7+Dgg2XX5/N5wtbY/w8
 4UhtBtutWLaYZjDaYJQ1eVKoITcOQksaFK+htOL+lMxPGnhtH8S6vE1G2ffQPBMH
 oddEm2/1jH2lYsREC0ZX9SYDN3WcRnn5GYcbsNquS+05abpiSlypga2kNdlS7t34
 cBpuhemtY2WDvlbzcuEqw9MNV8zZ84ozqIi7ljUz8IWz+qUNt+87WlquhFaK/YYC
 qZWn14p2dNgE8kXz+EyH7nE0WL1NPmbZg8Q==
X-ME-Sender: <xms:B4-EaQY7dbFayTtXHBiHzqm-gZjmhfggBm8CV5hcTeHo4uZhP60F8w>
 <xme:B4-EaUXfdYOmlzh2ClMMouPcj4GwxRyfOm_IITNZsVN7zk9dz0skjMYHerLZZQWVL
 ud9K2ZlVszruXwIdi13MqDbC47pRcdIsZjSr9bLAh_VG3O7kJxAGys>
X-ME-Received: <xmr:B4-EaWhWnd8tQHqovM06hNe6ykJXru4kuWRgZQDHLmQO1hgD-Ao9d6WoWSX2MfTmolPw4M2R2WwjYv30F-Ut6_9cDD3n5OojYuI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeehfedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeejkeetgeelud
 dttdejheetieffheeludfhjeejheeujeehvefgffekieekueduveenucffohhmrghinhep
 uggvsghirghnrdhorhhgpdhutgifrdgtiidpghhithhhuhgsrdgtohhmpdhkvghrnhgvlh
 drohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhm
 pehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhope
 ehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegtrghrnhhilhesuggvsghirghn
 rdhorhhgpdhrtghpthhtoheprhhpnhhpihhfsehtrhhosgdrvghupdhrtghpthhtohepud
 duvdeitdeltdessghughhsrdguvggsihgrnhdrohhrghdprhgtphhtthhopehlihhnuhig
 udefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtg
 hpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:B4-Eaat78GABYizSwVb9YxmYF142bhtCMpwh02FWh261OKwAbjzzOw>
 <xmx:B4-EaX6k5-mpFTmortXUKpdoXUerQe-Q_DIUjunrVYpaWV-b8MpsQQ>
 <xmx:B4-EaWOtf4GhlElQSwcVi8FE59maADtJrJCXOGIT2F88qf5RYWZbsA>
 <xmx:B4-EaVuU3fBjKDSrKWZYSU9nlJkogA8W8_qKHKGYYm6BVmj5mCFF7Q>
 <xmx:B4-EaSKg7pg2OBVyFQvpBvdAf3uYnkutcp9rSbxKco2KhXnf0V6f0tPx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Feb 2026 07:37:25 -0500 (EST)
Date: Thu, 5 Feb 2026 21:37:22 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Salvatore Bonaccorso <carnil@debian.org>
Subject: Re: Bug#1126090: Firewire-ohci  module crashes: firewire_ohci
 0000:02:00.0: failed to read phy reg 2
Message-ID: <20260205123722.GA303762@workstation.local>
Mail-Followup-To: Salvatore Bonaccorso <carnil@debian.org>,
 rpnpif <rpnpif@trob.eu>, 1126090@bugs.debian.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <176901837355.2477.2861760331654742798.reportbug@chro.local>
 <aXT87Fhx3zQnTxL3@eldamar.lan>
 <176901837355.2477.2861760331654742798.reportbug@chro.local>
 <e8a2c6a4-2f11-4672-9159-de3cf8127e84@trob.eu>
 <aYIvwF0YlXi94IXZ@eldamar.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aYIvwF0YlXi94IXZ@eldamar.lan>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > Rpnpif,
 reported in Debian (at https://bugs.debian.org/1126090)
 that > firewire_ohci driver has since almost 3.16,
 an issue with the > following
 device: Thanks for your report[1]. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vnyc6-0004QW-N3
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
Cc: 1126090@bugs.debian.org, linux1394-devel@lists.sourceforge.net,
 rpnpif <rpnpif@trob.eu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:carnil@debian.org,m:1126090@bugs.debian.org,m:linux1394-devel@lists.sourceforge.net,m:rpnpif@trob.eu,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ucw.cz:url]
X-Rspamd-Queue-Id: 4EEB1F2A2A
X-Rspamd-Action: no action

Hi,

> Rpnpif, reported in Debian (at https://bugs.debian.org/1126090) that
> firewire_ohci driver has since almost 3.16, an issue with the
> following device:

Thanks for your report[1].

> 01:00.0 PCI bridge [0604]: Texas Instruments XIO2213A/B/XIO2221 PCI Express to PCI Bridge [Cheetah Express] [104c:823e] (rev 01) (prog-if 00 [Normal decode])
> 	Subsystem: Device [3412:7856]
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	IOMMU group: 1
> 	Region 1: Memory at fe700000 (32-bit, non-prefetchable) [size=4K]
> 	Bus: primary=01, secondary=02, subordinate=02, sec-latency=32
> 	I/O behind bridge: [disabled] [32-bit]
> 	Memory behind bridge: fe600000-fe6fffff [size=1M] [32-bit]
> 	Prefetchable memory behind bridge: [disabled] [64-bit]
> 	Secondary status: 66MHz+ FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- <SERR- <PERR-
> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16+ MAbort- >Reset- FastB2B-
> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
> 	Capabilities: <access denied>
> 
> 02:00.0 FireWire (IEEE 1394) [0c00]: Texas Instruments XIO2213A/B/XIO2221 IEEE-1394b OHCI Controller [Cheetah Express] [104c:823f] (rev 01) (prog-if 10 [OHCI])
> 	Subsystem: Device [3412:7856]
> 	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> 	Interrupt: pin A routed to IRQ 18
> 	IOMMU group: 1
> 	Region 0: Memory at fe604000 (32-bit, non-prefetchable) [size=2K]
> 	Region 1: Memory at fe600000 (32-bit, non-prefetchable) [size=16K]
> 	Capabilities: <access denied>
> 	Kernel modules: firewire_ohci

I use so long the similar product with the same combination of bus bridge
chip and 1394 OHCI controller, on AMD processor family 19th model 0x50
(Ryzen 7 5700G, Cezanne), but never face the issue. My output of lspci
is:

```
$ lspci -vnn
...
01:00.0 PCI bridge [0604]: Texas Instruments XIO2213A/B/XIO2221 PCI Express to PCI Bridge [Cheetah Express] [104c:823e] (rev 01) (prog-if 00 [Normal decode])
        Subsystem: Texas Instruments Device [104c:823f]
        Flags: bus master, fast devsel, latency 0, IOMMU group 10
        Memory at fcd00000 (32-bit, non-prefetchable) [size=4K]
        Bus: primary=01, secondary=02, subordinate=02, sec-latency=32
        I/O behind bridge: [disabled] [32-bit]
        Memory behind bridge: fcc00000-fccfffff [size=1M] [32-bit]
        Prefetchable memory behind bridge: [disabled] [64-bit]
        Capabilities: <access denied>

02:00.0 FireWire (IEEE 1394) [0c00]: Texas Instruments XIO2213A/B/XIO2221 IEEE-1394b OHCI Controller [Cheetah Express] [104c:823f] (rev 01) (prog-if 10 [OHCI])
        Subsystem: Texas Instruments XIO2213A/B/XIO2221 IEEE-1394b OHCI Controller [Cheetah Express] [104c:823f]
        Flags: bus master, 66MHz, medium devsel, latency 32, IRQ 121, IOMMU group 10
        Memory at fcc04000 (32-bit, non-prefetchable) [size=2K]
        Memory at fcc00000 (32-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>
        Kernel driver in use: firewire_ohci
        Kernel modules: firewire_ohci
...
```

According to the value of subsystem field, it is manufactured by Texas
Instruments, while the issued device is from 3412:7856. The vendor ID
0x3412 seems not to be registered in pciids[2]. Fortunately, I can find
the report from Raspberry PI users to use the device[3], and it seems to
work in their Arm64 machine.

I guess that the issue appears in the case to use a certain combination
of hardware. I can remember an unresolved issue that AMD Ryzen machine
generates unexpected system reboot when working with the hardware of
ASM1083 and VT63xx[4], but never cleared.


> [   14.149170] Call Trace:
> [   14.149174]  <TASK>
> [   14.149177]  dump_stack_lvl+0x64/0x80
> [   14.149185]  read_phy_reg+0x91/0xa0 [firewire_ohci]
> [   14.149196]  ohci_enable+0x3a3/0x5b0 [firewire_ohci]
> [   14.149204]  fw_card_add+0x85/0x110 [firewire_core]
> [   14.149232]  pci_probe+0x492/0x620 [firewire_ohci]
> ...
> [   14.149364]  </TASK>
> [   14.150242] firewire_ohci 0000:02:00.0: probe with driver firewire_ohci failed with error -16
> [   14.150382] firewire_ohci 0000:02:00.0: removed fw-ohci device

The above messages are printed by the following line:

$ git show v6.12:drivers/firewire/ohci.c | nl -b a 
634  static int read_phy_reg(struct fw_ohci *ohci, int addr)
635  {
636          u32 val;
637          int i;
638
639          reg_write(ohci, OHCI1394_PhyControl, OHCI1394_PhyControl_Read(addr));
640          for (i = 0; i < 3 + 100; i++) {
641                  val = reg_read(ohci, OHCI1394_PhyControl);
642                  if (!~val)
643                          return -ENODEV; /* Card was ejected. */
644
645                  if (val & OHCI1394_PhyControl_ReadDone)
646                          return OHCI1394_PhyControl_ReadData(val);
647
648                  /*
649                   * Try a few times without waiting.  Sleeping is necessary
650                   * only when the link/PHY interface is busy.
651                   */
652                  if (i >= 3)
653                          msleep(1);
654          }
655          ohci_err(ohci, "failed to read phy reg %d\n", addr);
656          dump_stack();
657
658          return -EBUSY;
659  }

It hits 'dump_stack()'. It means that it has no critical effect to your
running machine, just generates annoying dump message, So our situation is
not so critical, in system POV.

The cause is that the value of register does not become to have a 'done'
bit, even if retrying 100 times, after configuring the link layer to read
register in PHY layer.

The most suspicious cause is the hardware fail to provide SCLK signal
even after turning on Link Power Status (LPS). In this case, any access
to the OHCI1394_PhyControl register undefined, according to 1394 OHCI
Specification Release 1.1 (clause 4. Register addressing). Actually the
1394 OHCI driver attempts to detect LPS-on by the following lines:

```
2416  static int ohci_enable(struct fw_card *card,
2417                         const __be32 *config_rom, size_t length)
2418  {
              ...
2442          reg_write(ohci, OHCI1394_HCControlSet,
2443                    OHCI1394_HCControl_LPS |
2444                    OHCI1394_HCControl_postedWriteEnable);
2445          flush_writes(ohci);
2446
2447          for (lps = 0, i = 0; !lps && i < 3; i++) {
2448                  msleep(50);
2449                  lps = reg_read(ohci, OHCI1394_HCControlSet) &
2450                        OHCI1394_HCControl_LPS;
2451          }
2452
2453          if (!lps) {
2454                  ohci_err(ohci, "failed to set Link Power Status\n");
2455                  return -EIO;
2456          }
              ...
```

On the other hand, the arrival of SCLK can not detected by software.
Would I ask you to try inserting msleep() with enough long in the end of
the above lines if you can compile the driver code by yourself?

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1126090
[2] https://pci-ids.ucw.cz/
[3] https://github.com/geerlingguy/raspberry-pi-pcie-devices/issues/297
[4] https://lore.kernel.org/lkml/20231105144852.GA165906@workstation.local/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
