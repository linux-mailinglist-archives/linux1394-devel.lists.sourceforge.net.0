Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E58AF96BD65
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 14:58:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slpaw-0007Gz-8n;
	Wed, 04 Sep 2024 12:58:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slpap-0007Gl-Kz
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DIylQIt1GJYRHooU/cSsaptj0RpBFf2MzUpTSydom5U=; b=LRBrdNPcFbTwlh+BlafUrxeKfI
 z+2uhT/T6T04llbpbVpgVs2uEmVVfwaDM5WY+rJyBuWks70iwN7yMGN63y5mEQy2C8bNuEFXe8BsT
 hZA3pjgmIa1Z1x1cTCPLU9njA83NaYVxFFFfqhSkYplXirmvkUrm+hiMZtQEWUK8ZbHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DIylQIt1GJYRHooU/cSsaptj0RpBFf2MzUpTSydom5U=; b=Y
 vK6VK6C/feXo2L3ORLW1QNmqmDJr7TK6EtUumsG2HD0a1PUwKoDQCtMrmLvrmnKX4IiTXKcd+G+Xk
 O83CKEE0hzgYtaKBeGEpwhIhU9EliJkdpa0AY4yqxfU5oWAOmT/GcPx0IdQ+ZxpDOUuYyj9NVicvJ
 149i8FSxSjxg3EZ8=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slpao-0000Ry-He for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:39 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id E63241380202
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  4 Sep 2024 08:58:27 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 04 Sep 2024 08:58:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1725454707; x=1725541107; bh=DIylQIt1GJYRHooU/cSsa
 ptj0RpBFf2MzUpTSydom5U=; b=FmK9UNDdWs8jnaSuDP1qx7X1Dg/oQoOTUYbXb
 kF+cO03Gm2Rk5DtF8qa0Lo6OWFje8CCvLVlXqQeDciRZIf7UHQZjwXkV8ozK3S/g
 3upGpyrEz7a0obN/KYNMZYV2FIfoLZWpkS+catzqQm5esphG52sD6OVJggCUR3xb
 pKC2pa7kq/KvLPvRPsVR+whBiFwEmOEoysHrEvoYxsEq8w49PFnb+hs+yGV5paYL
 1ovRH82EYp0InD6rRPPwUQP3tBRAyXP59L/OQ6H3H2lTOE0A7mAyDxovzw2teweP
 mEbEOvENBvauWr91q04BiBj5CNR5K639LFWAE1uhT63TZ26TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :message-id:mime-version:reply-to:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725454707; x=1725541107; bh=DIylQIt1GJYRHooU/cSsaptj0RpB
 Ff2MzUpTSydom5U=; b=jk59EMURkr+60bJD7jZWEBsCg+tAqLQ3b5cYiF8ghjBs
 i5WwgsTgmOhvz7lyVDp2Dec5NzZsm5eX6vU6HkaDtSI9tsEVc0bUQFIQKvehYM1X
 VzyfnGuqem9O3dxHPeePnz/MTOOn80nvp0B9HFHHR9N8t+6UIUC0cAB7zWyCR2Pc
 wY52/GRbGZhs1cGcoV3FP863UZbq/3EE1Qi7h9BoE6fIbl9sZnGmSxhNJVp8q02d
 HdFafO9CXt9bVfRQ/jd3PIsqdMVNz53sh3pYyyRzNOrC50b7KW+ZUy+PElqP0UhQ
 mbzjOpbrmTbHFKoirOMjYbuUQVgE7JUYa2kzOZcZHw==
X-ME-Sender: <xms:c1nYZnhPE8NJk3S_65cDoIv8WpkcbAHTiVWMHQhh1FRqfX2XzcwTcQ>
 <xme:c1nYZkDCNAOxrfJoaJdiajGEuoFEXz0SoPdqRhbACrR0Tshj-71UeSYpPzATYKbKH
 KWreazNvEROjs-XgS8>
