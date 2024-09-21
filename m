Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC64B97DB8A
	for <lists+linux1394-devel@lfdr.de>; Sat, 21 Sep 2024 05:14:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1srqZz-0002RX-V0;
	Sat, 21 Sep 2024 03:14:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1srqZy-0002RL-6X
 for linux1394-devel@lists.sourceforge.net;
 Sat, 21 Sep 2024 03:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PnRuJsut7rBR5NjmMpKD/vSSKLif7oZAlNskIUa76/8=; b=ZavueG1m9FvV0pI1YUa/VbV0n5
 +fE+7AkLSsmNWCcJDl4kFCPoUOZmu0m2syOmjxjxnzRpMIWbpIcCkwk7nKrxVaGGrEY56EhXqh4mg
 BaQruHkLziIvdrqKorNHmzRBPF6YGIfmwcWoDmYC3n9ibC8iNzHhAGBK9z5bxSK5sevY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PnRuJsut7rBR5NjmMpKD/vSSKLif7oZAlNskIUa76/8=; b=j
 4KfvAK/UjApuRN0/43Fg5buctHmBevmNUH3YdaZYgCE37qOjG3XzdA0SSbC8d69lXhtTWDIGh0Mx9
 Z5wPfSkQzT4SeX8p8KwPW8X+hbLK5JNUu44EIVNRXJCp9p2SHVpDs4asB+dvLNV8Q7fajisEFlI2N
 88zrikpHCqqD2Sig=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1srqZw-0001BL-Gt for linux1394-devel@lists.sourceforge.net;
 Sat, 21 Sep 2024 03:14:38 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id CA04313802A4;
 Fri, 20 Sep 2024 23:14:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Fri, 20 Sep 2024 23:14:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm2; t=1726888465; x=1726974865; bh=PnRuJsut7rBR5NjmMpKD/
 vSSKLif7oZAlNskIUa76/8=; b=eh+vzL1v4ipdmLLKcohL/RIZHKmpxRVx/z1HG
 FloAKSmOruXYwvY0FoRejS/tRvEUCRbOgu/7uZbSmVKFi5ZUA2JSDwljyEmkFTsB
 9pYxz3B1gMO5P46zjf+V0YW7FAxyr4jSU/kjJPvY+RW92UcqAiazJbxaIH5i5JgF
 du2xiVUsvLVpnenAvb4SzGsIEmo6PWEWA5f/4KbibZYgE5NUmkQwyavxwLauRKHA
 jJqkJQCu9PxTWf9NLDcZ4NmfBZU1sAtpMiMUWy4qnVI+JmS2Y8LaA2msLKG1OrNh
 VQVTQutTasn5qebBT0kr+Y2iCUi8RGR5OJjKmakMfOB6r7HTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1726888465; x=1726974865; bh=PnRuJsut7rBR5NjmMpKD/vSSKLif7oZAlNs
 kIUa76/8=; b=knBlsNWNlw8iR3Hj2X0Z993EgQeOu3AdobbwkLHYCUFuObjWQYQ
 ydlgLCNABp3iY7NcYxs5jS8SjKx7vHHqgi+1cwRjjXN4FGNzfabY98P5BkUgffQF
 ROpQ6nksmuD0UDx/1yaUS20QF82bSODRrbY8+cnD1Gq1WyBzuDwlvoeLYBA8uX7E
 nknHY53UjEapzSdQcVGfP6G5Zzj5Ov1ijhOh7/AZs9KTQVyTSgBzudb+Mx9eis7J
 uwfboLLtSaZ1aEaUdFksJz23MUxnfrwjc7zYNmNjwtYaYJ7X2fRugMobDotCptIE
 yU/g+PVXjwNTkj8mVz4pczv6kfuvnS1CqqA==
X-ME-Sender: <xms:ETruZvgwfg8kSSZNL_FtLKSfhmT5qEIIKhDT6Rs83yJOrNwvyn4ovw>
 <xme:ETruZsDFT3W3bKs3BuiErbxM6VHYnxIvrquiweYUc_aXbAcAHZplCTHPg8xRYJMRH
 8xsmfCYmqdbjeRHeJY>
X-ME-Received: <xmr:ETruZvEKAmPINUckS_-yZE26dpd_9t00aFYL47ensnrm5bGUG1lpuab5_oFLOa_ZTkntuDfY7XXhQ787hVMMqKpEEHCUITBnnLI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudelgedgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfggtggusehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeetfeeiteefveegvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddv
 gfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htohepthhorhhvrghlughssehlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgt
 phhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprh
 gtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghf
 ohhrghgvrdhnvghtpdhrtghpthhtohepthhifigrihesshhushgvrdguvg
