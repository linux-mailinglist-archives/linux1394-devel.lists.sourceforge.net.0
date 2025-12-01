Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB8C99930
	for <lists+linux1394-devel@lfdr.de>; Tue, 02 Dec 2025 00:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iEyN3jEWq3PRZorbgBVGzEs7cO7j+eV9lahIeWTsi6c=; b=OQ817X4HYAd0dF+07U4ZIjQujz
	Ok/iz7+C8mHdwkpTashPaTRVnjNIkH+V+PBLgNuhanjtLjTJ3t28b5v5G7zCH4qUAWCyTtTX/Uh2Y
	SJ3PSn20ZLVzPMw/CiXxaPh7yuQK/LxojLfjZX5cRhqNsFgI/focVbJzidB9TsKcWKnQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vQDEP-0002BY-4m;
	Mon, 01 Dec 2025 23:22:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vQDEM-0002BL-7w
 for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Dec 2025 23:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4PFpy0HH4F5BuF7KA7iBuwUQOMQ32FEWDx/KhX2zfQ0=; b=MIknrzDN2Eai//YEnwqZ7pTTm+
 4TGnl2TaXOZOYV6/AQ0T6/ReUuQmpbbrLcbRKO1lFEe0gPr9lT+CsDDaCjMqEghZTZueWKOgveAwT
 T99cwB+VxeS0shZwMj6ppKUTDmt3sHNH5gfDLO1AB3g3X2tiLC74PK2X5F91j0nMt2qU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4PFpy0HH4F5BuF7KA7iBuwUQOMQ32FEWDx/KhX2zfQ0=; b=Q
 SFO5zjS+7ejjBcTBxGmpX9S/IkALzZAulJ1yfxNHRQDUNvy1nWQoPbl5f2wuEF4fbtVvbTTpTS5pZ
 zk6TgVsxZcEjZv3+RvPr1EgeEhH4lrH0Vo7GZHU+2jBxTAtAZX+/azGYxNeQ3MeAP83UcRuB0L0qb
 4N36v3CQpNyps984=;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQDEK-0008GZ-N7 for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Dec 2025 23:22:54 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 138AC7A00EF;
 Mon,  1 Dec 2025 18:22:47 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Mon, 01 Dec 2025 18:22:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1764631366; x=1764717766; bh=4PFpy0HH4F5BuF7KA7iBu
 wUQOMQ32FEWDx/KhX2zfQ0=; b=gCuKkVEpaO1h+KEFxnbvYgazZzbEoRFMfRFlE
 A8PfOg1ulZUngj7Qz2oJIJAqtClRVfdfbWyHM1OQxkcs3xYXK9KROgdhTMBltTc9
 lMgaXVF7s/hV4yqK1oxArAFVKdPKVCI1kR/5k8xwqka4Zx5y71032ogES9+ZiFQ2
 3furNrQ2QvbT4H3xY8a1ymwM8CPSqZDDuFjQZcE6gxnFCBUUtVbQ1SeHGCUv4/DJ
 IwhDI0UP2fsXzFv5i04awTff4KDmVcN5gJWvlyVghgO8BwOZA/YpAHMxQ1EuOx4+
 GHhh10uikTr572RXtD8zuC6NW3BRLmkH9IEf2cbADGe0B6dUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1764631366; x=
 1764717766; bh=4PFpy0HH4F5BuF7KA7iBuwUQOMQ32FEWDx/KhX2zfQ0=; b=r
 Hjf2jE6HVDZkINVMTJ5jQtv+ZUKtAeTfgu73LsRyLG3QE0xybrvgVTGN5yZ+acrv
 6bhr9Fn1hJEcy84tN+ueDnYs1m2DLWOteTK0L7UVvR1BlO/HsmUqUDqf4bOB7KlD
 6OT0GtnjFjJf4yBGjC1Gifmr/bgHbUqm9Ww5l6cVDKVwk3YWRHgQXxxrR9VcH0XC
 Kqgx42TW9iHAiJ7feRF5gwtWWxso1bRwNx6/RRdwoWgG0/HF8TDAV80K82nVd1O6
 4TTpGFU4uqxEEhbqj2oT1sS6j5R0V+auWh2QyjgsNRto5E3HjV/MBr81SESo+qgE
 jknrqNafuNJ+iir3+IHbw==
X-ME-Sender: <xms:RiMuaVz3l1d-MqfmfjhDmo3eshuAFy390qw_suyBX80ORX52_o-9SQ>
 <xme:RiMuadB9i406HpjjJluK-96actJT6IKXxULwBLWF-NRKhB00ifGTjAvonQWtFiCiu
 X_687C9KiH13I3dFggWhTNuHy0uTwXwy9RMUj0O9KvAMj5bOGGzAg>
