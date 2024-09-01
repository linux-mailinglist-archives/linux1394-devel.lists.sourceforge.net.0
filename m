Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC60F96761C
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:16:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiZV-0000wW-6u;
	Sun, 01 Sep 2024 11:16:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiZL-0000vp-2O
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QSZie+xNlecYmlWibU9RZ5KAvJ2n8qZrhof1Voi0CRA=; b=Is4rDl+zZpjayJI1ythOQSqO0M
 fYgbjlrsmR67+Qz5X4N1FnueaR4GW86WK53kU/LZUKghtigPq+qZAkwFsxhaYlCnF7WCYJW22dBcd
 YdYZETwtR0Gqxon9xtpry90yYrUldCiQ6573YEVKrmQ+3BWEX6XOw/JgEYdsSa0JfJYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QSZie+xNlecYmlWibU9RZ5KAvJ2n8qZrhof1Voi0CRA=; b=O
 9lZGKkQL5dtXToBakDBmnF+IufR1I87YC4noCAxkKnxVPl9uymN3VUEkPD1OEMkbhxoldgEXoTunG
 cwwdGL88u0InC/LS1Z9x8oLY2Nrwx1NNRXGT8CRGEXLQ0CwEt7OW9k9ulrp0/ISuoqPRAWkCAe/xF
 wmFhTdI2kvIEcQQ8=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiZK-0006ns-6A for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:30 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 9C8EF114026F
 for <linux1394-devel@lists.sourceforge.net>;
 Sun,  1 Sep 2024 07:16:19 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 01 Sep 2024 07:16:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1725189379; x=1725275779; bh=QSZie+xNlecYmlWibU9RZ
 5KAvJ2n8qZrhof1Voi0CRA=; b=VooPoDRfJ0VVs/yVIKNQL9naKuSN8NR/34hNC
 nv/foEInxmKwj26t5rP+N3HYUdWvtoRQ081hY/qpfkC+/MbGTgbEDeoll5+f6U8e
 Va4wvnVgGsNCpKFMKwUR2xzvvkt70sss2bV0YnKDq1DdD/B5MUlBnKBSg9DvD329
 GD9SRcJOKmrF+kCKzzPpJpNuoeaDz8BR1kR4VcsfP6A8N153nfXw+ob7CGUEAaY7
 DJR4rH/aAY3cV5I0Oh80SyHKlNDnOhCoGc5XF/PBHNANdTCcvzCFnXpEMeuAlGG3
 VDK54DC/hazvAcd6Vv4YPrvcBp5WWhlpxhBHm5iooXDkziLFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :message-id:mime-version:reply-to:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725189379; x=1725275779; bh=QSZie+xNlecYmlWibU9RZ5KAvJ2n
 8qZrhof1Voi0CRA=; b=MJfTH/bp5S+Yhgt5GF3lLjn9EnXk2IolYzieDOjPiNXa
 /arNsApU/R2qCvl8cmyu1ihFJbDPCnqxUELs7JzFNA4wLaTiFVrmgeuMGnm2oBwg
 4bZa1jpEu1xH6u4JfOBN+uDWNFYYw8OrX1dwzULpNzhHZ25o385ZabRHSuGpUpNq
 ci3CamAHjpTYVV8sG8O8RiUQpgkBOWKKIVgijrNTT4/l+d5mtUnI7ywRhBTjRz3U
 gDclFuSe7/DgdtF+ZFxQ0gmRczjLYodmAnKZHDBoVmamuqm3xdk4eItzO+4RHsYc
 3U5nWkhoBEYzhYx6M8TyIVJgdbEod0lU24/lASe03w==
X-ME-Sender: <xms:A03UZgmAADWcZQ-_ByJzvBHxNogS-F6Mdlwc8q3cClbrg3HlAfNVyA>
 <xme:A03UZv21gCKhGFpPA4Lsh9YcarNwD4j3MxImbZ8Tx6_HYgCnjZsiVlpRkfaW7CHzI
 uHJxqwLydqN4NEUXIs>
X-ME-Received: <xmr:A03UZuoi63bZIb3Dv5kP_J9Ooo8M5iJuxYJfb22pvBPzLt-G0vg163XZRnFaDXki1hL8Lw8askkUVXd5a3iRb8OYk-meUvUvDl6QvjFia24>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothho
 uceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvg
 hrnhepkedtvdduhfekfefhfeduffffvdfhieduveegleekveehveefvdffudefudejfefg
 necuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpghhithhhuhgsrdgtohhmnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddpmhhouggvpehsmh
 htphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdr
 shhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:A03UZsmFF0Tmq2BicdOxF-WK9uRiUHSTfe2-qo0L7aoksIXVjkX1Mg>
 <xmx:A03UZu1Qxv9WDV3f4FxK6V4sc5Pir3qY8c3KmSSE7szx9Vx7cgZWLA>
 <xmx:A03UZjv_h7WxVW39v0Ejmfq-SP9sIjWgIu7u2xldHx0P0tW1wjj0RA>
 <xmx:A03UZqU_OGE11FU56-bUk5PSMUlLA-F-0KGSJpDSSYm_yNWvqLrPOA>
 <xmx:A03UZj8hhKuOzDqmFOsF5iLQ0cx31WvuI2Rc_2nqpTy6dmtuCxw7F-fp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Sun,
 1 Sep 2024 07:16:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 0/5] firewire: use sleepable workqueue to handle 1394
 OHCI IT/IR context events