X-ME-Proxy: <xmx:ETruZsSawlZhKz33BURx1OpMejv16aCI3_-eBFAQb2zj2Ds77Mdi3g>
 <xmx:ETruZszB26j7J7jHk6VTztUh0VKomqyWnu_yWmfoxSyu_icUzhB-XQ>
 <xmx:ETruZi5opWaUtA0T6SOQe6J5jUFogB-uBIoVfX3IHegFnk6dgaZUhQ>
 <xmx:ETruZhxBDLFvTHgbJcktmCa_N2goIjLspaYrtc0x6NC6rQEVoxKffw>
 <xmx:ETruZmtXApEmfMDqil68BazWJW0Ec5jDa89YXbvyvf5-_hgtWTNwXfEV>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Sep 2024 23:14:23 -0400 (EDT)
Date: Sat, 21 Sep 2024 12:14:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.12
Message-ID: <20240921031421.GA227826@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 tiwai@suse.de
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please pull FireWire subsystem updates for v6.11.
 This updates includes a significant change to the processing context for
 isochronous packets. Hopefully,
 many developers will test it before the official release. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1srqZw-0001BL-Gt
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
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please pull FireWire subsystem updates for v6.11.

This updates includes a significant change to the processing context for
isochronous packets. Hopefully, many developers will test it before the
official release.

I hope you have a pleasant trip ;)