X-ME-Received: <xmr:c1nYZnGNXE7komtJYIDEzNX9L3LoN9kmY47VVz8RAqa57hpVpG1DROBs6ImGQgXx3dXdyGGaH-Ts7mw01uji-DLnb_rGeG_9A4KbRRjsSRfhKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothho
 uceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvg
 hrnhepteeiuefhjeekkeefheetieekvdegfefhgffgvdeiheehhfehiedvhffgjeejuddu
 necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghh
 ihdrjhhppdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtth
 hopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgv
 rdhnvght
X-ME-Proxy: <xmx:c1nYZkQriystsl3tcyntdbVwFh71w6AKjWWdMKGwyLL33H3dp6GtJA>
 <xmx:c1nYZkxIFKrD4iTTEgqXgb2vUyMFtb4mSyifg6h9yk_7Vj0Pvdff7A>
 <xmx:c1nYZq6sjbJFrbZAcZD21G-JD82Gj1BztYgiV_u1_l8yosN8Zk0bWw>
 <xmx:c1nYZpxrfNYKJ2VmkQf6b37wz2RO5P_z07gioQLIaGR3BOQGOgxnaA>
 <xmx:c1nYZhrb-qTNSUbeMi3n-tJyKayeI1rlOaLmCtnOZ6LYdFjgtMasUe6c>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Wed,
 4 Sep 2024 08:58:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5] firewire: use sleepable workqueue to handle 1394 OHCI
 IT/IR context events
Date: Wed,  4 Sep 2024 21:58:19 +0900
Message-ID: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, (resend to linux1394-devel since the original post has
 so many receivers. Please refer to it for any reply:
 https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/)
 This series of changes updates my previous RFT[1] to apply for v6.12 kernel.
 For the detail, please refer to the previous one. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.147 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slpao-0000Ry-He
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

Hi,

(resend to linux1394-devel since the original post has so many
receivers. Please refer to it for any reply:
https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/)

This series of changes updates my previous RFT[1] to apply for v6.12
kernel. For the detail, please refer to the previous one.

To Iwai-san, this series includes the change for sound subsystem as
well. All of changes are specific to ALSA firewire stack, so I would
like to send it to Linus as the part of firewire subsystem updates if
you do not mind it.

Changes from the RFT:
* WQ_FREEZABLE is newly supported in the workqueue
* Improve code comment in IEC 61883-1/6 packet streaming engine
* Avoid dead lock in the calls of workqueue sync API

[1] https://lore.kernel.org/lkml/20240901110642.154523-1-o-takashi@sakamocchi.jp/


Regards

Takashi Sakamoto (5):
  firewire: core: allocate workqueue to handle isochronous contexts in
    card
  firewire: core: add local API to queue work item to workqueue specific
    to isochronous contexts
  firewire: ohci: operate IT/IR events in sleepable work process instead
    of tasklet softIRQ
  firewire: core: non-atomic memory allocation for isochronous event to
    user client
  ALSA: firewire: use nonatomic PCM operation

 drivers/firewire/core-card.c             | 33 ++++++++++++--
 drivers/firewire/core-cdev.c             |  4 +-
 drivers/firewire/core-iso.c              | 30 ++++++++++++-
 drivers/firewire/core.h                  | 14 +++++-
 drivers/firewire/ohci.c                  | 57 +++++++++++++++++++-----
 include/linux/firewire.h                 |  3 ++
 sound/firewire/amdtp-stream.c            | 34 +++++++++++---
 sound/firewire/bebob/bebob_pcm.c         |  1 +
 sound/firewire/dice/dice-pcm.c           |  1 +
 sound/firewire/digi00x/digi00x-pcm.c     |  1 +
 sound/firewire/fireface/ff-pcm.c         |  1 +
 sound/firewire/fireworks/fireworks_pcm.c |  1 +
 sound/firewire/isight.c                  |  1 +
 sound/firewire/motu/motu-pcm.c           |  1 +
 sound/firewire/oxfw/oxfw-pcm.c           |  1 +
 sound/firewire/tascam/tascam-pcm.c       |  1 +
 16 files changed, 157 insertions(+), 27 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