Date: Sun,  1 Sep 2024 20:16:11 +0900
Message-ID: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: (resend to linux1394-devel since the post is waiting for
 moderator
 approval. Please refer to the original post for any reply:
 https://lore.kernel.org/lkml/20240901110642.154523-1-o-takashi@sakamocchi.
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiZK-0006ns-6A
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

(resend to linux1394-devel since the post is waiting for moderator
approval. Please refer to the original post for any reply:
https://lore.kernel.org/lkml/20240901110642.154523-1-o-takashi@sakamocchi.jp/)

Hi,

This series of change is inspired by BH workqueue available in recent
kernel.

In Linux FireWire subsystem, tasklet softIRQ context has been utilized to
operate 1394 OHCI Isochronous Transmit (IT) and Isochronous Receive (IR)
contexts. The tasklet context is not preferable, as you know.

I have already received a proposal[1][2] to replace the usage of tasklet
with BH workqueue. However, the proposal includes bare replacement for 1394
OHCI IT, IR, Asynchronous Transmit (AT), and Asynchronous Receive (AR)
contexts with neither any care of actual usage for each context nor
practical test reports. In theory, this kind of change should be done by
step by step with enough amount of evaluation over software design to avoid
any disorder.

In this series of changes, the usage of tasklet for 1394 OHCI IT/IR
contexts is just replaced, as a first step. In 1394 OHCI IR/IT events,
software is expected to process the content of page dedicated to DMA
transmission for each isochronous context. It means that the content can be
processed concurrently per isochronous context. Additionally, the content
of page is immutable as long as the software schedules the transmission
again for the page. It means that the task to process the content can sleep
or be preempted. Due to the characteristics, BH workqueue is _not_ used.

At present, 1394 OHCI driver is responsible for the maintenance of tasklet
context, while in this series of change the core function is responsible
for the maintenance of workqueue and work items. This change is an attempt
to let each implementation focus on own task.

The change affects the following implementations of unit protocols which
operate isochronous contexts:

- firewire-net for IP over 1394 (RFC 2734/3146)
- firedtv
- drivers in ALSA firewire stack for IEC 61883-1/6
- user space applications

As long as reading their codes, the first two drivers look to require no
change. While the drivers in ALSA firewire stack require change to switch
the type of context in which callback is executed. The series of change
includes a patch for them to adapt to work process context.

Finally, these changes are tested by devices supported by ALSA firewire
stack with/without no-period-wakeup runtime of PCM substream. I also tested
examples in libhinoko[3] as samples of user space applications. Currently I
face no issue.

On the other hand, I have neither tested for firewire-net nor firedtv,
since I have never used these functions. If someone has any experience to
use them, I would request to test the change.

[1] https://lore.kernel.org/lkml/20240403144558.13398-1-apais@linux.microsoft.com/
[2] https://github.com/allenpais/for-6.9-bh-conversions/issues/1
[3] https://git.kernel.org/pub/scm/libs/ieee1394/libhinoko.git/


Regards

Takashi Sakamoto (5):
  firewire: core: allocate workqueue to handle isochronous contexts in
    card
  firewire: core: add local API for work items scheduled to workqueue
    specific to isochronous contexts
  firewire: ohci: process IT/IR events in sleepable work process to
    obsolete tasklet softIRQ
  firewire: core: non-atomic memory allocation for isochronous event to
    user client
  ALSA: firewire: use nonatomic PCM operation

 drivers/firewire/core-card.c             | 31 +++++++++++--
 drivers/firewire/core-cdev.c             |  4 +-
 drivers/firewire/core-iso.c              | 22 ++++++++-
 drivers/firewire/core.h                  | 14 +++++-
 drivers/firewire/ohci.c                  | 57 +++++++++++++++++++-----
 include/linux/firewire.h                 |  3 ++
 sound/firewire/amdtp-stream.c            |  9 +++-
 sound/firewire/bebob/bebob_pcm.c         |  1 +
 sound/firewire/dice/dice-pcm.c           |  1 +
 sound/firewire/digi00x/digi00x-pcm.c     |  1 +
 sound/firewire/fireface/ff-pcm.c         |  1 +
 sound/firewire/fireworks/fireworks_pcm.c |  1 +
 sound/firewire/isight.c                  |  1 +
 sound/firewire/motu/motu-pcm.c           |  1 +
 sound/firewire/oxfw/oxfw-pcm.c           |  1 +
 sound/firewire/tascam/tascam-pcm.c       |  1 +
 16 files changed, 128 insertions(+), 21 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
