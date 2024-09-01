Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4F0967606
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:07:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiQ9-00060z-Oj;
	Sun, 01 Sep 2024 11:07:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiQ8-00060o-Hk
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQaHGBYS2vUeI3Tw0ZhFpIQPr/E1ocVBSRnvZo0R4yM=; b=Jj7kDZuNk90r3X2H5JkzWVcpyu
 js6O0xIkQv4fSwqv63SowR5ny7L7zncVeFpkSS8AXe+vbJkoTSK7mASSaB15kQgb59lXQGVKv6HLH
 iP5PT8nWcPCSwmuXFVb/fKdgXBJYo066P4azDIdujd7vvptkqEb2oiqkMYGcvSWoRAx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fQaHGBYS2vUeI3Tw0ZhFpIQPr/E1ocVBSRnvZo0R4yM=; b=W
 loIlCroeMash/Av/Rei+WWgXzHKB1iEt+8VPZEuJ7Qah3ED7QkDA7s92lEp3oKyghcr1ju8LJf8nO
 meR88KkzOFA3U+RDyhsqHkvxssDERSaqkhbDc5dnpBnYbgdaMEWH61IFBSgsUSktu76cdaRE26wY7
 TK6n44WqKWl3YnzE=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiQ7-0006KO-38 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:06:59 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 6E9FE13802B3;
 Sun,  1 Sep 2024 07:06:48 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 01 Sep 2024 07:06:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1725188808; x=1725275208; bh=fQaHGBYS2v
 UeI3Tw0ZhFpIQPr/E1ocVBSRnvZo0R4yM=; b=pi8VD0YeVzrO2hgD4uSGdtNyS8
 nKANw8iXQNIaCD8/ORWUifpyIjxpJmMj2AkOgfY9Wrmq+wZ6Q/FYVHkUj2ah5/cI
 FGGhw2pjNhfrcngpRZQyIO5N62HAaXqTIEBEZZWk8YinHes5lnVAFu52VJRCe4+x
 8CaYf9SaSk9KzV5YcM46ctM0yrv0Ktem/+7imPDft9+VX6oxxt03faQSuObDmdfl
 kDx66BjWb1z+k2cHqRH18SJgXG5pqO8KCz6f8/4f/Bl1TyjW1D4UQkCOeN+yxagL
 S58YgHHIgzMQFN6NEzRvF1KYN/TTVkf4RjqPH9KienFSW/yCW/UeVXZQ4+BA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725188808; x=1725275208; bh=fQaHGBYS2vUeI3Tw0ZhFpIQPr/E1
 ocVBSRnvZo0R4yM=; b=tj5Ar7DuZLFwAg78ya0pbiOawfwX1328EZXN7ks0k4BH
 VM4h7VvuMZr9/mmEEbMm3BaBseTAd+CtkEZyVQ3nyib8TtoqyKO/e/NIlmpOFwAY
 pJdwaAF9vnASk4fnb6DkXXvZeU0qcqFkBdiMp9xbwEk8NT1fcSdVMUus5VzXGU8T
 gpv52/uAzJLnLm+9Kmut9BmWNgo75107q9oAtZ9ZX+0rGgjsPr1Do1J74ha7cHz6
 UwaZgmqMXmo5GzWw0tqiqppJP+nd8B9hW5TEk6e8M3KDxMhqkYwJEXnLAQNGAI44
 dg1VKl2TaOGNp/LdO5SxxZrlwcywo08BmTpBfEKpVQ==
X-ME-Sender: <xms:yErUZka4Ay8iJHswOOgnl1Rhu0pYdeZncMUCTPKIOzZ4TppnnDj9vQ>
 <xme:yErUZvZ1ojhUULeRl5acEnZOEGzD8CxaBd4SoKN_h5fnwe3hlVrqR5KjuyCCpno9g
 LoDLblXoi8TgrOBY-E>
X-ME-Received: <xmr:yErUZu-VTx1xv-67afizRcQdz6WhbVmV65-V5xAO10ggsjMA4jTwETLewEHTHHwVMn9Klbwjd2v2nk2VKcMzBaxkX7SW1CFVKaL8eWhEAWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpefgtdfhteehtdevfedtheehtdduhfevleehueejieffteefvdfhgfetgeekheet
 ffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthhhusgdrtghomhenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeejpdhmohguvgepsh
 hmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhs
 rdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvg
 hlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhn
 ugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrphgrihhssehlihhnuh
 igrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtohepvggumhhunhgurdhrrghilhgv
 sehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhigqdhmvgguihgrse
 hvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:yErUZur8zroL-5ZT1O1Y__ws_dU5ojuTzdIgPBFB44O6X8wf8wAIhw>
 <xmx:yErUZvqvV9Gz0kGrjQkRZ2E3cmWT9s6vuRCuWNqMDcd5YutIxtHe1A>
 <xmx:yErUZsQlz3HqLpNm10wqSyLWZl28fh4sdemxSlVYgEk579X_TsFDNA>
 <xmx:yErUZvq9bswMz4rMDuEtbzA7Jwq0B3scWs-7mXGwG3X1JbE_F6xRRA>
 <xmx:yErUZrJpDUyCvFu_KAkxm67d3wpgIn1eHKZWQnV9XScdyV1yEq4s9peq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 07:06:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 0/5] firewire: use sleepable workqueue to handle 1394
 OHCI IT/IR context events
Date: Sun,  1 Sep 2024 20:06:37 +0900
Message-ID: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 This series of change is inspired by BH workqueue available
 in recent kernel. In Linux FireWire subsystem, tasklet softIRQ context has
 been utilized to operate 1394 OHCI Isochronous Transmit (IT) and Isochronous
 Receive (IR) contexts. The tasklet context is not preferable, as y [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.149 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiQ7-0006KO-38
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
Cc: edmund.raile@protonmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

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
