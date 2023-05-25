Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CF27109D3
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281U-0005qi-Vm;
	Thu, 25 May 2023 10:16:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281T-0005qN-1N
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wc9w3kWKGue5AkBPboUKgcnbBhGEfTTn2MbGT+ui8WA=; b=BS2TBblUOd86ucyaF+IceLZnr4
 Hfk/J//K8eXkxw6aa85GnCj3UNtPf9T7j4DKAt5vBRph/XxsHv6sOyPiAIwAtz0Td6A1+Gz2MPP0V
 bjAhJgfyLBpHYjKL3NbX9E9j9l3v4IHswEv0jEBBUSBuZxA21V6bn+zu/CAQ/UcDO34g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Wc9w3kWKGue5AkBPboUKgcnbBhGEfTTn2MbGT+ui8WA=; b=b
 OkEpnTO2DpZGGtW6eO6apTUTJov1TuIL+UxVJu1ZKXmsrySsfIO8NnTpmGTBDnZLoVznGbsiBH3AV
 W5vcWJE3WD+XRktXW/7mXG+BV/1dR/Vl8rIASEp8aUHkmIb7mutthN2Rhsm4bongIjv2UoB7uLA8t
 a/BtaM84RJXaWO3U=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281O-0004Uz-Dy for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 2B3E55C01A6;
 Thu, 25 May 2023 06:16:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 25 May 2023 06:16:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1685009790; x=1685096190; bh=Wc
 9w3kWKGue5AkBPboUKgcnbBhGEfTTn2MbGT+ui8WA=; b=TzySZ+u5L0uFc+qqrv
 IRyEduQPvIG4W2O3GlLsHyhJHat69y72XD3vaEkp9FkEGbU3/YQBbPRwOcQY3hBu
 m9EkNCTLuCnmqDyo7lTz1UFJUfSk2MSnzIF3r5XnTI1Huf66d+BcbwhQnRk9y1kX
 eMki1U9U0YinrJ9SLxd35yFlOs+fBOIm0YIpvfLseImTY4jBtCrfivc4+3MwAjEg
 0VImjXmPSpTgX16qHomzlk9Bo33O+BHeADuXwQUJwmNz+NCRQaiLImrlSjwJi34k
 bmXOFnhx2sdXuc1AWdj64I3CZ6558GqHxlYmtcobw7+Oq3lVfGZjSoB81pFULtEs
 H0YQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685009790; x=1685096190; bh=Wc9w3kWKGue5A
 kBPboUKgcnbBhGEfTTn2MbGT+ui8WA=; b=PVF5K47n8yC9R/VDm9XLqi0J+pxnP
 eiZBLtHRArSD70tEPVFrAI9kai89n35FYjo2jIRf511mWq5+Rc4okUPivl5OMOKW
 p2VHC4SVB3pwXrz6XHNzTJl3gXVpYFJrWpNhOZlpfhZwq5uloNxwc0rM0hipGcm1
 bDXm/KvKXBc/IdjgkI4MkpmOIGCEJRVTl8nyxWl8dbWCe5CnpNjWtcB7yCiIAfPp
 v8Ldr+s4thbhLk8IX4jYWToCMPn5r0GKlgUYFZZWHw257jQ2aSJrRPiWkLR4G72s
 2CZccZBcCi/7AVUpgXaALAGuCBWdN9DhnSkFOUwufnuSrYXQp2hRQ3Mxg==
X-ME-Sender: <xms:fTVvZBUIXoXWcgEwoS7pGqI-XGO8wN00X1ZGcasr8QWxwM0t5gHsgw>
 <xme:fTVvZBlrnjX5QHT4V1Q9pL84EQafg1ZGzHZ3bR8xarbZw6BzkkYVPTN4PRMlcgi0V
 EyxIxQHpQEpzuS3WbA>