X-ME-Received: <xmr:RiMuaSbtjl1LqvS1uLJIu2a5VTs03WczHunQWutYCq63UcRCxX_86V0cvKhgPF-ZNgDdyMyfJXbnmrcaXCDXq5sleHG2j7KsyY2H>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvheeltddvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnecujf
 gurhepfffhvfevuffkgggtugesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcu
 ufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqne
 cuggftrfgrthhtvghrnhepgeeltddufedtfeeuveekffeijedtteffgffhgefgfeefiedu
 leeftddvieefiedunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpshhouhhrtggvfh
 horhhgvgdrnhgvthenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtph
 htthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtohhrvhgrlhgushes
 lhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidqkh
 gvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidu
 feelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:RiMuaViehNwW3wEwc-tQQoIH3g9rhrLq46mDVyrjFwSkngMNGe5ywg>
 <xmx:RiMuaU6FrcFJZBffrESeRw302IZsVvSMcNzY4Kuv5wBt6oMRzS2xtA>
 <xmx:RiMuac6WvEf-N0l-GtkhqGsvOOtYOsza9S7Epp3KLGwc9JRJ3Ju8hg>
 <xmx:RiMuaYdXmxLpGxOdIZofMfsaNfd-Q89zHj-EnQ5dMDKBfUfCXR7-dw>
 <xmx:RiMuaRukMN6Ugm7JiVInqPzv2CxIzn2JpPInuOyYpLZ2hmI-d53Bfv2u>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Dec 2025 18:22:45 -0500 (EST)
Date: Tue, 2 Dec 2025 08:22:43 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.19
Message-ID: <20251201232243.GA293104@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please pull the updates for firewire subsystem to
 your tree. It includes core function changes, and all users get affects from
 them. I would appreciate receiving any test report from the users. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vQDEK-0008GZ-N7
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please pull the updates for firewire subsystem to your tree. It includes
core function changes, and all users get affects from them. I would
appreciate receiving any test report from the users.

The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.19

for you to fetch changes up to 036176d9dba74e23e3ef358e171a77b75837fee0:

  firewire: core: abort pending transactions at card removal (2025-11-14 04:30:58 +0900)

----------------------------------------------------------------
firewire updates for v6.19

This release includes two changes for core functions, which affects all
use cases of this subsystem.

 - Handle per-device interoperability quirks
   It is well known that some devices have quirks affecting
   interoperability. To identify such quirks at an early stages of
   device detection, the step for reading the configuration ROM contents
   has been changed. As a side effect, the entire detection process is
   now performed at the basic transaction speed (S100), without no trial
   to probe higher supported speeds.
   With this change, the following devices should now work with fewer
   issues:
   - TASCAM FW-1884, FW-1804, and FW-1082
   - MOTU Audio Express

 - Safer removals of host card
   There was a race condition between host card removal and handling of
   bus reset events in the workqueue. This appears to be a long standing
   issue (for a dozen years or so[1]), and recent changes to use more
   workqueues escalate it. To solve it, a new callback has been added to
   the 1394 OHCI PCI driver to unregister the interrupt sources and wait
   for workqueue completions when removing a card instance.

[1] https://sourceforge.net/p/linux1394/mailman/linux1394-devel/thread/20250629024836.GA16759%40workstation.local/#msg59200628

----------------------------------------------------------------
Marco Crivellari (1):
      firewire: core: add WQ_UNBOUND to alloc_workqueue users

Takashi Sakamoto (11):
      firewire: core: detect device quirk when reading configuration ROM
      firewire: core: handle device quirk of MOTU Audio Express
      firewire: core: code refactoring to compute transaction speed
      firewire: core: determine transaction speed after detecting quirks
      firewire: core: handle device quirk of TASCAM FW-1884/FW-1804/FW-1082
      ALSA: firewire-tascam: reserve resources for transferred isochronous packets at S400
      firewire: core: use cleanup function to release cached configuration ROM
      firewire: core: code refactoring to remove transaction entry
      firewire: core: code refactoring to find and pop transaction entry
      firewire: core: clear sources of hardware interrupt at card removal
      firewire: core: abort pending transactions at card removal

 drivers/firewire/core-card.c          |  25 +++++++++-----------
 drivers/firewire/core-device.c        | 194 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------
 drivers/firewire/core-transaction.c   |  88 +++++++++++++++++++++++++++++++++++++++++++++++-----------------------
 drivers/firewire/core.h               |   5 ++++
 drivers/firewire/ohci.c               |  78 +++++++++++++++++++++++++++++++++++++++++++++++++++-----------
 include/linux/firewire.h              |  17 ++++++++++++++
 sound/firewire/tascam/tascam-stream.c |  21 +++++++++--------
 7 files changed, 304 insertions(+), 124 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