The following changes since commit de9c2c66ad8e787abec7c9d7eff4f8c3cdd28aed:

  Linux 6.11-rc2 (2024-08-04 13:50:53 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.12

for you to fetch changes up to f1cba5212e252243a539e079813bc96fbf53e241:

  firewire: core: rename cause flag of tracepoints event (2024-09-12 22:30:38 +0900)

----------------------------------------------------------------
firewire updates for v6.12

The batch of changes includes the followwing:

- Replacing tasklet with usual workqueue for isochronous context
- Replacing IDR with XArray
- Utilizing guard macro where possible
- Printing deprecation warning when enabling debug parameter of
  firewire-ohci module

Additionally, it includes a single patch for sound subsystem which the
subsystem maintainer acked:

- Switching to nonatomic PCM operation

In FireWire subsystem, tasklet has been used as the bottom half of 1394
OHCi hardIRQ so long. In the recent kernel updates, BH workqueue has
been available, and some developers have proposed replacing tasklet with
BH workqueue. While it is fortunate that developers are still considering
the legacy subsystem, a simple replacement is not necessarily suitable.

As a first step towards dropping tasklet, I've investigated the
feasibility for 1394 OHCI isochronous context, and concluded that usual
workqueue is available. In the context, the batch of packets is processed
in the specific queue, thus the timing jitter caused by task scheduling is
not so critical. Additionally, DMA transmission can be scheduled
per-packet basis, therefore the context can be sleep between the operation
of transmissions. Furthermore, in-kernel protocol implementation involves
some CPU-bound tasks, which can sometimes consumes CPU time so long. These
characteristics suggest that usual workqueue is suitable, through BH
workqueues are not.

The replacement with usual workqueue allows unit drivers to process the
content of packets in non-atomic context. It brings some reliefs to some
drivers in sound subsystem that spin-lock is not mandatory anymore during
isochronous packet processing.

----------------------------------------------------------------
Takashi Sakamoto (55):
      firewire: ohci: use TCODE_LINK_INTERNAL consistently
      firewire: ohci: minor code refactoring to localize text table
      firewire: core: use common helper function to serialize phy configuration packet
      firewire: core: utilize kref to maintain fw_node with reference counting
      firewire: ohci: add static inline functions to serialize/deserialize data of AT DMA
      firewire: ohci: use static inline functions to serialize data of AT DMA
      firewire: ohci: add static inline functions to serialize/deserialize data of IT DMA
      firewire: ohci: use static inline functions to serialize data of IT DMA
      firewire: core: use guard macro to maintain static packet data for phy configuration
      firewire: core: use guard macro to maintain the list of card
      firewire: core: use guard macro to maintain the list of cdev clients
      firewire: ohci: use guard macro to serialize accesses to phy registers
      firewire: core: use guard macro to maintain RCU scope for transaction address handler
      firewire: core: use guard macro to access to IDR for fw_device
      firewire: core: use guard macro to maintain the list of address handler for transaction
      firewire: core: use guard macro to disable local IRQ
      firewire: core: use guard macro to maintain list of events for userspace clients
      firewire: core: use guard macro to maintain IDR of isochronous resources for userspace clients
      firewire: core: use guard macro to maintain isochronous context for userspace client
      firewire: core: use guard macro to maintain list of receivers for phy configuration packets
      firewire: core: use guard macro to maintain list of asynchronous transaction
      firewire: core: use guard macro to maintain properties of fw_card
      firewire: ohci: use guard macro to maintain bus time
      firewire: ohci: use guard macro to maintain image of configuration ROM
      firewire: ohci: use guard macro to serialize operations for isochronous contexts
      firewire: core: correct range of block for case of switch statement
      firewire: core: replace IDR with XArray to maintain fw_device
      firewire: core: use lock in Xarray instead of local R/W semaphore
      firewire: core: minor code refactoring to release client resource
      firewire: core: add helper functions to convert to parent resource structure
      firewire: core: add helper function to detect data of iso resource structure
      firewire: core: code refactoring to use idr_for_each_entry() macro instead of idr_for_each() function
      firewire: core: use xarray instead of idr to maintain client resource
      firewire: ohci: use helper macro for compiler aligned attribute
      firewire: ohci: remove unused wrapper macro for dev_info()
      firewire: core/ohci: minor refactoring for computation of configuration ROM size
      firewire: ohci: fix error path to detect initiated reset in TI TSB41BA3D phy
      firewire: core: update fw_device outside of device_find_child()
      firewire: ohci: deprecate debug parameter
      firewire: ohci: obsolete direct usage of printk_ratelimit()
      firewire: core: allocate workqueue to handle isochronous contexts in card
      firewire: core: add local API to queue work item to workqueue specific to isochronous contexts
      firewire: ohci: operate IT/IR events in sleepable work process instead of tasklet softIRQ
      firewire: core: non-atomic memory allocation for isochronous event to user client
      ALSA: firewire: use nonatomic PCM operation
      firewire: core: use WARN_ON_ONCE() to avoid superfluous dumps
      firewire: core: expose kernel API to schedule work item to process isochronous context
      firewire: core: fulfill documentation of fw_iso_context_flush_completions()
      firewire: core: move workqueue handler from 1394 OHCI driver to core function
      firewire: core: use mutex to coordinate concurrent calls to flush completions
      Revert "firewire: core: use mutex to coordinate concurrent calls to flush completions"
      Revert "firewire: core: move workqueue handler from 1394 OHCI driver to core function"
      firewire: core: add helper function to retire descriptors
      firewire: core: update documentation of kernel APIs for flushing completions
      firewire: core: rename cause flag of tracepoints event

 Documentation/driver-api/firewire.rst    |   2 +
 drivers/firewire/core-card.c             |  91 ++++++++++++++++++-------------
 drivers/firewire/core-cdev.c             | 400 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------
 drivers/firewire/core-device.c           | 202 +++++++++++++++++++++++++++++++-------------------------------------
 drivers/firewire/core-iso.c              |  49 +++++++++++++++--
 drivers/firewire/core-topology.c         |   7 +--
 drivers/firewire/core-transaction.c      | 151 +++++++++++++++++++++------------------------------
 drivers/firewire/core.h                  |  28 +++++++---
 drivers/firewire/ohci-serdes-test.c      |  66 +++++++++++++++++++++++
 drivers/firewire/ohci.c                  | 574 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------------------------------------------------------
 drivers/firewire/ohci.h                  | 200 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/linux/firewire.h                 |  22 ++++++++
 include/trace/events/firewire.h          |   4 +-
 sound/firewire/amdtp-stream.c            |  34 +++++++++---
 sound/firewire/bebob/bebob_pcm.c         |   1 +
 sound/firewire/dice/dice-pcm.c           |   1 +
 sound/firewire/digi00x/digi00x-pcm.c     |   1 +
 sound/firewire/fireface/ff-pcm.c         |   1 +
 sound/firewire/fireworks/fireworks_pcm.c |   1 +
 sound/firewire/isight.c                  |   1 +
 sound/firewire/motu/motu-pcm.c           |   1 +
 sound/firewire/oxfw/oxfw-pcm.c           |   1 +
 sound/firewire/tascam/tascam-pcm.c       |   1 +
 23 files changed, 1065 insertions(+), 774 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