X-ME-Received: <xmr:fTVvZNZnGIlg9Tpvp8-6q8QNvqXMy_dK-2ejCtU_s8RKpumk6_dctluwGN3-dJt39M8CUOetSCJw95c5RPlA3rv6W3BzY7E0GUV_lpBKMUDRUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:fTVvZEXm2d4VHuIh0hjelk7U8YvjapXNrT5kgwTap23J2N_rVnXA6w>
 <xmx:fTVvZLnNiAF80tCOxmMzfO2JEGS3wPacsQQafzqVk-TVdgfxpgxKQg>
 <xmx:fTVvZBdqhiVApI5mf2HCDpUcXpy8eI0urDYA0nme3hRzY8w43b882w>
 <xmx:fjVvZDuVa07yKQ_P7IcVoOxXTgIt8C85zdVdUnhmGVG1pHJm47SC4g>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:28 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/12] firewire: deliver hardware time stamp for
 asynchronous transaction
Date: Thu, 25 May 2023 19:16:13 +0900
Message-Id: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset is revised version of the previous one[1].
 Copied from the cover letter: 1394 OHCI hardware supports hardware time stamp
 for asynchronous communication at 8,000 Hz resolution (= isochronous cycle),
 while current implementation of FireWire subsystem does not deliver the tim
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281O-0004Uz-Dy
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

This patchset is revised version of the previous one[1]. Copied from the
cover letter:

1394 OHCI hardware supports hardware time stamp for asynchronous
communication at 8,000 Hz resolution (= isochronous cycle), while
current implementation of FireWire subsystem does not deliver the time
stamp to both unit driver and user space application when operating the
asynchronous communication. It is inconvenient to a kind of application
which attempts to synchronize data from multiple sources by the (coarse)
time stamp.

This patchset changes the subsystem so that the unit driver and the user
space application to receive the time stamp, therefore it affects kernel
service for asynchronous transaction, kernel API for unit driver, and UAPI
for user space application.


The first patch is newly added for KUnit test to check layout of structure
exposed to user space. I'm pleased if getting any review by KUnit
developers since it is my first time to write any KUnit test.

The new feature will be used for my future work to replace tasklet with
workqueue. The hardware time stamp could enable us to compute the
processing delay so precise.

[1] https://lore.kernel.org/lkml/20230125120301.51585-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (12):
  firewire: add KUnit test to check layout of UAPI structures
  firewire: cdev: add new version of ABI to notify time stamp at
    request/response subaction of transaction
  firewire: cdev: add new event to notify request subaction with time
    stamp
  firewire: cdev: implement new event to notify request subaction with
    time stamp
  firewire: core: use union for callback of transaction completion
  firewire: core: implement variations to send request and wait for
    response with time stamp
  firewire: cdev: code refactoring to operate event of response
  firewire: cdev: add new event to notify response subaction with time
    stamp
  firewire: cdev: implement new event to notify response subaction with
    time stamp
  firewire: cdev: code refactoring to dispatch event for phy packet
  firewire: cdev: add new event to notify phy packet with time stamp
  firewire: cdev: implement new event relevant to phy packet with time
    stamp

 drivers/firewire/.kunitconfig       |   4 +
 drivers/firewire/Kconfig            |  16 ++
 drivers/firewire/Makefile           |   3 +
 drivers/firewire/core-cdev.c        | 252 +++++++++++++++++++++-------
 drivers/firewire/core-transaction.c |  93 +++++++---
 drivers/firewire/core.h             |   7 +
 drivers/firewire/ohci.c             |  17 +-
 drivers/firewire/uapi-test.c        |  87 ++++++++++
 include/linux/firewire.h            |  82 ++++++++-
 include/uapi/linux/firewire-cdev.h  | 180 +++++++++++++++++---
 10 files changed, 625 insertions(+), 116 deletions(-)
 create mode 100644 drivers/firewire/.kunitconfig
 create mode 100644 drivers/firewire/uapi-test.c

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
